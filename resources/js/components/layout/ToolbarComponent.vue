<template>
  <v-toolbar
    flat
    color="#FAFAFA"
  >
    <!-- <v-toolbar-side-icon></v-toolbar-side-icon> -->
    <v-toolbar-title><span style="font-weight: 200;">My Stack</span>overflow</v-toolbar-title>
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
          { title: "Category", to: "/category", show: User.loggedIn() },
          { title: "Login", to: "/login", show: !User.loggedIn() },
          { title: "Logout", to: "/logout", show: User.loggedIn() }
        ]
      };
    },
    created() {
      EventBus.$on("logout", () => {
        User.logout();
      });
    }
  };
</script>

<style>
</style>
