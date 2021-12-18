<template lang="html">
      <div class="connect__music">
        <h1 class="heading">Podcasts you may like</h1>
        <div class="music__card__div">
          <div class="music__card">
              <img src="https://img.podcastone.com/images/new/joodkmjin/smalltownmurder_logo.jpg" alt="img">
              <h3>Small Town Murder</h3>
              <span>with James Pietrogallo & Jimmie Wisman</span>
          </div>
        </div>
      </div>
</template>

<script>
export default {
  name: "ConnectMusic",
};
</script>

<style lang="css" scoped>
.connect__music {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #eeeeee;
  padding: 100px;
}
.heading {
  margin-bottom: 60px;
  font-size: 3em;
}
.music__card__div {
  display: flex;
  justify-content: space-between;
  align-items: baseline;
}
.music__card h3 {
  margin-bottom: 10px;
}
span {
  line-height: 1.5rem;
  font-size: 12px;
}
.music__card {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  text-align: center;
  width: 25%;
}
.music__card img {
  height: 150px;
  margin-bottom: 20px;
}
</style>
