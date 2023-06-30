package mobile

import (
	"server/global"
	"server/model/common/request"
	"server/model/mobile"
	mobileReq "server/model/mobile/request"
)

type MobileUserService struct {
}

// CreateMoblieUser 创建MoblieUser记录
// Author [piexlmax](https://github.com/piexlmax)
func (moblieUserService *MobileUserService) CreateMoblieUser(moblieUser mobile.MobileUser) (err error) {
	err = global.DB.Create(&moblieUser).Error
	return err
}

// DeleteMoblieUser 删除MoblieUser记录
// Author [piexlmax](https://github.com/piexlmax)
func (moblieUserService *MobileUserService) DeleteMoblieUser(moblieUser mobile.MobileUser) (err error) {
	err = global.DB.Delete(&moblieUser).Error
	return err
}

// DeleteMoblieUserByIds 批量删除MoblieUser记录
// Author [piexlmax](https://github.com/piexlmax)
func (moblieUserService *MobileUserService) DeleteMoblieUserByIds(ids request.IdsReq) (err error) {
	err = global.DB.Delete(&[]mobile.MobileUser{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateMoblieUser 更新MoblieUser记录
// Author [piexlmax](https://github.com/piexlmax)
func (moblieUserService *MobileUserService) UpdateMoblieUser(moblieUser mobile.MobileUser) (err error) {
	err = global.DB.Save(&moblieUser).Error
	return err
}

// GetMoblieUser 根据id获取MoblieUser记录
// Author [piexlmax](https://github.com/piexlmax)
func (moblieUserService *MobileUserService) GetMoblieUser(id uint) (moblieUser mobile.MobileUser, err error) {
	err = global.DB.Where("id = ?", id).First(&moblieUser).Error
	return
}

// GetMoblieUserInfoList 分页获取MoblieUser记录
// Author [piexlmax](https://github.com/piexlmax)
func (moblieUserService *MobileUserService) GetMoblieUserInfoList(info mobileReq.MoblieUserSearch) (list interface{}, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.DB.Model(&mobile.MobileUser{})
	var moblieUsers []mobile.MobileUser
	// 如果有条件搜索 下方会自动创建搜索语句
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Limit(limit).Offset(offset).Find(&moblieUsers).Error
	return moblieUsers, total, err
}
