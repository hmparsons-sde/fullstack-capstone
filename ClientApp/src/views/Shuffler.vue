<template lang="html">
  <div class="subhero">
    <h1>Not sure?</h1>
      <span>Click for a suggestion!</span>
    <button @click.prevent="checkName"><ShuffleIcon /></button>
        <div class="p-5 shuffle-results">
    
          <div>
           <h2>{{ episode.title }}</h2>
          </div>

      </div>
    <hr />
  </div>
</template>

<script>
import ShuffleIcon from "../components/icons/ShuffleIcon.vue";
import axios from "axios";
import { debounce } from "lodash";
export default {
  name: "Shuffler",
  components: {
    ShuffleIcon,
  },
  data: function () {
    return {
      Title: "",
      episode: {},
    };
  },

  methods: {
    checkName() {
      axios
        .get(
          `https://localhost:44395/api/Episodes/random`
        )
        .then((res) => {
          this.episode = res.data;
        })
        .catch((err) => {
          // eslint-disable-next-line no-console
          console.log(err);
        });
    },
  },
  created() {
    this.debounceName = debounce(this.checkName, 1000);
  },
  watch: {
    Title() {
      if (!this.Title) return;
      this.debounceName();
    },
  },
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
  margin-bottom: 5%;
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
h1,
h2,
h3,
h4,
h5,
li,
ul {
  color: #fbb99c;
}
span {
  margin-bottom: 5%;
}
hr {
  color: #fbb99c;
}
</style>
