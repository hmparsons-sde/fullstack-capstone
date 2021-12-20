<template>
  <div class="input-base">
    <div>
      <hr />

      <div class="subhero">
        <h1>Know what you're looking for?</h1>
        <span>Search here!</span>
      </div>

      <div>
        <input v-model="Title" class="btn title-search" id="title" />
        <div>
          <svg
            class="h-4 w-4"
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            stroke="#000000"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
          >
            <circle cx="11" cy="11" r="8"></circle>
            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
          </svg>
        </div>
      </div>
      <button @click.prevent="checkName" class="btn sub__btn">Search</button>
    </div>
    <div class="p-5 search-results">
      <div class="card" v-for="podcast in podcasts" :key="podcast.id">
        <div class="overlay">
          <h2 style="white-space: pre-line;">
          Genre: {{ podcast.genre }}
          </h2>
          <br />
          <h3>Total Episodes: {{ podcast.totalEpisodes}}</h3>
          <br>
          <h3>Listen Score: {{ podcast.listenScore }}</h3>
          <br>
          <h4>Explicit Content? {{ podcast.explicitContent }}</h4>
        </div>
        <div class="shadow-lg mr-4 rounded-smmr-4 relative">
          <img :src="podcast.image" alt="Podcast logo" class="Podcasts__banner">
        </div>
        <h1>
          {{ podcast.title }}
        </h1>
      </div>
    </div>
    <hr />
  </div>
</template>

<script>
import axios from "axios";
import { debounce } from "lodash";

export default {
  data: function () {
    return {
      Title: "",
      podcasts: [],
    };
  },

  methods: {
    checkName() {
      axios
        .get(
          `https://localhost:44395/api/Podcasts/PodcastName/${this.$data.Title}`
        )
        .then((res) => {
          this.podcasts = res.data;
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

<style scoped>
h1,
h2,
h3,
h4,
h5,
li,
ul {
  color: #fbb99c;
}
.sub__btn {
  background-color: #282320;
  color: #f5f6f4;
  border: 2px solid #be3e3a;
  width: 9%;
  padding: 18px;
  font-size: 15px;
  margin-bottom: 50px;
  margin-top: 30px;
  margin-left: 45%;
}
.sub__btn:hover {
  background-color: #616467;
  color: #fff;
}
.title-search {
  background-color: #282320;
  color: #f5f6f4;
  border: 2px solid #be3e3a;
  margin-left: 12%;
  width: 75%;
}
.input-base {
  margin-top: 10%;
}
hr {
  color: #fbb99c;
}

.subhero {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 80px;
  color: #f5f6f4;
  margin-bottom: 2%;
}
.search-results {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  margin-bottom: 5%;
}
.subhero > h1 {
  font-size: 3em;
}
.subhero > span {
  margin-top: 10px;
}
img {
  width:400px;
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
  padding: 2%;
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
  opacity: 0.8;
}
.card:hover .abs {
  visibility: visible;
}
</style>
