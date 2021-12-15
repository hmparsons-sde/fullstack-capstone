<template>
    <div
        id="app"
        @click.right="rightClick($event)"
      >
        <div class="wrapper">
          <Menu />
            <main class="flex flex-auto flex-col overflow-hidden relative">
              <HeaderBar />
            <div class="main-section content-title-group">
          <h2 class="title">Heroes</h2>
        <div>We'll start here</div>
      </div>
    </main>
  </div>
</div>
</template>

<script>
import { mapState } from "vuex";
import Menu from "@/components/sidenav/Menu.vue";
import HeaderBar from "@/components/header/header-bar";
export default {
  name: "App",
  components: { HeaderBar, Menu },
  computed: {
    ...mapState(["isLoading"]),
  },
  methods: {
    rightClick(e) {
      e.preventDefault();
    },
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
