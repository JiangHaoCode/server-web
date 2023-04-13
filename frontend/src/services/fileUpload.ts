import { http } from "@/utils/request";

export const uploadFile = (data: FormData) => {
  return http.post<API.ResponseAbout<UploadFile.Upload>, FormData>("/upload", data);
};
