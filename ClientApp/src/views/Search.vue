<template>
<div class="px-4 pt-6 lg:px-8 flex flex-col items-start bg-contentColor overflow-auto h-full">
  <div class="w-full h-full">
    <search-slider/>
    <!-- <search-shelf
      v-if="genres"
      imgSize="small"
      linkText="More"
      link="/collection/playlists"
      :genreData="genres"
      imgSource="https://i.scdn.co/image/567158eb895ad26718a814345af0fc43ee785ec5"
    /> -->
  </div>
</div>
</template>

<script>
import { mapState } from 'vuex';

import SearchSlider from '@/components/search/SearchSlider.vue';
// import SearchShelf from '../components/search/searchShelf.vue';

export default {
  components: {
    SearchSlider,
  },
    ...mapState('pages/search', [
      'genres',
    ]),

  created() {
    this.$store.dispatch('pages/search/getGenres', null, { root: true });
  },
};
</script>
