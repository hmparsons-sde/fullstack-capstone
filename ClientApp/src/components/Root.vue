/* eslint-disable vue/valid-template-root */
<template lang="html">
<div>
  <Home />
  <SubHero />
  <YourPodcasts />
  <Search/>
  <InputBase/>
  </div>
</template>

<script>
import Home from "./Home.vue";
import SubHero from "./SubHero.vue";
import YourPodcasts from "./YourPodcasts.vue";
import Search from '../views/Search.vue';
import InputBase from '../components/base/InputBase.vue';
export default {
  name: "Root",
  components: {
    Home,
    SubHero,
    YourPodcasts,
    Search,
    InputBase,
  }
};
</script>

<style lang="css" scoped></style>
