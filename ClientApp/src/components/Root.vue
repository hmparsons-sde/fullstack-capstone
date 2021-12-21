/* eslint-disable vue/valid-template-root */
<template lang="html">
<div>
  <Home />
  <SubHero />
  <YourPodcasts />
  <InputBase/>
  <Shuffler/>
  </div>
</template>

<script>
import Home from "./Home.vue";
import SubHero from "./SubHero.vue";
import YourPodcasts from "./YourPodcasts.vue";
import InputBase from '../components/base/InputBase.vue';
import Shuffler from '../views/Shuffler.vue';
export default {
  name: "Root",
  components: {
    Home,
    SubHero,
    YourPodcasts,
    InputBase,
    Shuffler
  }
};
</script>

<style lang="css" scoped></style>
