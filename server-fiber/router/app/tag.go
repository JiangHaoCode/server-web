package app

import (
	v1 "server-fiber/api/v1"
	"server-fiber/middleware"

	"github.com/gofiber/fiber/v2"
)

type TagRouter struct{}

// InitTagRouter 初始化 Tag 路由信息
func (s *TagRouter) InitTagRouter(Router *fiber.App) {
	tagRouter := Router.Group("tag").Use(middleware.OperationRecord())
	tagRouterWithoutRecord := Router.Group("tag")
	var tagApi = v1.ApiGroupApp.AppApiGroup.TagApi
	{
		tagRouter.Post("createTag", tagApi.CreateTag)             // 新建Tag
		tagRouter.Delete("DeleteTag/:id", tagApi.DeleteTag)       // 删除Tag
		tagRouter.Delete("DeleteTagByIds", tagApi.DeleteTagByIds) // 批量删除Tag
		tagRouter.Put("updateTag", tagApi.UpdateTag)              // 更新Tag
	}
	{
		tagRouterWithoutRecord.Get("findTag/:id", tagApi.FindTag)   // 根据ID获取Tag
		tagRouterWithoutRecord.Get("GetTagList", tagApi.GetTagList) // 获取Tag列表
	}
}
