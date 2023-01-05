<template>
  <div :class="{'card-wrapper':true,'large':size==='large','extra-large':size==='extra-large','small':size==='small'}">
    <div class="header">
      <div class="header-inner-wrapper">
        <div class="icon-wrapper">
          <img :src="icon" class="icon" alt="icon" />
        </div>
        <div class="text">
          <div class="title">
          <span>
            {{ title }}
          </span>
          </div>
          <div class="description">
            <span>{{ description }}</span>
          </div>
        </div>
      </div>
    </div>
    <div class="body">
      <slot name="body" />
    </div>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Card",
  props: {
    icon: {
      type: String,
      default: "/src/assets/images/code.png"
    },
    title: {
      type: String,
      default: "Title"
    },
    description: {
      type: String,
      default: "Description"
    },
    size: {
      type: String,
      default: "large"
    }
  }
};
</script>

<style scoped>
.large {
  width: 40%;
}

.small {
  width: 20%;
}

.extra-large {
  width: 62%;
}

.card-wrapper {
  margin: 1%;
  display: inline-block;
  /*min-width: 400px;*/
  border-radius: 20px;
  transition: all 0.15s ease-in-out;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}

.card-wrapper:hover {
  transform: scale(1.01);
  box-shadow: 0 0 50px rgba(0, 0, 0, 0.15);
}

.card-wrapper .header {
  width: 100%;
  height: 7rem;
  background-color: rgba(255, 255, 255, 0.8);
  border-radius: 20px 20px 0 0;
  -webkit-backdrop-filter: saturate(180%) blur(20px);
  backdrop-filter: saturate(180%) blur(20px);
}

.header-inner-wrapper {
  position: relative;
  top: 10px;
  margin-left: 20px;
  width: calc(100% - 40px);
  height: calc(100% - 20px);
  cursor: pointer;
  display: flex;
  flex-direction: row;
  border-radius: 10px;
  transition: all 0.15s ease-in-out;
}

.header-inner-wrapper:hover {
  background-color: rgba(100, 100, 100, 0.2);
}

.icon-wrapper {
  height: 100%;
  width: auto;
}

.icon-wrapper .icon {
  height: 5rem;
  margin-top: .4rem;
  margin-left: 1rem;
  width: auto;
}

.card-wrapper .body {
  background-color: #ffffff;
  height: 300px;
  border-radius: 0 0 20px 20px;
}

.text {
  margin-left: 1rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.title {
  font-size: 2rem;
}

.description {
  font-size: 1rem;
  color: #666666;
}
</style>
