package example

import (
	v1 "server-fiber/api/v1"
	"server-fiber/middleware"

	"github.com/gofiber/fiber/v2"
)

type CustomerRouter struct{}

func (e *CustomerRouter) InitCustomerRouter(Router *fiber.App) {
	customerRouter := Router.Group("customer").Use(middleware.OperationRecord())
	customerRouterWithoutRecord := Router.Group("customer")
	exaCustomerApi := v1.ApiGroupApp.ExampleApiGroup.CustomerApi
	{
		customerRouter.Post("customer", exaCustomerApi.CreateExaCustomer)   // 创建客户
		customerRouter.Put("customer", exaCustomerApi.UpdateExaCustomer)    // 更新客户
		customerRouter.Delete("customer", exaCustomerApi.DeleteExaCustomer) // 删除客户
	}
	{
		customerRouterWithoutRecord.Get("customer", exaCustomerApi.GetExaCustomer)         // 获取单一客户信息
		customerRouterWithoutRecord.Get("customerList", exaCustomerApi.GetExaCustomerList) // 获取客户列表
	}
}
