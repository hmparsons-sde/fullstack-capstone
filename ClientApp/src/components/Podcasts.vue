<template lang="html">
  <div class="Podcasts">
    <div class="overlay">
      <h2>SEE MORE</h2>
    </div>
    <img
      :src='img'
      class="Podcasts__banner"
      alt="img"
    />
  </div>
</template>

<script>
// import PlayButton from '../components/icons/PlayButton.vue'
export default {
  name: "Podcasts",
  props: {
    img: String,
    title: String,
  },
};
</script>

<style lang="css" scoped>
.Podcasts {
  width: 30%;
  height: 30%;
  /* margin-bottom: 100px; */
  position: relative;
  margin-right: 10px;
  min-width: 27%;
  transition: 0.25s ease;
  text-align: center;
  cursor: pointer;
}
.Podcasts .Podcasts__banner {
  width: 100%;
  min-width: 70%;
}
.overlay {
  position: absolute;
  width: 100%;
  min-width: 70%;
  background-color: rgba(0, 0, 0, 0.9);
  height: 100%;
  opacity: 0;
  transition: 0.5s ease;
  margin: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  flex-wrap: wrap;
}
.Podcasts:hover .overlay {
  opacity: 0.85;
}
.Podcasts:hover .abs {
  visibility: visible;
}
.Podcasts__heading {
  color: #fff;
  font-size: 20px;
  font-weight: bold;
  text-align: center;
  /* left:1000px; */

  /* visibility: hidden; */
}
.link {
  margin: 46px;
  font-weight: bold;
  color: #be3e3a;
}
.abs {
  position: absolute;
  top: 80px;
  left: 80px;
  visibility: hidden;
}
.Podcasts__heading {
  left: 120px;
}
h2 {
  color: #fbb99c;
  font-weight: 700;
  font-size: 28px;
}
</style>
