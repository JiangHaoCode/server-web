package frontend

import (
	"server/global"
	"server/model/frontend"
	frontendReq "server/model/frontend/request"
)

type FrontendArticle struct{}

func (s *FrontendArticle) GetArticleList(info frontendReq.ArticleSearch) (list []frontend.Article, err error) {
	db := global.GVA_DB.Model(&frontend.Article{}).Preload("Tags").Preload("User")
	err = db.Order("id desc").Find(&list).Error
	return list, err
}

func (s *FrontendArticle) GetAricleDetail(articleId int) (articleDetail frontend.Article, err error) {
	db := global.GVA_DB.Model(&frontend.Article{})
	err = db.Where("id = ?", articleId).Preload("Tags").Preload("User").First(&articleDetail).Error
	return
}
