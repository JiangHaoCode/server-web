import { fileURLToPath, URL } from "node:url";
import vuePlugin from "@vitejs/plugin-vue";
import { defineConfig } from "vite";
// import vue from "@vitejs/plugin-vue";
import legacyPlugin from "@vitejs/plugin-legacy";

const rollupOptions = {
  output: {
    entryFileNames: `static/[name].[hash].js`,
    chunkFileNames: `js/[name].[hash].js`,
    assetFileNames: `assets/[name].[hash].[ext]`,
  },
};
console.log(import.meta);
// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    legacyPlugin({
      targets: ["defaults", "not IE 11"],
    }),
    // vue(),
    vuePlugin({}),
  ],
  css: {
    preprocessorOptions: {
      less: {
        // 支持内联 JavaScript
        javascriptEnabled: true,
        // modifyVars: {
        //   hack: `true; @import (reference) "${resolve('src/style/global/config.less')}";`,
        // },
      },
    },
  },
  base: "./", // index.html文件所在位置
  root: "./", // js导入的资源路径，src
  server: {
    // 如果使用docker-compose开发模式，设置为false
    port: 3500,
    host: '0.0.0.0',
    proxy: {
      // 把key的路径代理到target位置
      // detail: https://cli.vuejs.org/config/#devserver-proxy
      "/api": {
        // 需要代理的路径   例如 '/api'
        target: `http://localhost:3100/`, // 代理到 目标路径
        changeOrigin: true,
        rewrite: (path) => path.replace(new RegExp("^/api"), ""),
      },
      // "/api": {
      //   target: "http://localhsot:3100", // 目标服务器 代理的地址
      //   changeOrigin: true, // 允许跨域
      //   secure: true, // 支持https
      //   // pathRewrite: { "^/api": "/" }, // 相当于用'/api'代替target里面的地址，调接口时用/api代替
      //   rewrite: (path) => path.replace(new RegExp("^" + process.env.VITE_BASE_API), ""),
      // },
    },
  },
  build: {
    target: "es2015",
    minify: "terser", // 是否进行压缩,boolean | 'terser' | 'esbuild',默认使用terser
    manifest: false, // 是否产出maifest.json
    sourcemap: false, // 是否产出soucemap.json
    outDir: "dist", // 产出目录
    rollupOptions,
  },
  esbuild: {},
  optimizeDeps: {},
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },
});
