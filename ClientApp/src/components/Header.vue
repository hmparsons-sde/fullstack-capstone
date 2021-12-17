<template lang="html">
  <header>

    <div class="header">
        <div class="logo__header">
          <router-link to='/'>Home</router-link>

        </div>

      <div class="navlink__header">
          <div class="link__container">
              <router-link to='/premium'><div class="nav__link">Premium</div></router-link>
              <a href="#"><div class="nav__link">Support</div></a>
              <a href="#"><div class="nav__link">Download</div></a>|
          </div>

      </div>
      <div class="profile__header">
        Me
        <span>Profile</span>
      </div>
    </div>
  </header>

</template>

<script>
export default {
  name:'Header'
}
</script>

<style lang="css" scoped>

</style>
