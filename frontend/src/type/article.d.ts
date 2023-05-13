declare namespace API {
  export type Article = {
    ID: number;
    UpdatedAt: string;
    CreatedAt: string;
    content: string;
    desc: string;
    state: 1 | 0;
    user?: User;
    tags?: Tag[];
    title: string;
    user_id: number;
    reading_quantity: number;
  };

  export interface User {
    ID: number;
    CreatedAt: string;
    UpdatedAt: string;
    uuid: string;
    userName: string;
    nickName: string;
    sideMode: string;
    headerImg: string;
    baseColor: string;
    activeColor: string;
    authorityId: string;
    phone: string;
    email: string;
  }

  export type Tag = {
    ID: number;
    CreatedAt: string;
    UpdatedAt: string;
    name: string;
    status: 1;
    aritcles?: Article[];
  };

  export type SearchArticle = {
    page?: number;
    pageSize?: number;
    title?: string;
    is_important?: number;
    name?: "tag" | "article";
    value?: string;
    sort?: string;
  };

  export type SearchTag = {
    name?: string;
  };

  export type AboutMe = {
    aboutMe: string;
  };
}
