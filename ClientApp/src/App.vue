<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
  <div>
    <Header />
    <router-view></router-view>
    <Footer />
  </div>
</template>

<script>
import Header from "./components/Header.vue";
import Footer from "./components/Footer.vue";
import "./tailwind.css";
export default {
  name: "App",
  components: {
    Header,
    Footer,
  },
};
</script>
