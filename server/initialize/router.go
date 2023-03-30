/*
 * @Author: jianghao
 * @Date: 2022-07-29 09:48:24
 * @LastEditors: jianghao
 * @LastEditTime: 2022-10-17 11:27:44
 */
package initialize

import (
	"net/http"

	_ "server/docs"
	"server/global"
	"server/middleware"
	"server/router"

	"github.com/gin-gonic/gin"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
)

// 初始化总路由

func Routers() *gin.Engine {
	Router := gin.Default()
	appRouter := router.RouterGroupApp.App
	systemRouter := router.RouterGroupApp.System
	exampleRouter := router.RouterGroupApp.Example
	frontendRouter := router.RouterGroupApp.Frontend
	// 如果想要不使用nginx代理前端网页，可以修改 web/.env.production 下的
	// VUE_APP_BASE_API = /
	// VUE_APP_BASE_PATH = http://localhost
	// 然后执行打包命令 npm run build。在打开下面4行注释
	// Router.LoadHTMLGlob("./dist/*.html") // npm打包成dist的路径
	// Router.Static("/favicon.ico", "./dist/favicon.ico")
	// Router.Static("/static", "./dist/assets")   // dist里面的静态资源
	// Router.StaticFile("/", "./dist/index.html") // 前端网页入口页面
	Router.StaticFS("/backend/uploads", http.Dir("uploads"))                      // 本地的文件路由转化
	Router.StaticFS(global.CONFIG.Local.Path, http.Dir(global.CONFIG.Local.Path)) // 为用户头像和文件提供静态地址
	// Router.Use(middleware.LoadTls())  // 如果需要使用https 请打开此中间件 然后前往 core/server.go 将启动模式 更变为 Router.RunTLS("端口","你的cre/pem文件","你的key文件")
	global.LOG.Info("use middleware logger")
	// 跨域，如需跨域可以打开下面的注释
	Router.Use(middleware.Cors()) // 直接放行全部跨域请求
	//Router.Use(middleware.CorsByRules()) // 按照配置的规则放行跨域请求
	global.LOG.Info("use middleware cors")
	Router.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))
	global.LOG.Info("register swagger handler")
	// 方便统一添加路由组前缀 多服务器上线使用

	// Router.Use(middleware.GinRecovery(true)) // recover掉项目可能出现的panic，并使用zap记录相关日志

	PublicGroup := Router.Group("frontend")
	{
		// 健康监测
		PublicGroup.GET("/health", func(c *gin.Context) {
			type About struct {
				AboutMe string `json:"aboutMe"` // json 是返回json数据
			}
			c.JSON(200, gin.H{
				"data": About{AboutMe: "OK"},
				"code": 0,
				"msg":  "success",
			})
		})
	}
	{
		// 前台的API
		frontendRouter.InitFrontendRouter(PublicGroup)
	}
	// 后台
	PrivateGroup := Router.Group("backend")
	// 后台登录、初始化
	{
		systemRouter.InitBaseRouter(PrivateGroup) // 注册基础功能路由 不做鉴权
		systemRouter.InitInitRouter(PrivateGroup) // 自动初始化相关
	}
	// 页面管理
	PrivateGroup.Use(middleware.JWTAuth()).Use(middleware.CasbinHandler()) // casbin的拦截规则
	{
		systemRouter.InitApiRouter(PrivateGroup)                 // 注册功能api路由
		systemRouter.InitJwtRouter(PrivateGroup)                 // jwt相关路由
		systemRouter.InitUserRouter(PrivateGroup)                // 注册用户路由
		systemRouter.InitMenuRouter(PrivateGroup)                // 注册menu路由
		systemRouter.InitSystemRouter(PrivateGroup)              // system相关路由
		systemRouter.InitCasbinRouter(PrivateGroup)              // 权限相关路由
		systemRouter.InitAutoCodeRouter(PrivateGroup)            // 创建自动化代码
		systemRouter.InitAuthorityRouter(PrivateGroup)           // 注册角色路由
		systemRouter.InitSysDictionaryRouter(PrivateGroup)       // 字典管理
		systemRouter.InitAutoCodeHistoryRouter(PrivateGroup)     // 自动化代码历史
		systemRouter.InitSysOperationRecordRouter(PrivateGroup)  // 操作记录
		systemRouter.InitSysDictionaryDetailRouter(PrivateGroup) // 字典详情管理
		systemRouter.InitAuthorityBtnRouterRouter(PrivateGroup)  // 字典详情管理

		exampleRouter.InitExcelRouter(PrivateGroup)                 // 表格导入导出
		exampleRouter.InitCustomerRouter(PrivateGroup)              // 客户路由
		exampleRouter.InitFileUploadAndDownloadRouter(PrivateGroup) // 文件上传下载功能路由

		// Code generated by server Begin; DO NOT EDIT.

		appRouter.InitTagRouter(PrivateGroup)         // tab
		appRouter.InitArticleRouter(PrivateGroup)     //article
		appRouter.InitCommentRouter(PrivateGroup)     // comment
		systemRouter.InitProblemRouter(PrivateGroup)  // problem
		appRouter.InitBaseMessageRouter(PrivateGroup) // baseMessage
		appRouter.InitTaskRouter(PrivateGroup)        //task 任务
		appRouter.InitUserRouter(PrivateGroup)        // frontend user
		// Code generated by server End; DO NOT EDIT.
	}

	InstallPlugin(PublicGroup, PrivateGroup) // 安装插件

	global.LOG.Info("router register success")
	return Router
}
