<template lang="html">
  <div class="yourmusic">

      <Music img='https://img.podcastone.com/images/new/joodkmjin/smalltownmurder_logo.jpg' title='Small Town Murder'/>
      <Music img='https://pyxis.nymag.com/v1/imgs/741/c47/f4b61fb6a3f29d799f58be559c5fcf79d1-crime-in-sports.2x.rsquare.w190.jpg' title='Crime in Sports'/>
      <Music img='https://allthingscomedy.com/images/_larger/DOLLOP_cover2.jpg' title='The Dollop with Dave Anthony and Garreth Reynolds'/>
      <Music img='https://timesuckpodcast.com/Content/Images/Timesuck-With-Dan.png' title='Timesuck with Dan Cummins'/>
      <Music img='https://teachinghub.as.ua.edu/wp-content/uploads/2016/10/serial-itunes-logo.png' title='Serial'/>
      <Music img='https://pyxis.nymag.com/v1/imgs/b5b/494/4c18b3dea0b3664b88f9c81ab5174907ec-hot-pod-teachers-pet.rsquare.w1200.jpg' title="The Teacher's Pet"/>

  </div>
</template>

<script>
import Music from "./Music.vue";
export default {
  name: "YourMusic",
  components: {
    Music,
  },
};
</script>

<style lang="css" scoped>
.yourmusic {
  width: 80%;
  margin: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  margin-bottom: 80px;
}
</style>
