<template>
  <div id="top-bar-wrapper" class="glass">
    <div id="top-bar-title">
      <span>PowerCloud</span>
      <span id="top-bar-sub-title"> by Kwanhooo</span>
    </div>
    <div id="top-bar-btn-wrapper">
      <div>
        <img src="/src/assets/svgs/apps.svg" class="icon pointer">
      </div>
      <div>
        <img src="/src/assets/svgs/add.svg" class="icon pointer">
      </div>
      <div>
        <img class="avatar pointer" src="/src/assets/svgs/default-user-avatar.svg">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "TopBar"
};
</script>

<style scoped>
#top-bar-wrapper {
  position: absolute;
  top: 0;
  width: calc(100% - 10px);
  height: 50px;
  background: rgba(110, 110, 110, 0.5);
  z-index: 9999999;
  display: flex;
  flex-direction: row;
}

.glass {
  -webkit-backdrop-filter: saturate(180%) blur(20px);
  backdrop-filter: saturate(180%) blur(20px);
}

#top-bar-title {
  flex: 1;
  color: white;
  font-size: 27px;
  font-weight: 600;
  font-family: sans-serif;
  height: 100%;
  padding-top: 11px;
  padding-left: 20px;
  cursor: pointer;
}

#top-bar-sub-title {
  font-size: 15px;
  font-weight: 400;
  padding-top: 5px;
  padding-left: 5px;
}

#top-bar-btn-wrapper {
  flex: 1;
  max-width: 200px;
  /*background: gray;*/
  display: flex;
  justify-content: space-around;
}

.icon {
  margin-top: 5px;
  width: 25px;
  height: auto;
  /*margin-left: 12px;*/
}

.avatar {
  height: 32px;
  width: 32px;
  border-radius: 50% !important;
  margin-top: 2px;
}

.pointer {
  border-radius: 5px;
  padding: 7px 7px;
  transition: all 0.1s ease-in-out;
}

.pointer:hover {
  background: rgba(100, 100, 100, 0.25);
}
</style>
