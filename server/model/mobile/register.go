package mobile

import "server/global"

type Register struct {
	global.MODEL
	Username string `json:"username" form:"username" gorm:"column:username;comment:用户名;size:50;"`
	Realname string `json:"realname" form:"realname" gorm:"column:realname;comment:真实姓名;size:50;"`
	Password string `json:"password" form:"password" gorm:"column:password;comment:密码;size:100;"`
	Phone    string `json:"phone" form:"phone" gorm:"column:phone;comment:电话;"`
	Sign     string `json:"sign" form:"sign" gorm:"column:sign;comment:简介;size:255;"`
}

func (Register) TableName() string {
	return "mobile_user"
}