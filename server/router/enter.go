package router

import (
	"server/router/app"
	"server/router/example"
	"server/router/frontend"
	"server/router/order"
	"server/router/system"
)

type RouterGroup struct {
	System   system.RouterGroup
	Example  example.RouterGroup
	Order    order.RouterGroup
	App      app.RouterGroup
	Frontend frontend.RouterGroup
}

var RouterGroupApp = new(RouterGroup)
