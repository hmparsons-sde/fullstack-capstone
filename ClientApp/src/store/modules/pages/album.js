import axios from 'axios';

export default {
  namespaced: true,

  state: {
    album: null,
  },
  getters: {},
  mutations: {
    setAlbum(state, payload) {
      state.album = payload;
    },
  },
  actions: {
    getAlbum({ commit }, albumId) {
      return new Promise((resolve, reject) => {
        commit('setIsLoading', true, { root: true });

        axios.get(`https://api.spotify.com/v1/albums/${albumId}?market=US`).then((res) => {
          const q = {
            ...res.data,
          };
          commit('setAlbum', q);
          resolve();
        })
        .catch(reject);
        });
    },
  },
};
