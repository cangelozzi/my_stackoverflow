import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

import home from './components/HomeIntroComponent';
import login from './components/LoginComponent';
import signup from './components/SignupComponent';
import logout from './components/LogoutComponent';

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
}];

const router = new VueRouter({
    routes,
    mode: 'history'
});

export default router;
