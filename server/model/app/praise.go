package app

import "server/global"

type Praise struct {
	global.GVA_MODEL
	CommentId int64 `json:"comment_id" form:"comment_id" gorm:"column:comment_id;comment:评论id;size:10;"`
	UserId    int64 `json:"user_id" form:"user_id" gorm:"column:user_id;comment:用户id;size:10;"`
}

func (Praise) TableName() string {
	return "praise"
}
