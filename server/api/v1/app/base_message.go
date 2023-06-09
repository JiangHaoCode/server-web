package app

import (
	"errors"
	"server/global"
	"server/model/app"
	"server/model/common/response"
	"server/service"
	"strconv"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"gorm.io/gorm"
)

type BaseMessageApi struct{}

var baseMessageService = service.ServiceGroupApp.AppServiceGroup.BaseMessageService

// CreateBaseMessage 创建base_message
func (a *BaseMessageApi) CreateBaseMessage(c *gin.Context) {
	var baseMessage app.BaseMessage
	_ = c.ShouldBindJSON(&baseMessage)
	if err := baseMessageService.CreateBaseMessage(baseMessage); err != nil {
		global.LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

/**
 * @description: update base message
 * @param {*gin.Context} c
 * @return {*}
 */

func (a *BaseMessageApi) UpdateBaseMessage(c *gin.Context) {
	var baseMessage app.BaseMessage
	_ = c.ShouldBindJSON(&baseMessage)
	if err := baseMessageService.UpdateBaseMessage(baseMessage); err != nil {
		global.LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

/**
 * @description: find base message
 * @param {*gin.Context} c
 * @return nil
 */
func (a *BaseMessageApi) FindBaseMessage(c *gin.Context) {
	id := c.Param("id")
	ids, _ := strconv.Atoi(id)
	if responseBaseMessage, err := baseMessageService.FindBaseMessage(uint(ids)); err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			// respBaseMessage := baseMessageNotFound{message: "not found"}
			str := "not found"
			global.LOG.Error("查询失败!", zap.Error(errors.New(str)))
			response.OkWithData(gin.H{"error": str}, c)
		} else {
			global.LOG.Error("查询失败!", zap.Error(err))
			response.FailWithMessage("查询失败", c)
		}

	} else {
		response.OkWithData(gin.H{"baseMessage": responseBaseMessage}, c)
	}
}
