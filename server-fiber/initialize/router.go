/*
 * @Author: jianghao
 * @Date: 2022-07-29 09:48:24
 * @LastEditors: jianghao
 * @LastEditTime: 2022-10-17 11:27:44
 */
package initialize

import (
	// "server-fiber/middleware"
	"server-fiber/middleware"
	"server-fiber/router"

	"github.com/gofiber/fiber/v2"
)

// 初始化总路由

func Routers() *fiber.App {
	Router := fiber.New(fiber.Config{
		CaseSensitive: true,
		BodyLimit:     10 * 1024 * 1024,
		AppName:       "sever-fiber",
	})
	systemRouter := router.RouterGroupApp.System
	Router.Static("/api/uploads/", "uploads/")     // 本地的frontend api文件路由转化
	Router.Static("/backend/uploads/", "uploads/") // 本地的backend文件路由转化
	Router.Static("/mobile/uploads/", "uploads/")  // 本地的mobile文件路由转化
	Router.Static("/backend/form-generator", "resource/page")
	Router.Use(middleware.LimitHandler)
	{
		backendRooter := Router.Group("/backend")
		systemRouter.InitBaseRouter(backendRooter) // 注册基础功能路由 不做鉴权
		systemRouter.InitInitRouter(backendRooter) // 自动初始化相关
	}

	return Router
}