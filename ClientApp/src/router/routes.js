import Home from '../views/Home.vue';

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    meta: {},
  },
  {
    path: '/search',
    name: 'Search',
    component: () => import(/* webpackChunkName: "Search" */'@/views/Search.vue'),
    meta: {
      showSearchInput: true,
    },
  },
  {
    path: '/playlist/:id',
    name: 'playlist',
    component: () => import(/* webpackChunkName: "Playlist" */'@/views/Playlist.vue'),
  },
  {
    path: '/album/:id',
    name: 'album',
    component: () => import(/* webpackChunkName: "Album" */'@/views/Album.vue'),
  },
  {
    path: '/login',
    name: 'login',
    component: () => import(/* webpackChunkName: "Login" */'@/views/Login.vue'),
  },
  {
    path: '/loading',
    name: 'loading',
    component: () => import(/* webpackChunkName: "Playlist" */'@/views/Loading.vue'),
  },
  {
    path: '/artist/:id',
    name: 'artist',
    component: () => import(/* webpackChunkName: "Artist" */'@/views/Artist.vue'),
  },
  {
    path: '/callback',
    name: 'Loggingin',
    component: () => import(/* webpackChunkName: "Loggin in" */'@/views/Callback.vue'),
  },
];

export default routes;
