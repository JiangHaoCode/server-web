package middleware

import (
	"strconv"
	"strings"
	"time"

	"server-fiber/global"
	"server-fiber/utils"

	"server-fiber/model/common/response"
	"server-fiber/model/system"
	"server-fiber/service"

	"github.com/gofiber/fiber/v2"
	"github.com/golang-jwt/jwt/v5"
	"go.uber.org/zap"
)

var jwtService = service.ServiceGroupApp.SystemServiceGroup.JwtService

func JWTAuth(c *fiber.Ctx) error {
	// 我们这里jwt鉴权取头部信息 Authorization 登录时回返回token信息 这里前端需要把token存储到cookie或者本地localStorage中 不过需要跟后端协商过期时间 可以约定刷新令牌或者重新登录
	tokenString := c.Get("Authorization")
	if tokenString == "" {
		return response.FailWithDetailed(fiber.Map{"reload": true}, "未登录或非法访问", c)
	}
	tokenValue := strings.Split(tokenString, " ")
	if len(tokenValue) == 1 || tokenValue[0] != "Bearer" {
		return response.FailWithDetailed(fiber.Map{"reload": true}, "未登录或非法访问", c)
	}
	token := tokenValue[1]
	if token == "" {
		return response.FailWithDetailed(fiber.Map{"reload": true}, "未登录或非法访问", c)
	}
	if jwtService.IsBlacklist(token) {
		return response.FailWithDetailed(fiber.Map{"reload": true}, "您的帐户异地登陆或令牌失效", c)
	}
	j := utils.NewJWT()
	// parseToken 解析token包含的信息
	claims, err := j.ParseToken(token)
	// global.Logger.Info(err.Error(), claims)
	if err != nil {
		if err == utils.ErrTokenExpired {
			return response.FailWithDetailed(fiber.Map{"reload": true}, "授权已过期", c)
		}
		return response.FailWithDetailed(fiber.Map{"reload": true}, err.Error(), c)
	}
	// 用户被删除的逻辑 需要优化 此处比较消耗性能 如果需要 请自行打开
	//if err, _ = userService.FindUserByUuid(claims.UUID.String()); err != nil {
	//	_ = jwtService.JsonInBlacklist(system.JwtBlacklist{Jwt: token})
	//	response.FailWithDetailed(fiber.Map{"reload": true}, err.Error(), c)
	//	c.Abort()
	//}
	// log.Println("claims: ", time.Now().Unix()-claims.NotBefore.Unix(), claims.ExpiresAt)
	if time.Now().Unix()-claims.NotBefore.Unix() > claims.BufferTime*60 {
		claims.ExpiresAt = jwt.NewNumericDate(time.Now().Add(time.Duration(global.CONFIG.JWT.ExpiresTime) * time.Hour))
		newToken, _ := j.CreateTokenByOldToken(token, *claims)
		newClaims, _ := j.ParseToken(newToken)
		c.Locals("new-token", newToken)
		c.Locals("new-expires-at", strconv.FormatInt(newClaims.ExpiresAt.Unix(), 10))
		if global.CONFIG.System.UseMultipoint {
			RedisJwtToken, err := jwtService.GetRedisJWT(newClaims.Username)
			if err != nil {
				global.LOG.Error("get redis jwt failed", zap.Error(err))
			} else { // 当之前的取成功时才进行拉黑操作
				_ = jwtService.JsonInBlacklist(system.JwtBlacklist{Jwt: RedisJwtToken})
			}
			// 无论如何都要记录当前的活跃状态
			_ = jwtService.SetRedisJWT(newToken, newClaims.Username)
		}
	}
	c.Locals("claims", claims)
	return c.Next()
}
