import { http } from "@/utils/request";

export const getArticleList = (params?: API.SearchArticle) => {
  // return request({
  //   url: "/frontend/getArticleList",
  //   method: "get",
  // });
  return http.get<API.Response<{ list: API.Article[]; total: number }>>("/getArticleList", {
    method: "get",
    params: params,
  });
};

export const getArticleDetail = (id: string) => {
  return http.get<API.Response<{ article: API.Article }>>(`/getArticle/${id}`, {
    method: "get",
  });
};

// 搜索文章的 tag 或 title
export const getArticleSearch = (params: API.SearchArticle) => {
  return http.get<API.Response<{ list: API.Article[]; total: number }>>(`/getSearchArticle/${params.name}/${params.value}`, {
    method: "get",
  });
};
