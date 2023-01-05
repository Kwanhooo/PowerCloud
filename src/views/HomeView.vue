<script setup>
import Card from "@/components/Card/Card.vue";
import { Skeleton } from "ant-design-vue";
</script>

<template>
  <div id="home-wrapper">
    <div>
      <Card size="small" title="Xcode" description="构建你的世界." icon="https://cloud.0xcafebabe.cn/code.png" />
      <Card size="large" title="Xcode" description="构建你的世界." icon="https://cloud.0xcafebabe.cn/code.png" />
      <Card size="extra-large" title="Xcode" description="构建你的世界." icon="https://cloud.0xcafebabe.cn/code.png" />
    </div>
  </div>
  <div id="bottom-wrapper">
    <div id="bottom-wrapper-inner">
      <div class="component">
        <div class="title">
          <span>你的方案</span>
          <img src="/src/assets/svgs/go.svg" class="go">
        </div>
        <div class="body">
          <Skeleton active :paragraph="{ rows: 3 }" />
        </div>
      </div>
      <div class="component">
        <div class="title">
          <span>你的储存空间</span>
          <img src="/src/assets/svgs/go.svg" class="go">
        </div>
        <div class="body">
          <Skeleton active :paragraph="{ rows: 3 }" />
        </div>
      </div>
      <div class="component">
        <div class="title">
          <span>数据恢复</span>
          <img src="/src/assets/svgs/go.svg" class="go">
        </div>
        <div class="body">
          <Skeleton active :paragraph="{ rows: 3 }" />
        </div>
      </div>
    </div>
  </div>
  <div id="copyright-wrapper">
    <div style="margin-left: 20%;margin-top: 30px">系统状态&nbsp;&nbsp;|&nbsp;&nbsp;隐私政策&nbsp;&nbsp;|&nbsp;&nbsp;条款与条件&nbsp;&nbsp;|&nbsp;&nbsp;
      粤ICP备2022013690号-2
    </div>
    <div style="margin-right: 20%;margin-top: 30px">版权所有 © 2022 0xcafebabe.cn. 保留所有权利。</div>
  </div>
</template>

<style scoped>
#home-wrapper {
  padding-top: 100px;
  width: 100%;
  /*height: 3000px;*/
  padding-left: 20%;
}

#bottom-wrapper {
  margin-top: 250px;
  width: 100%;
  height: 300px;
  background-color: #ffffff;
}

#bottom-wrapper-inner {
  display: flex;
  justify-content: space-between;
  margin: 0 22rem;
}

#copyright-wrapper {
  position: relative;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 80px;
  background-color: #f5f5f7;
  color: #666666;
  font-size: .8rem;
  display: flex;

  justify-content: space-between;
  /*padding-top: 100px;*/
  /*background-color: gray;*/
}

.component {
  height: 100%;
  margin-top: 3rem;
  /*background-color: gray;*/
}

.component .title {
  font-size: 1.6rem;
  font-weight: 600;
}

.title:hover {
  cursor: pointer;
}

.go {
  width: 1.2rem;
  height: 1.2rem;
  margin-left: .5rem;
}

</style>