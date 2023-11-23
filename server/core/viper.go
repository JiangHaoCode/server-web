package core

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"time"

	jwt "github.com/golang-jwt/jwt/v4"
	"github.com/songzhibin97/gkit/cache/local_cache"

	"server/global"
	// _ "server/packfile"
	"server/utils"

	"github.com/fsnotify/fsnotify"
	"github.com/spf13/viper" // 配置文件读取
)

// 读取配置 配置文件config.yaml
func Viper(path ...string) (*viper.Viper, error) {
	var config string
	if len(path) == 0 {
		flag.StringVar(&config, "c", "", "choose config file.")
		flag.Parse()
		if config == "" { // 优先级: 命令行 > 环境变量 > 默认值
			if configEnv := os.Getenv(utils.ConfigEnv); configEnv == "" {
				config = utils.ConfigFile
				fmt.Printf("您正在使用config的默认值,config的路径为%v\n", utils.ConfigFile)
			} else {
				config = configEnv
				fmt.Printf("您正在使用CONFIG环境变量,config的路径为%v\n", config)
			}
		} else {
			fmt.Printf("您正在使用命令行的-c参数传递的值,config的路径为%v\n", config)
		}
	} else {
		config = path[0]
		fmt.Printf("您正在使用func Viper()传递的值,config的路径为%v\n", config)
	}

	v := viper.New()
	v.SetConfigFile(config)
	v.SetConfigType("yaml")
	err := v.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("fatal error config file: %s", err))
	}
	v.WatchConfig()

	v.OnConfigChange(func(e fsnotify.Event) {
		fmt.Println("config file changed:", e.Name)
		if err := v.Unmarshal(&global.CONFIG); err != nil {
			fmt.Println(err)
		} else {
			fmt.Println(global.CONFIG)
		}
	})
	if err := v.Unmarshal(&global.CONFIG); err != nil {
		fmt.Println(err)
	}

	publicKeyByte, err := os.ReadFile("./rsa_public_key.pem")
	// global.Logger.Println("public key: ", err)
	if err != nil {
		global.Logger.Error(err.Error())
		return nil, err
	}
	publickey, err := jwt.ParseRSAPublicKeyFromPEM(publicKeyByte)
	if err != nil {
		global.Logger.Error(err.Error())
		return nil, err
	}
	privatekeyByte, err := os.ReadFile("./private_key.pem")
	if err != nil {
		global.Logger.Error(err.Error())

		return nil, err
	}
	privatekey, err := jwt.ParseRSAPrivateKeyFromPEM(privatekeyByte)
	if err != nil {
		// fmt.Println(err)
		global.Logger.Error(err.Error())
		return nil, err
	}
	// jwt
	global.CONFIG.JWT.PrivateKey = privatekey
	global.CONFIG.JWT.PublicKey = publickey
	// root 适配性
	// 根据root位置去找到对应迁移位置,保证root路径有效
	global.CONFIG.AutoCode.Root, _ = filepath.Abs("..")
	global.BlackCache = local_cache.NewCache(
		local_cache.SetDefaultExpire(time.Second * time.Duration(global.CONFIG.JWT.ExpiresTime)),
	)
	return v, nil
}

// func logHandle(w http.ResponseWriter, r *http.Request) {
// 	//读取公钥文件
// 	publicKeyByte, err := ioutil.ReadFile("D:\\public.key")
// 	if err != nil {
// 		fmt.Fprintf(w, err.Error())
// 	}
// 	publicKye, err = jwt.ParseRSAPublicKeyFromPEM(publicKeyByte)
// 	//读取私钥文件
// 	privatekeyByte, err := ioutil.ReadFile("D:\\private.key")
// 	if err != nil {
// 		fmt.Fprintf(w, err.Error())
// 	}
// 	privatekey, err := jwt.ParseRSAPrivateKeyFromPEM(privatekeyByte)

// 	expire := time.Now().Add(time.Hour * 24)
// 	// Create the Claims
// 	claims := &jwt.StandardClaims{
// 		ExpiresAt: expire.Unix(), //设置token过期时长
// 		Issuer:    "test",
// 	}
// 	//生成token，并用私钥签名
// 	token := jwt.NewWithClaims(jwt.SigningMethodRS256, claims)
// 	tokenstr, err := token.SignedString(privatekey)
// 	fmt.Printf("%v %v", tokenstr, err)
// 	w.Header().Set("Content-type", "application/json")
// 	w.Write([]byte(fmt.Sprintf("token:%v", tokenstr)))
// }
