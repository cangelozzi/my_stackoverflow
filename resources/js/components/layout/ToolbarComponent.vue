<template>
  <v-toolbar
    flat
    color="#FAFAFA"
  >
    <!-- <v-toolbar-side-icon></v-toolbar-side-icon> -->
    <v-toolbar-title>
      <router-link
        style="text-decoration: none;"
        class="black--text"
        to='/'
      >
        <span style="font-weight: 200;">My Stack</span>overflow
      </router-link>
    </v-toolbar-title>
    <v-spacer></v-spacer>
    <div class="hidden-sm-and-down">

      <router-link
        v-for="item in items"
        :key="item.title"
        :to="item.to"
        v-if="item.show"
      >
        <v-btn flat>{{item.title}}</v-btn>
      </router-link>

    </div>
  </v-toolbar>
</template>

<script>
  export default {
    data() {
      return {
        items: [
          { title: "Home", to: "/home", show: true },
          { title: "Ask Questions", to: "/ask", show: User.loggedIn() },
          { title: "Category", to: "/category", show: User.admin() },
          { title: "Login", to: "/login", show: !User.loggedIn() },
          { title: "Logout", to: "/logout", show: User.loggedIn() }
        ]
      };
    },
    created() {
      EventBus.$on("logout", () => {
        User.logout();
      });
    },
    methods: {}
  };
</script>

<style scoped>
.v-toolbar__title {
  font-size: 36px;
}
</style>
