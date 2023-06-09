package mobile

import (
	"errors"
	"log"
	"server/global"
	"server/model/common/response"
	"server/model/mobile"
	"server/model/mobile/request"
	"server/service"
	"server/utils"
	"strconv"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type MobileLoginApi struct{}

var mobileService = service.ServiceGroupApp.MobileServiceGroup.MobileLoginService

func (*MobileLoginApi) Login(c *gin.Context) {
	var l mobile.Login
	_ = c.ShouldBindJSON(&l)
	// log.Println(l)
	if err := utils.Verify(l, utils.MobileLoginVerify); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	token, err := mobileService.Login(l)
	if err != nil {
		global.LOG.Error("登陆失败! 用户名不存在或者密码错误!", zap.Error(err))
		response.FailWithMessage("用户名不存在或者密码错误", c)
	} else {
		response.OkWithDetailed(token, "登录成功", c)
	}

}

func (*MobileLoginApi) GetUserInfo(c *gin.Context) {
	authorization, err1 := c.Get("user_id")
	// global.Logger.Println(authorization, err1)
	global.Logger.Printf("authorization is %T\n", authorization)
	if !err1 {
		global.LOG.Error("获取user_id失败!", zap.Error(errors.New("失败")))
		response.FailWithMessage("获取失败", c)
		return
	}
	if user, err := mobileService.GetUserInfo(authorization.(uint)); err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(user, "获取成功", c)
	}

}

func (*MobileLoginApi) UpdateMobileUser(c *gin.Context) {
	var data request.MobileUpdate
	_ = c.ShouldBindJSON(&data)
	authorization := c.Request.Header.Get("user_id")
	id, _ := strconv.Atoi(authorization)
	if data.Field == "" {
		response.FailWithMessage("无更新", c)
		return
	}
	log.Println(data)
	if err := mobileService.UpdateUser(data, uint(id)); err != nil {
		global.LOG.Error("更新用户失败!", zap.Error(err))
		response.FailWithMessage("更新用户失败", c)
	} else {
		response.OkWithDetailed(data, "获取成功", c)
	}

}

func (*MobileLoginApi) UpdatePassword(c *gin.Context) {
	var data request.MobileUpdatePassword
	_ = c.ShouldBindJSON(&data)

	if err := utils.Verify(data, utils.MobileUpdatePasswordVerify); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	if err := mobileService.UpdatePassword(data); err != nil {
		global.LOG.Error("更新密码失败!", zap.Error(err))
		response.FailWithMessage("更新用户密码失败", c)
	} else {
		response.OkWithDetailed(gin.H{
			"password": data.NewPassword,
		}, "更新成功", c)
	}
}
