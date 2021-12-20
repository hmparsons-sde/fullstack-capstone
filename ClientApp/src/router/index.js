import { createRouter, createWebHistory } from 'vue-router';
import Root from '../components/Root.vue';
const routes = [
  {
    path: '/',
    name: 'Home',
    component: Root
  },
  {
    path: '/about',
    name: 'About',
    component: () => import(/* webpackChunkName: "about" */ '../components/About.vue')
  },
  {
    path: '/shuffle',
    name: 'Shuffle',
    component: () => import(/* webpackChunkName: "about" */ '../views/Shuffler.vue')
  },
]
const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})
export default router
