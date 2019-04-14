<template>
  <v-toolbar>
    <!-- <v-toolbar-side-icon></v-toolbar-side-icon> -->
    <v-toolbar-title>My Stackoverflow</v-toolbar-title>
    <v-spacer></v-spacer>
    <div class="hidden-sm-and-down">

      <router-link to="/">
        <v-btn flat>Home</v-btn>
      </router-link>

      <v-btn flat>Questions</v-btn>

      <v-btn flat>Categories</v-btn>

      <router-link to="/login">
        <v-btn flat>LOG IN</v-btn>
      </router-link>

    </div>
  </v-toolbar>
</template>

<script>
  export default {};
</script>

<style>
</style>
