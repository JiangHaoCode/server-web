package app

import (
	"server/global"
	comment "server/model/app"
	commentReq "server/model/app/request"
	"server/model/common/request"
	"server/model/common/response"
	"server/service"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type CommentApi struct {
}

var commentService = service.ServiceGroupApp.AppServiceGroup.CommentService

// CreateComment 创建Comment
// @Tags Comment
// @Summary 创建Comment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body comment.Comment true "创建Comment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /comment/createComment [post]
func (commentApi *CommentApi) CreateComment(c *gin.Context) {
	var comment2 comment.Comment
	_ = c.ShouldBindJSON(&comment2)
	if err := commentService.CreateComment(comment2); err != nil {
		global.LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteComment 删除Comment
// @Tags Comment
// @Summary 删除Comment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body comment.Comment true "删除Comment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /comment/deleteComment [delete]
func (commentApi *CommentApi) DeleteComment(c *gin.Context) {
	var comment2 comment.Comment
	_ = c.ShouldBindJSON(&comment2)
	if err := commentService.DeleteComment(comment2); err != nil {
		global.LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteCommentByIds 批量删除Comment
// @Tags Comment
// @Summary 批量删除Comment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除Comment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /comment/deleteCommentByIds [delete]
func (commentApi *CommentApi) DeleteCommentByIds(c *gin.Context) {
	var IDS request.IdsReq
	_ = c.ShouldBindJSON(&IDS)
	if err := commentService.DeleteCommentByIds(IDS); err != nil {
		global.LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateComment 更新Comment
// @Tags Comment
// @Summary 更新Comment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body comment.Comment true "更新Comment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /comment/updateComment [put]
func (commentApi *CommentApi) UpdateComment(c *gin.Context) {
	var comment2 comment.Comment
	_ = c.ShouldBindJSON(&comment2)
	if err := commentService.UpdateComment(comment2); err != nil {
		global.LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindComment 用id查询Comment
// @Tags Comment
// @Summary 用id查询Comment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query comment.Comment true "用id查询Comment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /comment/findComment [get]
func (commentApi *CommentApi) FindComment(c *gin.Context) {
	var comment2 comment.Comment
	_ = c.ShouldBindQuery(&comment2)
	if recomment, err := commentService.GetComment(comment2.ID); err != nil {
		global.LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"recomment": recomment}, c)
	}
}

// GetCommentList 分页获取Comment列表
// @Tags Comment
// @Summary 分页获取Comment列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query commentReq.CommentSearch true "分页获取Comment列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /comment/getCommentList [get]
func (commentApi *CommentApi) GetCommentList(c *gin.Context) {
	var pageInfo commentReq.CommentSearch
	_ = c.ShouldBindQuery(&pageInfo)
	if list, total, err := commentService.GetCommentInfoList(pageInfo); err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(response.PageResult{
			List:     list,
			Total:    total,
			Page:     pageInfo.Page,
			PageSize: pageInfo.PageSize,
		}, "获取成功", c)
	}
}

func (*CommentApi) GetCommentTreeList(c *gin.Context) {
	var pageInfo commentReq.CommentSearch
	_ = c.ShouldBindQuery(&pageInfo)

	if list, total, err := commentService.GetCommentTreeList(pageInfo); err != nil {
		global.LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(response.PageResult{
			List:     list,
			Total:    total,
			Page:     pageInfo.Page,
			PageSize: pageInfo.PageSize,
		}, "获取成功", c)
	}
}

// PutLikeItOrDislike 点赞
func (*CommentApi) PutLikeItOrDislike(c *gin.Context) {
	var likeIt comment.Praise
	_ = c.ShouldBindJSON(&likeIt)

	if praise, err := commentService.PutLikeItOrDislike(likeIt); err != nil {
		global.LOG.Error("点赞失败!", zap.Error(err))
		response.FailWithDetailed(err, "点赞失败", c)
	} else {
		response.OkWithDetailed(praise, "点赞成功", c)
	}
}
