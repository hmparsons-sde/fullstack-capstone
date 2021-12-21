<template lang="html">
  <header>

    <div class="header">
        <!-- <div class="logo__header">
          <router-link to='/'><img src="https://media.istockphoto.com/videos/audio-wave-on-black-background-video-id1126438594?s=640x640" alt="header__log"/></router-link>

        </div> -->

      <div class="navlink__header">
          <div class="link__container">
            <router-link to="/"><div class="nav__link">Home</div></router-link>
              <router-link to="/shuffle"><div class="nav__link">Shuffler</div></router-link>
              <router-link to="/search"><div class="nav__link">Search</div></router-link>
              <router-link to="/playlists"><div class="nav__link">Playlists</div></router-link>
              <router-link to="/profile"><div class="nav__link">Your profile</div></router-link>
          </div>
      </div>
    </div>
  </header>

</template>

<script>
export default {
  name: "Header",
};
</script>

<style lang="css" scoped>
a {
  color: white;
}
</style>
