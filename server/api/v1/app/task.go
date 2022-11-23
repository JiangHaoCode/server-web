package app

import (
	"server/global"
	"server/model/common/response"

	"github.com/gin-gonic/gin"
)

type TaskNameApi struct{}

// StatusTasking start Tasking
// @Tags start Tasking
// @Summary start Tasking
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body comment.Comment true "start Tasking"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"开启成功"}"
// @Router /tasking/start [get]
func (*TaskNameApi) StartTasking(c *gin.Context) {
	tasking := c.Query("task")
	if tasking == "" {
		global.GVA_LOG.Error("请传入任务名!")
		response.FailWithMessage("请传入任务名", c)
		return
	}
	_, status := global.GVA_Timer.FindCron(tasking)

	if !status {
		global.GVA_LOG.Error("开启失败!")
		response.FailWithMessage("开启失败，没有这个任务", c)
	} else {
		global.GVA_Timer.StartTask(tasking)
		response.OkWithMessage("开启成功", c)
	}
}
