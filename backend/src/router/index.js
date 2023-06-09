import { createRouter, createWebHashHistory } from "vue-router";

const routes = [
  {
    path: "/",
    redirect: "/login",
  },
  {
    path: "/init",
    name: "Init",
    component: () => import("@/view/init/index.vue"),
  },
  {
    path: "/login",
    name: "Login",
    component: () => import("@/view/login/index.vue"),
  },
  // {
  //   path: "/:catchAll(.*)",
  //   name: "404",
  //   component: () => import("@/view/error/index.vue"),
  // },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
  linkActiveClass: "active",
});

export default router;
