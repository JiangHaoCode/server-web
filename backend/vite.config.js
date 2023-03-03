import legacyPlugin from "@vitejs/plugin-legacy";
import { defineConfig } from "vite";
// import usePluginImport from 'vite-plugin-importer';
// import { viteLogo } from './src/core/config';
import Banner from "vite-plugin-banner";
import * as path from "path";
import * as dotenv from "dotenv";
import * as fs from "fs";
import vuePlugin from "@vitejs/plugin-vue";
// import Components from "unplugin-vue-components/vite";
// import importElementPlus from "vite-plugin-element-plus";
// import { ElementPlusResolver } from "unplugin-vue-components/resolvers";
// import WindiCSS from "vite-plugin-windicss";
// import vueJsx from '@vitejs/plugin-vue-jsx';
// import { isAsyncFunction } from 'util/types';
// @see https://cn.vitejs.dev/config/

export default defineConfig(({ command, mode }) => {
  // mode development and production
  if (command === "serve") {
    // return {
    //   // dev 独有配置
    // }
  } else {
    // command === 'build'
    // return {
    //   // build 独有配置
    // }
  }

  // const data = await isAsyncFunction();
  const NODE_ENV = process.env.NODE_ENV || "development";
  const envFiles = [`.env.${NODE_ENV}`];
  for (const file of envFiles) {
    const envConfig = dotenv.parse(fs.readFileSync(file));
    for (const k in envConfig) {
      process.env[k] = envConfig[k];
    }
  }

  // viteLogo(process.env);

  const timestamp = Date.parse(new Date());

  const rollupOptions = {
    output: {
      entryFileNames: `static/[name].[hash].js`,
      chunkFileNames: `js/[name].[hash].js`,
      assetFileNames: `assets/[name].[hash].[ext]`,
    },
  };

  const optimizeDeps = {};

  const alias = {
    "@": path.resolve(__dirname, "./src"),
    "~": path.resolve(process.cwd()),
    // vue$: "vue/dist/vue.runtime.esm-bundler.js",
  };

  const esbuild = {};

  return {
    base: "./", // index.html文件所在位置
    root: "./", // js导入的资源路径，src
    resolve: {
      alias,
    },
    define: {
      "process.env": {},
    },
    server: {
      // 如果使用docker-compose开发模式，设置为false
      // open: true,
      cors: true,
      hmr: true,
      port: process.env.VITE_CLI_PORT,
      proxy: {
        "/backend/uploads": {
          // 需要代理的路径   例如 '/api'
          target: `${process.env.VITE_BASE_PATH}:${process.env.VITE_SERVER_PORT}/`, // 代理到 目标路径
          changeOrigin: true,
          secure: true,
          rewrite: (path) => path.replace(new RegExp("^/backend/uploads"), "/uploads/"),
        },
        // 把key的路径代理到target位置
        // detail: https://cli.vuejs.org/config/#devserver-proxy
        [process.env.VITE_BASE_API]: {
          // 需要代理的路径   例如 '/api'
          target: `${process.env.VITE_BASE_PATH}:${process.env.VITE_SERVER_PORT}/`, // 代理到 目标路径
          changeOrigin: true,
          secure: true,
          rewrite: (path) => path.replace(new RegExp("^" + process.env.VITE_BASE_API), "/backend"),
        },
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
    esbuild,
    optimizeDeps,
    plugins: [
      legacyPlugin({
        // targets: ["Android > 39", "Chrome >= 60", "Safari >= 10.1", "iOS >= 10.3", "Firefox >= 54", "Edge >= 15"],
      }),
      vuePlugin({}),
      // vueJsx(),
      [Banner(`\n Build based on server-web \n Time : ${timestamp}`)],
      // Components({
      //   resolvers: [ElementPlusResolver()],
      // }),
      // importElementPlus(),
      // WindiCSS(),
    ],
    css: {
      preprocessorOptions: {
        less: {
          // 支持内联 JavaScript
          javascriptEnabled: true,
        },
      },
    },
  };
});
