<script lang="ts" setup>
import { computed, defineComponent, h, onMounted, provide, ref } from "vue";
import { RouterView } from "vue-router";
import type { GlobalTheme } from "naive-ui";
import {
  darkTheme,
  useLoadingBar,
  useMessage,
  useNotification,
  useOsTheme,
} from "naive-ui";
import { emitter } from "./utils/common";
// import { loadEnv } from "vite";

// const env = loadEnv("production", process.cwd());
// console.log(env);
const isDarkTheme = useOsTheme();

const theme = ref<GlobalTheme | null>(
  isDarkTheme.value === "dark" ? darkTheme : null
);
const color = computed(() => (theme.value === null ? "#000" : "#fff"));
const colorComment = computed(() => (theme.value === null ? "#999" : "#aaa"));

provide("theme", theme);
emitter.on("darkMode", () => {
  theme.value = darkTheme;
});

emitter.on("lightMode", () => {
  theme.value = null;
});

onMounted(() => {
  //  const isDarkTheme = window.matchMedia("(prefers-color-scheme: dark)"); // 是深色

  if (isDarkTheme.value === "dark") {
    theme.value = darkTheme;
  } else {
    theme.value = null;
  }
});

function registerNaiveTools() {
  window.$loadingBar = useLoadingBar();
  window.$message = useMessage();
  window.$notification = useNotification();
}

const NaiveProviderContent = defineComponent({
  name: "NaiveProviderContent",
  setup() {
    registerNaiveTools();
  },
  render() {
    return h("div");
  },
});
</script>

<template>
  <NConfigProvider :theme="theme">
    <NLoadingBarProvider
      :loading-bar-style="{ loading: { height: '4px', background: '#1e80ff' } }"
    >
      <div class="view-dark view-comment">
        <NNotificationProvider>
          <NMessageProvider>
            <router-view />
            <NaiveProviderContent />
          </NMessageProvider>
        </NNotificationProvider>
      </div>
    </NLoadingBarProvider>
  </NConfigProvider>
</template>

<style lang="less">
.view-dark {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    color: v-bind(color);
  }
}

.view-comment {
  .ant-comment-content-author-name > * {
    color: v-bind(colorComment);
  }
}
</style>
