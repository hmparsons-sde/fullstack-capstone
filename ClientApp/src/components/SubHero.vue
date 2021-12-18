<template lang="html">
    <div class="subhero">
      <h1>Looking for podcasts?</h1>
      <span>Pick up where you left off...</span>
     <router-link to="/search"><button type="button" class="btn sub__btn">SEARCH</button></router-link>
    </div>
</template>

<script>
export default {
  name: "SubHero",
};
</script>

<style lang="css" scoped>
.subhero {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 80px;
  color: #f5f6f4;
}
.subhero > h1 {
  font-size: 3em;
}
.subhero > span {
  margin-top: 10px;
}
.sub__btn {
  background-color: #282320;
  color: #f5f6f4;
  border: 2px solid #be3e3a;
  width: 100%;
  padding: 18px;
  font-size: 15px;
  margin-bottom: 50px;
  margin-top: 30px;
}
.sub__btn:hover {
  background-color: #616467;
  color: #fff;
}
</style>
