package middleware

import (
	"server/model/common/response"
	"sync"
	"time"

	"github.com/gin-gonic/gin"
)

type TokenBucket struct {
	capacity  int64      // 桶的容量
	rate      float64    // 令牌放入速率
	tokens    float64    // 当前令牌数量
	lastToken time.Time  // 上一次放令牌的时间
	mtx       sync.Mutex // 互斥锁
}

func (tb *TokenBucket) Allow() bool {
	tb.mtx.Lock()
	defer tb.mtx.Unlock()
	now := time.Now()
	// 计算需要放的令牌数量
	tb.tokens = tb.tokens + tb.rate*now.Sub(tb.lastToken).Seconds()
	if tb.tokens > float64(tb.capacity) {
		tb.tokens = float64(tb.capacity)
	}
	// 判断是否允许请求
	if tb.tokens >= 1 {
		tb.tokens--
		tb.lastToken = now
		return true
	} else {
		return false
	}
}

func LimitHandler(maxConn int64) gin.HandlerFunc {
	tb := &TokenBucket{
		capacity:  maxConn,
		rate:      1.0,
		tokens:    0,
		lastToken: time.Now(),
	}
	return func(c *gin.Context) {
		if !tb.Allow() {
			response.FailWithDetailed(gin.H{"msg": "服务器需要休息一下，请等几分钟"}, "加载中", c)
			c.Abort()
			return
		}
		c.Next()
	}
}
