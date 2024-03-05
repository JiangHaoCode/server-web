package system

import (
	v1 "server-fiber/api/v1"
	"server-fiber/middleware"

	"github.com/gofiber/fiber/v2"
)

type SysRouter struct{}

func (s *SysRouter) InitSystemRouter(Router *fiber.App) {
	sysRouter := Router.Group("system").Use(middleware.OperationRecord())
	sysGetRouter := Router.Group("system")
	systemApi := v1.ApiGroupApp.SystemApiGroup.SystemApi
	{
		sysRouter.Put("setSystemConfig", systemApi.SetSystemConfig) // 设置配置文件内容
		sysRouter.Post("reloadSystem", systemApi.ReloadSystem)      // 重启服务
	}
	{
		sysGetRouter.Get("GetSystemConfig", systemApi.GetSystemConfig) // 获取配置文件内容
		sysGetRouter.Get("GetServerInfo", systemApi.GetServerInfo)     // 获取服务器信息
	}
}
