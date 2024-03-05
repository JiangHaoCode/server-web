package system

import (
	"server-fiber/global"
	"server-fiber/model/common/request"
	"server-fiber/model/common/response"
	"server-fiber/model/system"
	systemReq "server-fiber/model/system/request"
	systemRes "server-fiber/model/system/response"
	"server-fiber/utils"
	"strconv"

	"github.com/gofiber/fiber/v2"
	"go.uber.org/zap"
)

type SystemApiApi struct{}

// @Tags SysApi
// @Summary 创建基础api
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body system.SysApi true "api路径, api中文描述, api组, 方法"
// @Success 200 {object} return response.Response{msg=string} "创建基础api"
// @Router /api/createApi [post]
func (s *SystemApiApi) CreateApi(c *fiber.Ctx) error {
	var api system.SysApi
	_ = c.QueryParser(&api)
	if err := utils.Verify(api, utils.ApiVerify); err != nil {
		return response.FailWithMessage(err.Error(), c)
	}
	if err := apiService.CreateApi(api); err != nil {
		global.LOG.Error("创建失败!", zap.Error(err))
		return response.FailWithDetailed(map[string]string{"msg": err.Error()}, "创建失败", c)
	} else {
		return response.OkWithMessage("创建成功", c)
	}
}

// @Tags SysApi
// @Summary 删除api
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body system.SysApi true "ID"
// @Success 200 {object} return response.Response{msg=string} "删除api"
// @Router /api/deleteApi [post]
func (s *SystemApiApi) DeleteApi(c *fiber.Ctx) error {
	var api system.SysApi
	id, _ := strconv.Atoi(c.Params("id"))
	api.ID = uint(id)
	if err := utils.Verify(api.MODEL, utils.IdVerify); err != nil {
		return response.FailWithMessage(err.Error(), c)
	}
	if err := apiService.DeleteApi(api); err != nil {
		global.LOG.Error("删除失败!", zap.Error(err))
		return response.FailWithMessage("删除失败", c)
	} else {
		return response.OkWithMessage("删除成功", c)
	}
}

// @Tags SysApi
// @Summary 分页获取API列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body systemReq.SearchApiParams true "分页获取API列表"
// @Success 200 {object} return response.Response{data=return response.PageResult,msg=string} "分页获取API列表,返回包括列表,总数,页码,每页数量"
// @Router /api/getApiList [get]
func (s *SystemApiApi) GetApiList(c *fiber.Ctx) error {
	var pageInfo systemReq.SearchApiParams
	_ = c.QueryParser(&pageInfo)
	// log.Println(pageInfo.OrderKey)
	// var path = c.Query("path")
	// var description = c.Query("description")
	// var page = c.DefaultQuery("page", "1")
	// var pageSize = c.DefaultQuery("pageSize", "10")
	// var apiGroup = c.Query("apiGroup")
	// var method = c.Query("method")
	// var ascDesc = c.DefaultQuery("desc", "false")
	// var order = c.Query("orderKey")
	// log.Println(order)
	// var boolItem = false
	// _ = c.BindQuery(&pageInfo)
	// if ascDesc == "true" {
	// 	boolItem = true
	// }
	// pageInfo.Page, _ = strconv.Atoi(page)
	// pageInfo.PageSize, _ = strconv.Atoi(pageSize)
	// if path != "" {
	// 	pageInfo.Path = path
	// }
	// if description != "" {
	// 	pageInfo.Description = description
	// }
	// if apiGroup != "" {
	// 	pageInfo.ApiGroup = apiGroup
	// }
	// if method != "" {
	// 	pageInfo.Method = method
	// }
	// if order != "" {
	// 	pageInfo.OrderKey = order
	// }
	// fmt.Println("ApiGroup.desc: ", pageInfo.Desc)
	// if err := utils.Verify(pageInfo.PageInfo, utils.PageInfoVerify); err != nil {
	// 	fmt.Println(err)
	// 	return response.FailWithMessage(err.Error(), c)
	// 	return
	// }

	if list, total, err := apiService.GetAPIInfoList(pageInfo); err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		return response.FailWithMessage("获取失败", c)
	} else {
		return response.OkWithDetailed(response.PageResult{
			List:     list,
			Total:    total,
			Page:     pageInfo.Page,
			PageSize: pageInfo.PageSize,
		}, "获取成功", c)
	}
}

// todo
// @Tags SysApi
// @Summary 根据id获取api
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.GetById true "根据id获取api"
// @Success 200 {object} return response.Response{data=systemRes.SysAPIResponse} "根据id获取api,返回包括api详情"
// @Router /api/getApiById [post]
func (s *SystemApiApi) GetApiById(c *fiber.Ctx) error {
	var idInfo request.GetById
	idInfo.ID, _ = strconv.Atoi(c.Params("id"))
	// fmt.Println(idInfo)
	if err := utils.Verify(idInfo, utils.IdVerify); err != nil {
		return response.FailWithMessage(err.Error(), c)
	}
	api, err := apiService.GetApiById(idInfo.ID)
	if err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		return response.FailWithMessage("获取失败", c)
	} else {
		return response.OkWithData(systemRes.SysAPIResponse{Api: api}, c)
	}
}

// @Tags SysApi
// @Summary 修改基础api
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body system.SysApi true "api路径, api中文描述, api组, 方法"
// @Success 200 {object} return response.Response{msg=string} "修改基础api"
// @Router /api/updateApi [put]
func (s *SystemApiApi) UpdateApi(c *fiber.Ctx) error {
	var api system.SysApi
	_ = c.QueryParser(&api)
	if err := utils.Verify(api, utils.ApiVerify); err != nil {
		return response.FailWithMessage(err.Error(), c)
	}
	if err := apiService.UpdateApi(api); err != nil {
		global.LOG.Error("修改失败!", zap.Error(err))
		return response.FailWithMessage("修改失败", c)
	} else {
		return response.OkWithMessage("修改成功", c)
	}
}

// @Tags SysApi
// @Summary 获取所有的Api 不分页
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} return response.Response{data=systemRes.SysAPIListResponse,msg=string} "获取所有的Api 不分页,返回包括api列表"
// @Router /api/getAllApis [get]
func (s *SystemApiApi) GetAllApis(c *fiber.Ctx) error {
	if apis, err := apiService.GetAllApis(); err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		return response.FailWithMessage("获取失败", c)
	} else {
		return response.OkWithDetailed(systemRes.SysAPIListResponse{Apis: apis}, "获取成功", c)
	}
}

// @Tags SysApi
// @Summary 删除选中Api
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "ID"
// @Success 200 {object} return response.Response{msg=string} "删除选中Api"
// @Router /api/deleteApisByIds [delete]
func (s *SystemApiApi) DeleteApisByIds(c *fiber.Ctx) error {
	var ids request.IdsReq
	_ = c.QueryParser(&ids)
	if err := apiService.DeleteApisByIds(ids); err != nil {
		global.LOG.Error("删除失败!", zap.Error(err))
		return response.FailWithMessage("删除失败", c)
	} else {
		return response.OkWithMessage("删除成功", c)
	}
}
