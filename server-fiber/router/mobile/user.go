package mobile

import (
	v1 "server-fiber/api/v1"
	"server-fiber/middleware"

	"github.com/gofiber/fiber/v2"
)

type MobileUserRouter struct{}

func (m *MobileUserRouter) InitMobileRouter(Router fiber.Router) {
	moblieUserRouter := Router.Group("mobile").Use(middleware.OperationRecord)
	moblieUserRouterWithoutRecord := Router.Group("mobile")
	var mobileUserApi = v1.ApiGroupApp.MobileApiGroup.MobileUserApi
	{
		moblieUserRouter.Post("createMobileUser", mobileUserApi.CreateMoblieUser)             // 新建MoblieUser
		moblieUserRouter.Delete("DeleteMobileUser/:id", mobileUserApi.DeleteMoblieUser)       // 删除MoblieUser
		moblieUserRouter.Delete("DeleteMobileUserByIds", mobileUserApi.DeleteMoblieUserByIds) // 批量删除MoblieUser
		moblieUserRouter.Put("updateMobileUser/:id", mobileUserApi.UpdateMoblieUser)          // 更新MoblieUser
	}
	{
		moblieUserRouterWithoutRecord.Get("findMobileUser/:id", mobileUserApi.FindMoblieUser)   // 根据ID获取MoblieUser
		moblieUserRouterWithoutRecord.Get("GetMobileUserList", mobileUserApi.GetMoblieUserList) // 获取MoblieUser列表
	}
}
