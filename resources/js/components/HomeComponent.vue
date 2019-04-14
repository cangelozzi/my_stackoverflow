<template>
  <main>
    <toolbarcomponent></toolbarcomponent>
    <router-view></router-view>
    <footercomponent></footercomponent>
  </main>
</template>

<script>
  import toolbarcomponent from "./layout/ToolbarComponent";
  import footercomponent from "./layout/FooterComponent.vue";
  import login from "./LoginComponent.vue";
  export default {
    components: {
      toolbarcomponent,
      footercomponent,
      login
    },
    data() {
      return {};
    }
  };
</script>

<style>
</style>

