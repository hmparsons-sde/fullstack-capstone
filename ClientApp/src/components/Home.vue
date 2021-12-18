<template lang="html">
  <div class="home__background">
    <div class="home__text">
      <div class="home__image">
        <img src="../assets/Poddammit.png">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Home",
};
</script>

<style lang="css" scoped>
.home__background {
  background-color: #282320;
  width: 100%;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  color: #fff;
}
.btn {
  margin-top: 20px;
  color: #fff;
  padding: 20px;
  width: 25%;
  border-radius: 50px;
  border: none;
  font-size: 16px;
  text-transform: uppercase;
  letter-spacing: 1.5px;
  font-weight: bold;
  cursor: pointer;
  transition: 0.5s ease;
}
.home__button {
  background-color: #1db954;
}
.home__button:hover {
  background-color: #1ed760;
}
.home__text {
  margin-top: 50px;
  font-size: 2.5em;
}
.home__terms {
  margin-top: -30px;
  /* margin-bottom: 30px; */
  color: #fff;
  text-align: center;
  font-size: 10px;
}
/* .home__image {
  width: 55%;
  height: 50%;
} */
</style>
