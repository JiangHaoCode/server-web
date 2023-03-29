import axios from "axios";
import type { AxiosInstance, AxiosError, AxiosRequestConfig, AxiosResponse } from "axios";
import { emitter } from "./common";
import { useUserStore } from "@/stores/user";

/* 服务器返回数据的的类型，根据接口文档确定 */
export interface Result<T = any> {
  code: 0 | 7;
  msg: string;
  data: T;
}

const service: AxiosInstance = axios.create({
  baseURL: "/frontend",
  timeout: 0,
});

/* 请求拦截器 */
service.interceptors.request.use(
  (config: AxiosRequestConfig) => {
    const userStore = useUserStore();
    //  伪代码
    if (userStore.getToken) {
      config.headers = { ...config.headers, Authorization: `Bearer ${userStore.getToken}` };
    }
    emitter.emit("showLoading");
    return config;
  },
  (error: AxiosError) => {
    // Message.error(error.message);
    return Promise.reject(error);
  },
);

/* 响应拦截器 */
service.interceptors.response.use(
  (response: AxiosResponse<Result>) => {
    // console.log(response);
    if (!response?.data) {
      window.$notification.error({
        duration: 10000,
        keepAliveOnHover: true,
        content: `返回错误: 服务器错误`,
        meta: 200,
      });
      return Promise.reject(new Error("服务器错误"));
    }
    const { code, msg } = response.data;
    emitter.emit("closeLoading");
    // 根据自定义错误码判断请求是否成功
    if (code === 0) {
      // 将组件用的数据返回
      return response.data;
    } else {
      // 处理业务错误。
      // Message.error(message)
      window.$notification.error({ duration: 10000, keepAliveOnHover: true, content: `返回错误: ${msg}`, meta: 200 });
      return Promise.reject(new Error(msg));
    }
  },
  (error: AxiosError) => {
    emitter.emit("closeLoading");
    // console.log(error);
    // 处理 HTTP 网络错误
    let message = "";
    // HTTP 状态码
    const status = error.response?.status;
    switch (status) {
      case 401:
        message = "token 失效，请重新登录";
        // 这里可以触发退出的 action
        break;
      case 403:
        message = "拒绝访问";
        break;
      case 404:
        message = "请求地址错误";
        break;
      case 500:
        message = "服务器故障";
        break;
      default:
        message = "网络连接故障";
    }
    window.$notification.error({
      content: `错误 ${status}: ${message}`,
      meta: error.response?.statusText,
      duration: 10000,
      keepAliveOnHover: true,
    });
    return;
  },
);

/* 导出封装的请求方法 */
export const http = {
  get<T = any>(url: string, config?: AxiosRequestConfig): Promise<T> {
    return service.get(url, config);
  },

  post<T = any, R = any>(url: string, data?: R, config?: AxiosRequestConfig): Promise<T> {
    return service.post(url, data, config);
  },

  put<T = any, R = any>(url: string, data?: R, config?: AxiosRequestConfig): Promise<T> {
    return service.put(url, data, config);
  },

  delete<T = any>(url: string, config?: AxiosRequestConfig): Promise<T> {
    return service.delete(url, config);
  },
};

/* 导出 axios 实例 */
export default service;
