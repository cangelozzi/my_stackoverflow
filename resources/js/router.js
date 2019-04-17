import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

import home from './components/HomeComponent';
import login from './components/LoginComponent';
import signup from './components/SignupComponent';
import logout from './components/LogoutComponent';
import single from "./components/SingleQComponent";
import askquestion from "./components/AskQuestionComponent";

const routes = [{
    path: '/login',
    component: login
}, {
    path: '/signup',
    component: signup
}, {
    path: '/home',
    component: home,
    name: 'intro'
}, {
    path: '/logout',
    component: logout
}, {
    path: '/question/:q_single',
    component: single,
    name: 'single'
}, {
    path: '/ask',
    component: askquestion,
    name: 'ask'
}];

const router = new VueRouter({
    routes,
    mode: 'history'
});

export default router;
