import { createWebHistory, createRouter } from "vue-router";
import Login from "@/components/login.vue";
import Topic from "@/components/topic.vue";
import Question from "@/components/question.vue";
import Score from "@/components/score.vue";
import setlogin from "@/components/setlogin.vue";
const routes = [
  {
    path: "/",
    name: "Login",
    component: Login,
  },
  {
    path: "/topic",
    name: "Topic",
    component: Topic,
  },
  {
    path: "/question",
    name: "Question",
    component: Question,
  },
  {
    path: "/score",
    name: "Score",
    component: Score,
  },
  {
    path: "/setlogin",
    name: "setlogin",
    component: setlogin,
  },
];
const router = createRouter({
  history: createWebHistory(),
  routes:routes,
});

export default router;