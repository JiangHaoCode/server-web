package response

import (
	"github.com/gofiber/fiber/v2"
)

type Response struct {
	Code int         `json:"code"`
	Data interface{} `json:"data"`
	Msg  string      `json:"msg"`
}

const (
	ERROR   = 7
	SUCCESS = 0
)

func Result(code int, data interface{}, msg string, c *fiber.Ctx) error {
	// 开始时间
	return c.Status(fiber.StatusOK).JSON(Response{
		code,
		data,
		msg,
	})
}

func Ok(c *fiber.Ctx) error {
	return Result(SUCCESS, map[string]interface{}{}, "操作成功", c)
}

func OkWithMessage(message string, c *fiber.Ctx) error {
	return Result(SUCCESS, map[string]interface{}{}, message, c)
}

func OkWithId(message string, id uint, c *fiber.Ctx) error {
	return Result(SUCCESS, map[string]uint{
		"id": id,
	}, message, c)
}

func OkWithData(data interface{}, c *fiber.Ctx) error {
	return Result(SUCCESS, data, "操作成功", c)
}

func OkWithDetailed(data interface{}, message string, c *fiber.Ctx) error {
	return Result(SUCCESS, data, message, c)
}

func Fail(c *fiber.Ctx) error {
	return Result(ERROR, map[string]interface{}{}, "操作失败", c)
}

func FailWithMessage(message string, c *fiber.Ctx) error {
	return Result(ERROR, map[string]interface{}{}, message, c)
}

func FailWithDetailed(data interface{}, message string, c *fiber.Ctx) error {
	return Result(ERROR, data, message, c)
}

// 返回400 错误信息
func FailWithDetailed400(data interface{}, message string, c *fiber.Ctx) error {
	return Result400(ERROR, data, message, c)
}

func FailWithMessage400(message string, c *fiber.Ctx) error {
	return Result400(ERROR, map[string]interface{}{}, message, c)
}

func Result400(code int, data interface{}, msg string, c *fiber.Ctx) error {
	// 开始时间
	return c.Status(fiber.StatusOK).JSON(Response{
		code,
		data,
		msg,
	})
}
