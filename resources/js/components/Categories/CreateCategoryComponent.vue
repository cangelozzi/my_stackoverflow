<template>
  <v-container>
    <v-form @submit.prevent="createcat">
      <v-text-field
        v-model="form.name"
        label="Category Name"
        type="text"
        required
      ></v-text-field>

      <v-btn
        v-if="createBtn"
        type="submit"
        color="#91c6c6"
      >Create</v-btn>
      <v-btn
        v-else
        color="blue"
        @click="updateCat"
      >Update Category</v-btn>

    </v-form>

    <v-card>
      <v-toolbar
        color="#f2f2f2"
        dense
      >
        <v-toolbar-title>Categories List</v-toolbar-title>
      </v-toolbar>

      <v-list v-if="categories">
        <v-list-tile
          v-for="(category, index) in categories"
          :key="category.id"
        >

          <v-list-tile-action>
            <v-btn
              icon
              small
              @click="editCat(index)"
            >
              <v-icon color="blue">edit</v-icon>
            </v-btn>
          </v-list-tile-action>

          <v-list-tile-content>
            <v-list-tile-title>{{ category.name }}</v-list-tile-title>
          </v-list-tile-content>
          <v-list-tile-action>

            <v-btn
              icon
              small
              @click="deleteCat(category.url_category, index)"
            >
              <v-icon color="red">delete</v-icon>
            </v-btn>
          </v-list-tile-action>
        </v-list-tile>
      </v-list>

    </v-card>

  </v-container>
</template>

<script>
  export default {
    data() {
      return {
        form: {
          name: null
        },
        categories: {},
        createBtn: true,
        cat_url: null
      };
    },

    created() {
      // only admin can handle categories
      if (!User.admin()) {
        this.$router.push("/home");
      }
      axios
        .get("/api/category")
        .then(res => (this.categories = res.data))
        .catch(err => console.log(err.response));
    },

    methods: {
      createcat() {
        axios
          .post("/api/category", this.form)
          .then(res => {
            this.categories.unshift(res.data);
            this.form.name = null;
          })
          .catch(err => console.log(err.response));
      },

      deleteCat(url_category, index) {
        axios
          .delete(`/api/category/${url_category}`)
          .then(res => this.categories.splice(index, 1))
          .catch(err => console.log(err.response));
      },

      editCat(index) {
        this.form.name = this.categories[index].name;
        this.createBtn = !this.createBtn;
        this.cat_url = this.categories[index].url_category;
      },

      updateCat(index) {
        axios.patch(`api/category/${this.cat_url}`, this.form).then(res => {
          this.categories.splice(index, 1);
          this.categories.unshift(res.data);
          this.form.name = null;
        });
      }
    }
  };
</script>

<style>
</style>
