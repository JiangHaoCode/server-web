package core

import (
	"fmt"

	"server/global"
	"server/initialize"
	"server/service/system"

	utilsInit "server/utils"

	"go.uber.org/zap"
)

type server interface {
	ListenAndServe() error
}

func RunServer() {
	s := comprehensive()
	// 保证文本顺序输出
	// In order to ensure that the text order output can be deleted
	// time.Sleep(10 * time.Microsecond)
	// global.LOG.Info("server run success on ", zap.String("address", address))
	// fmt.Println(`欢迎使用 API接口`)
	global.LOG.Error(s.ListenAndServe().Error())
}

func comprehensive() server {
	var err error
	global.VIP, err = Viper() // 初始化Viper 配置
	if err != nil {
		global.LOG.Error(err.Error() + ": 配置文件读取失败")
	}
	global.LOG = Zap()             // 初始化zap日志库
	global.Logger = InitLogger()   // 初始化 log 让log标准输出
	zap.ReplaceGlobals(global.LOG) // 部署到全局

	db, err := initialize.Gorm() // gorm连接数据库
	if err == nil {
		global.LOG.Info("Database connection successful")
		global.DB = db
	} else {
		global.LOG.Error(err.Error() + ": Failed to connect to database")
		panic(err)
	}
	// initialize.Timer() //定时清除数据库数据
	// conn, err := global.Timer.FindCron("ClearDB")
	initialize.Tasks() //定时 执行任务
	// initialize.DBList() // 数据库列表
	utilsInit.TransInit("zh")
	if global.DB != nil {
		// initialize.RegisterTables(global.DB) // 初始化表
		// 程序结束前关闭数据库链接
		db, _ := global.DB.DB()
		defer db.Close()
	}

	if global.CONFIG.System.UseMultipoint || global.CONFIG.System.UseRedis {
		// 初始化redis服务
		initialize.Redis()
	}

	// 从db加载jwt数据
	if global.DB != nil {
		system.LoadAll() // 加载所有的 拉黑的jwt数据 避免盗用jwt
	}
	Router := initialize.Routers()
	Router.Static("/form-generator", "./resource/page")

	address := fmt.Sprintf("%s:%d", global.CONFIG.System.Domain, global.CONFIG.System.Addr)
	s := initServer(address, Router)
	return s
}
