/* eslint-disable vue/valid-template-root */
<template lang="html">
<div>
  <Home />
  <SubHero />
  <YourMusic />
  </div>
</template>

<script>
import Home from "./Home.vue";
import SubHero from "./SubHero.vue";
import YourMusic from "./YourMusic.vue";
export default {
  name: "Root",
  components: {
    Home,
    SubHero,
    YourMusic,
  }
};
</script>

<style lang="css" scoped></style>
