<template>
  <v-card>
    <v-toolbar
      color="#ea8f10"
      dark
      dense
      class="mt-2"
    >

      <v-toolbar-title style="margin-left: 20px;">Categories</v-toolbar-title>

    </v-toolbar>
    <v-list>
      <v-list-tile
        v-for="category in categories"
        :key="category.id"
      >
        <v-list-tile-content>
          <v-list-tile-title>{{ category.name }}</v-list-tile-title>
        </v-list-tile-content>
      </v-list-tile>
    </v-list>
  </v-card>
</template>

<script>
  export default {
    created() {
      axios
        .get("/api/category")
        .then(res => (this.categories = res.data))
        .catch(err => console.log(err.response));
    },

    data() {
      return {
        categories: {}
      };
    }
  };
</script>

<style scoped>
.v-list__tile__title {
  text-align: center;
}
</style>
