package frontend

import (
	"errors"
	"server/global"
	"server/model/common/response"
	"server/model/frontend/request"
	"strconv"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"gorm.io/gorm"
)

type FrontendArticleApi struct{}

func (s *FrontendArticleApi) GetArticleList(c *gin.Context) {
	var pageInfo request.ArticleSearch
	_ = c.ShouldBindQuery(&pageInfo)

	if list, err := frontendService.FrontendArticle.GetArticleList(pageInfo); err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(response.PageResult{
			List: list,
			// Total:    total,
			// Page:     pageInfo.Page,
			// PageSize: pageInfo.PageSize,
		}, "获取成功", c)
	}
}

func (s *FrontendArticleApi) GetAricleDetail(c *gin.Context) {
	id := c.Param("id")
	aritcleId, err := strconv.Atoi(id)
	if err != nil {
		response.FailWithMessage("获取Id失败", c)
	}

	articleDetail, err := frontendService.FrontendArticle.GetAricleDetail(aritcleId)
	if errors.Is(err, gorm.ErrRecordNotFound) {
		response.FailWithMessage("文章没有，请重新查询", c)
		return
	}
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)

	} else {
		response.OkWithData(gin.H{"article": articleDetail}, c)
	}
}
