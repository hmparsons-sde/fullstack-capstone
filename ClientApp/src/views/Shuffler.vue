<template lang="html">
  <div class="subhero">
    <h1>Not sure?</h1>
      <span>Click for a suggestion!</span>
    <button @click.prevent="checkName"><ShuffleIcon /></button>
        <div class="p-5 shuffle-results">
          <div class="card">
          <div class="shadow-lg mr-4 rounded-smmr-4 relative">
          <img :src="episode.image">
        </div>
          <div>
           <h2 class="ml-2">{{ episode.title }}</h2>
          </div>
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
  color: #be3e3a;
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
.shuffle-results {
  margin-top: 5%;
}
img {
  width: 400px;
  height: auto;
  margin: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
  flex-wrap: wrap;
  margin-bottom: 20px;
  /* margin-left: 27%; */
  color: #f5f6f4;
  /* margin-bottom: 2%; */
}
.card {
  width: 400px;
  height: auto;
  margin: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
  flex-wrap: wrap;
  margin-bottom: 20px;
  /* margin-left: 27%; */
  color: #f5f6f4;
  /* margin-bottom: 2%; */
}
.overlay {
  position: absolute;
  background-color: rgba(0, 0, 0, 0.9);
  opacity: 0;
  transition: 0.5s ease;
  width: 400px;
  height: 50%;
  margin: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  flex-wrap: wrap;
}
.card:hover .overlay {
  opacity: 1;
}
.card:hover .abs {
  visibility: visible;
}
</style>
