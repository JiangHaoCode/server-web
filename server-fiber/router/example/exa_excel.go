package example

import (
	v1 "server-fiber/api/v1"

	"github.com/gofiber/fiber/v2"
)

type ExcelRouter struct{}

func (e *ExcelRouter) InitExcelRouter(Router fiber.Router) {
	excelRouter := Router.Group("excel")
	exaExcelApi := v1.ApiGroupApp.ExampleApiGroup.ExcelApi
	{
		excelRouter.Post("importExcel", exaExcelApi.ImportExcel)          // 导入文件
		excelRouter.Get("GetFileInfoList", exaExcelApi.GetFileList)       // 获取上传文件成功列表
		excelRouter.Delete("DeleteFile/:id", exaExcelApi.DeleteFile)      // 删除文件
		excelRouter.Get("loadExcel", exaExcelApi.LoadExcel)               // 加载Excel数据
		excelRouter.Post("exportExcel", exaExcelApi.ExportExcel)          // 导出Excel
		excelRouter.Get("downloadTemplate", exaExcelApi.DownloadTemplate) // 下载模板文件
	}
}
