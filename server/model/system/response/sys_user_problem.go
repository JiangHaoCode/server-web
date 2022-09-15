package response

import "server/global"

type SysUserProblemSetting struct {
	global.GVA_MODEL
	SysUserId uint   `json:"sys_user_id"`
	Problem   string `json:"problem"`
	Answer    string `json:"answer"`
}

type SysUserProblemSettingResponse struct {
	ProblemsSetting []SysUserProblemSetting `json:"problems_setting"`
}

type SysUserProblem struct {
	SysUserId uint   `json:"sys_user_id"`
	Problem   string `json:"problem"`
}

type SysUserProblemResponse struct {
	Problems []SysUserProblem `json:"problems"`
}
