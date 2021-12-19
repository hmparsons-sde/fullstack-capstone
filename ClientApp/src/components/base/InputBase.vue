<template>
  <div class="input-base">
    <div class="w-full px-3 mb-6">
      <div class="relative mb-3">
        <input v-model="Title" class="" id="title" />
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
      <button
        @click.prevent="checkName"
        class="
          bg-blue-500
          hover:bg-blue-700
          text-white
          font-bold
          py-2
          px-4
          rounded
        "
      >
        Search
      </button>
    </div>
    <h1>Results</h1>
    <div class="p-5">
      <ul>
        <li v-for="podcast in podcasts" :key="podcast.id">
          {{ podcast.title }}
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import { debounce } from "lodash";
// import ButtonBase from "./ButtonBase.vue";
export default {
  data: function () {
    return {
      Title: "",
      podcasts: [],
    };
  },
  // components: {
  //   ButtonBase,
  // },
  methods: {
    checkName() {
      // eslint-disable-next-line no-console
      // console.log(`Checking name: ${this.Title}`);

      console.log(this.$data.Title);
      axios
        .get(
          `https://localhost:44395/api/Podcasts/PodcastName/${this.$data.Title}`,
          {
            // params: {
            //   search: this.Title
            // }
          }
        )
        .then((res) => {
          // eslint-disable-next-line no-console
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
.input-base {
  color: white;
  background-color: black;
}
</style>
