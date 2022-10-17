package app

import (
	"server/global"
	"server/model/app"
)

type BaseMessageService struct{}

/**
 * @description: 创建baseMessage
 * @param {app.BaseMessage} baseMessage
 * @return {*}
 */
func (*BaseMessageService) CreateBaseMessage(baseMessage app.BaseMessage) (err error) {
	err = global.GVA_DB.Create(&baseMessage).Error
	return
}

/**
 * @description: 更新baseMessage
 * @param {app.BaseMessage} baseMessage
 * @return {*}
 */
func (*BaseMessageService) UpdateBaseMessage(baseMessage app.BaseMessage) (err error) {
	var base app.BaseMessage
	err = global.GVA_DB.Where("id = ?", baseMessage.ID).First(&base).Error
	baseMessage.CreatedAt = base.CreatedAt
	if err != nil {
		return
	}
	err = global.GVA_DB.Save(baseMessage).Error
	return
}

/**
 * @description: 获取baseMessage
 * @return {*}
 */
func (*BaseMessageService) FindBaseMessage() (app.BaseMessage, error) {
	var base app.BaseMessage
	err := global.GVA_DB.Order("id desc").First(&base).Error
	return base, err
}
