<template>
  <main>
    <toolbarcomponent></toolbarcomponent>
    <footercomponent></footercomponent>
  </main>
</template>

<script>
  import toolbarcomponent from "./layout/ToolbarComponent";
  import footercomponent from "./layout/FooterComponent.vue";
  export default {
    components: {
      toolbarcomponent,
      footercomponent
    }
  };
</script>

<style>
</style>

