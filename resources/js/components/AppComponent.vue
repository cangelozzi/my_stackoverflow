<template>
  <main>
    <toolbarcomponent></toolbarcomponent>
    <router-view></router-view>
    <landingpage></landingpage>
  </main>
</template>

<script>
  import toolbarcomponent from "./layout/ToolbarComponent";
  import login from "./LoginComponent.vue";
  import landingpage from "./layout/LandingPageComponent.vue";
  export default {
    components: {
      toolbarcomponent,
      login,
      landingpage
    },
    data() {
      return {
        timelineOn: true
      };
    }
  };
</script>

<style>
</style>

