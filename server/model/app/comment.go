/*
 * @Author: jianghao
 * @Date: 2022-09-05 09:10:12
 * @LastEditors: jianghao
 * @LastEditTime: 2022-10-27 14:12:30
 */
// 自动生成模板Comment
package app

import (
	"server/global"
)

// Comment 结构体
// 如果含有time.Time 请自行import time包
type Comment struct {
	global.MODEL
	ArticleId int     `json:"articleId" form:"articleId" gorm:"column:article_id;comment:文章id;size:10;"`
	Article   Article `json:"article" gorm:"foreignKey:ArticleId"`
	ParentId  int     `json:"parentId" form:"parentId" gorm:"column:parent_id;comment:上级;size:10;"`
	Content   string  `json:"content" form:"content" gorm:"column:content;comment:内容;"`
	UserId    int     `json:"user_id" form:"user_id" gorm:"column:user_id;comment:用户id;"`
	UserName  string  `json:"user_name" form:"user_name" gorm:"column:user_name;comment:用户名;"`
	// UserPraise []system.SysUser `json:"praise" from:"praise" gorm:"many2many:praise"`
	Children []Comment `json:"children" form:"children" gorm:"foreignKey:ParentId;"`
	User     User      `json:"user" form:"user" gorm:"foreignKey:UserId"`
}

// TableName Comment 表名
func (Comment) TableName() string {
	return "comment"
}
