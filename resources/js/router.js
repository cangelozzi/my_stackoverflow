import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

import login from './components/LoginComponent';

const routes = [{
    path: '/login',
    component: login
}];

const router = new VueRouter({
    routes,
    mode: 'history'
});

export default router;
