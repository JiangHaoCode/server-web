<template>
  <van-form ref="formRef" v-if="getShow" class="flex flex-col items-center" @submit="handleReset">
    <van-field
      class="enter-y items-center mb-25px !rounded-md"
      v-model="formData.username"
      name="username"
      placeholder="用户名"
      :rules="getFormRules.username"
    >
      <template #left-icon>
        <Icon>
          <UserOutlined />
        </Icon>
      </template>
    </van-field>

    <van-field
      class="enter-y items-center mb-25px !rounded-md"
      v-model="formData.mobile"
      name="password"
      placeholder="手机号码"
      :rules="getFormRules.mobile"
    >
      <template #left-icon>
        <Icon>
          <MobileOutlined />
        </Icon>
      </template>
    </van-field>
    <SendMessage :data="formData.sms" @updateData="(v:string) => formData.sms = v" />
    <van-field
      class="enter-y items-center !rounded-md"
      v-model="formData.confirmPassword"
      :type="switchConfirmPassType ? 'password' : 'text'"
      name="confirmPassword"
      placeholder="确认密码"
      :rules="getFormRules.confirmPassword"
      @click-right-icon="switchConfirmPassType = !switchConfirmPassType"
    >
      <template #left-icon>
        <Icon>
          <LockOutlined />
        </Icon>
      </template>
      <template #right-icon>
        <Icon v-if="switchConfirmPassType">
          <EyeInvisibleOutlined />
        </Icon>
        <Icon v-else>
          <EyeOutlined />
        </Icon>
      </template>
    </van-field>

    <van-button
      class="enter-y !mb-25px !rounded-md prominent"
      type="primary"
      block
      native-type="submit"
      :loading="loading"
    >
      重 置
    </van-button>

    <van-button
      class="enter-y !mb-150px !rounded-md"
      plain
      type="primary"
      block
      @click="handleBackLogin"
    >
      返 回
    </van-button>
  </van-form>
</template>

<script setup lang="ts">
  import { computed, reactive, ref, unref } from 'vue';
  import type { FormInstance } from 'vant';
  import SendMessage from './components/SendMessage.vue';
  import { showToast } from 'vant';
  import { Icon } from '@vicons/utils';
  import {
    UserOutlined,
    MobileOutlined,
    EyeOutlined,
    EyeInvisibleOutlined,
    LockOutlined,
  } from '@vicons/antd';
  import { LoginStateEnum, useLoginState, useFormRules } from './useLogin';

  const { handleBackLogin, getLoginState } = useLoginState();
  const { getFormRules } = useFormRules();
  const getShow = computed(() => unref(getLoginState) === LoginStateEnum.RESET_PASSWORD);
  // const expose = defineExpose(); // 父级获取子组件的 expose 暴露的值和函数
  // console.log(version);
  // console.log(LoginStateEnum.RESET_PASSWORD);

  // const timeRef = ref<CountDownInstance>();
  // const timeBoolean = ref<boolean>(false);

  const loading = ref<boolean>(false);
  const switchConfirmPassType = ref<boolean>(false);
  const formRef = ref<FormInstance>();
  const formData = reactive({
    username: '',
    mobile: '',
    sms: '',
    confirmPassword: '',
  });

  // const handleSendMessage = () => {
  //   timeBoolean.value = true;
  //   timeRef.value?.start();
  // };

  // const onFinish = () => {
  //   timeBoolean.value = false;
  //   // console.log(timeBoolean.value);
  //   showToast('倒计时结束');
  //   timeRef.value?.reset();
  // };

  function handleReset() {
    formRef.value
      ?.validate()
      .then(async () => {
        try {
          loading.value = true;
          throw '密码错误';
        } finally {
          loading.value = false;
        }
      })
      .catch((e: Error) => {
        console.error('验证失败');
        showToast(e);
      });
  }
</script>

<style scoped lang="less"></style>
