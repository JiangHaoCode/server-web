package frontend

import (
	"errors"
	"server/global"
	"server/model/common/response"
	"server/model/frontend"
	loginRequest "server/model/frontend/request"
	"server/model/system"
	"server/utils"

	systemReq "server/model/system/request"
	systemRes "server/model/system/response"

	"github.com/gin-gonic/gin"
	"github.com/redis/go-redis/v9"
	"go.uber.org/zap"
)

type FrontendUser struct{}

// func (u *FrontendUser) Login(c *gin.Context) {
// 	var user loginRequest.LoginForm
// 	_ = c.ShouldBindJSON(&user)
// 	log.Println("user: ", user)
// 	if err := utils.Verify(user, utils.LoginVerifyFrontend); err != nil {
// 		response.FailWithMessage(err.Error(), c)
// 		return
// 	}
// 	userInfo, err := frontendService.Login(user)
// 	if err != nil {
// 		global.LOG.Error(err.Error(), zap.Error(err))
// 		response.FailWithMessage(err.Error(), c)
// 	} else {
// 		response.OkWithDetailed(userInfo, "登录成功", c)
// 	}
// }

func (b *FrontendUser) Login(c *gin.Context) {
	var l systemReq.Login
	_ = c.ShouldBindJSON(&l)
	if err := utils.Verify(l, utils.LoginVerifyFrontend); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if store.Verify(l.CaptchaId, l.Captcha, true) {
		u := &system.SysUser{Username: l.Username, Password: l.Password}
		if user, err := userService.Login(u); err != nil {
			global.LOG.Error("登陆失败! 用户名不存在或者密码错误!", zap.Error(err))
			response.FailWithMessage("用户名不存在或者密码错误", c)
		} else {
			b.tokenNext(c, *user)
		}
	} else {
		response.FailWithMessage("验证码错误", c)
	}
}

// 登录以后签发jwt
func (u *FrontendUser) tokenNext(c *gin.Context, user system.SysUser) {
	j := &utils.JWT{PrivateKey: global.CONFIG.JWT.PrivateKey} // 唯一签名
	claims := j.CreateClaims(systemReq.BaseClaims{
		UUID:        user.UUID,
		ID:          user.ID,
		NickName:    user.NickName,
		Username:    user.Username,
		AuthorityId: user.AuthorityId,
	})
	token, err := j.CreateToken(claims)
	if err != nil {
		global.LOG.Error("获取token失败!", zap.Error(err))
		response.FailWithMessage("获取token失败", c)
		return
	}
	if !global.CONFIG.System.UseMultipoint {
		response.OkWithDetailed(systemRes.LoginResponse{
			User:      user,
			Token:     token,
			ExpiresAt: claims.RegisteredClaims.ExpiresAt.Unix(),
		}, "登录成功", c)
		return
	}

	if jwtStr, err := jwtService.GetRedisJWT(user.Username); err == redis.Nil {
		if err := jwtService.SetRedisJWT(token, user.Username); err != nil {
			global.LOG.Error("设置登录状态失败!", zap.Error(err))
			response.FailWithMessage("设置登录状态失败", c)
			return
		}
		response.OkWithDetailed(systemRes.LoginResponse{
			User:      user,
			Token:     token,
			ExpiresAt: claims.RegisteredClaims.ExpiresAt.Unix(),
		}, "登录成功", c)
	} else if err != nil {
		global.LOG.Error("设置登录状态失败!", zap.Error(err))
		response.FailWithMessage("设置登录状态失败", c)
	} else {
		var blackJWT system.JwtBlacklist
		blackJWT.Jwt = jwtStr
		if err := jwtService.JsonInBlacklist(blackJWT); err != nil {
			response.FailWithMessage("jwt作废失败", c)
			return
		}
		if err := jwtService.SetRedisJWT(token, user.Username); err != nil {
			response.FailWithMessage("设置登录状态失败", c)
			return
		}
		response.OkWithDetailed(systemRes.LoginResponse{
			User:      user,
			Token:     token,
			ExpiresAt: claims.RegisteredClaims.ExpiresAt.Unix(),
		}, "登录成功", c)
	}
}

func (*FrontendUser) RegisterUser(c *gin.Context) {
	var userInfo loginRequest.RegisterUser
	_ = c.ShouldBindJSON(&userInfo)
	if userInfo.Password != userInfo.RePassword {
		global.LOG.Error("密码不一致!", zap.Error(errors.New("密码不一致")))
		response.FailWithMessage("密码不一致", c)
		return
	}
	if err := utils.Verify(userInfo, utils.RegisterVerifyFrontend); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	err := frontendService.RegisterUser(userInfo)
	if err != nil {
		global.LOG.Error("注册失败!", zap.Error(err))
		response.FailWithDetailed(gin.H{}, err.Error(), c)
	} else {
		response.OkWithDetailed(gin.H{}, "注册成功", c)
	}
}

func (u *FrontendUser) GetCurrent(c *gin.Context) {
	uuid := utils.GetUserUuid(c)
	// log.Println(uuid)
	if ReqUser, err := userService.GetUserInfo(uuid); err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(ReqUser, "获取成功", c)
	}
}

func (u *FrontendUser) UpdatePassword(c *gin.Context) {
	var resetPassword frontend.ResetPassword
	_ = c.ShouldBindJSON(&resetPassword)

	if err := utils.Verify(resetPassword, utils.ResetPasswordVerifyFrontend); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	if resetPassword.NewPassword != resetPassword.RepeatNewPassword {
		global.LOG.Error("密码不一致!", zap.Error(errors.New("密码不一致")))
		response.FailWithMessage("密码不一致", c)
		return
	}
	// resetPassword.Password = utils.MD5V([]byte(resetPassword.Password))
	// resetPassword.NewPassword = utils.MD5V([]byte(resetPassword.NewPassword))
	// resetPassword.RepeatNewPassword = utils.MD5V([]byte(resetPassword.RepeatNewPassword))
	if err := frontendService.ResetPassword(resetPassword); err != nil {
		response.FailWithMessage("重置密码失败："+err.Error(), c)
		return
	}

	response.OkWithDetailed(nil, "重置密码成功", c)
}

func (u *FrontendUser) UpdateUserBackgroudImage(c *gin.Context) {
	var user frontend.User
	_ = c.ShouldBindJSON(&user)

	err := frontendService.UpdateUserBackgroudImage(user)
	if err != nil {
		response.FailWithMessage("更新失败："+err.Error(), c)
		return
	}
	response.OkWithDetailed(nil, "更新成功", c)
}

func (u *FrontendUser) UpdateUser(c *gin.Context) {
	var user frontend.User
	_ = c.ShouldBindJSON(&user)
	if err := utils.Verify(user, utils.UpdateUserVerify); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := frontendService.UpdateUser(user); err != nil {
		response.FailWithDetailed(err.Error(), "更新失败", c)
		return
	}
	response.OkWithDetailed(nil, "更新成功", c)
}
