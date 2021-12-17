/* eslint-disable vue/valid-template-root */
<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
  <div>
  <Header />
  <Root />
    <router-view></router-view>
  <Footer />
  </div>
</template>

<script>
import Header from '../src/components/Header.vue'
import Root from '../src/components/Root.vue'
import Footer from '../src/components/Footer.vue'
import './tailwind.css'

export default {
  name: 'App',
  components: {
    Header,
    Footer,
    Root,
  }
}
</script>
