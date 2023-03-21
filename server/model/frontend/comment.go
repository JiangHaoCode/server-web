package frontend

import "server/global"

// Comment 结构体
// 如果含有time.Time 请自行import time包
type Comment struct {
	global.MODEL
	ArticleId int     `json:"articleId" form:"articleId" gorm:"column:article_id;comment:文章id;size:10;"`
	Article   Article `json:"article" gorm:"foreignKey:ArticleId"`
	ParentId  int     `json:"parentId" form:"parentId" gorm:"column:parent_id;comment:上级;size:10;"`
	Content   string  `json:"content" form:"content" gorm:"column:content;comment:内容;"`
	// UserPraise []system.SysUser `json:"praise" from:"praise" gorm:"many2many:praise"`
	Children []Comment `json:"children" form:"children" gorm:"foreignKey:ParentId;"`
}

// TableName Comment 表名
func (Comment) TableName() string {
	return "comment"
}