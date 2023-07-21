package utils

import (
	"crypto/rsa"
	"errors"
	"server/global"
	"server/model/mobile"
	"time"

	jwt "github.com/golang-jwt/jwt/v4"
)

var MySecret *rsa.PrivateKey = global.CONFIG.JWT.PrivateKey
var MyPublicSecret *rsa.PublicKey = global.CONFIG.JWT.PublicKey

type MobileClaims struct {
	ID                   uint   `json:"id"`
	Username             string `json:"username"`
	Realname             string `json:"realname"`
	jwt.RegisteredClaims        // 注意!这是jwt-go的v4版本新增的，原先是jwt.StandardClaims
}

func MakeToken(data mobile.Login, id uint) (tokenString string, expiresAt int64, err error) {
	claim := MobileClaims{
		ID:       id,
		Username: data.Username,
		Realname: data.Realname,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(24 * time.Hour)), // 过期时间24小时
			IssuedAt:  jwt.NewNumericDate(time.Now()),                     // 签发时间
			NotBefore: jwt.NewNumericDate(time.Now()),                     // 生效时间
			Issuer:    global.CONFIG.JWT.Issuer,
		}}
	// token := jwt.NewWithClaims(jwt.SigningMethodHS256, claim) // 使用HS256算法
	token := jwt.NewWithClaims(jwt.SigningMethodRS256, claim) // 使用RS256算法
	tokenString, err = token.SignedString(MySecret)
	return tokenString, claim.ExpiresAt.Unix(), err
}

func Secret() jwt.Keyfunc {
	return func(token *jwt.Token) (interface{}, error) {
		return MyPublicSecret, nil // 这是我的secret
	}
}

func ParseToken(tokenss string) (*MobileClaims, error) {
	token, err := jwt.ParseWithClaims(tokenss, &MobileClaims{}, Secret())
	if err != nil {
		if ve, ok := err.(*jwt.ValidationError); ok {
			if ve.Errors&jwt.ValidationErrorMalformed != 0 {
				return nil, errors.New("that's not even a token")
			} else if ve.Errors&jwt.ValidationErrorExpired != 0 {
				return nil, errors.New("token is expired")
			} else if ve.Errors&jwt.ValidationErrorNotValidYet != 0 {
				return nil, errors.New("token not active yet")
			} else {
				return nil, errors.New("couldn't handle this token")
			}
		}
	}
	if claims, ok := token.Claims.(*MobileClaims); ok && token.Valid {
		return claims, nil
	}
	return nil, errors.New("couldn't handle this token")
}
