import { createApp } from 'vue'
import App from './App.vue'
import 'bootstrap'; 
import 'bootstrap/dist/css/bootstrap.min.css';

//import { createWebHashHistory, createWebHistory } from 'vue-router';

import axios from 'axios'
//import router from '@/router/router'
import router from './router'
axios.defaults.baseURL = 'http://localhost/quiz/api/';
axios.defaults.headers.common['auth']= 'Quiz'
//const history = createWebHistory({})
//const routes = [history,{path:'/',component:Login},{path:'/topic',component:QuizTopic}];
//router = createRouter({routes:routes})

import './assets/style.css'

const myApp = createApp(App)
myApp.use(router)

//myApp.use(BootstrapVue)

//myApp.mount('#app')
router.isReady().then(() => {myApp.mount('#app')})
