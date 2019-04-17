<template>
  <v-container>
    <form @submit.prevent="askQuestion">
      <v-text-field
        v-model="form.title"
        label="Question Title"
        type="text"
        required
      ></v-text-field>

      <v-select
        :items="categories"
        item-text="name"
        item-value="id"
        v-model="form.category_id"
        label="Category"
      ></v-select>

      <markdown-editor v-model="form.body"></markdown-editor>

      <v-btn
        type="submit"
        color="#fc285d"
      >Ask</v-btn>
    </form>
  </v-container>
</template>

<script>
  export default {
    data() {
      return {
        form: {
          title: null,
          category_id: null,
          body: null
        },
        categories: [],
        errors: {}
      };
    },

    created() {
      axios
        .get("/api/category")
        .then(res => (this.categories = res.data))
        .catch(err => console.log(err));
    },

    methods: {
      askQuestion() {
        axios
          .post("/api/question", this.form)
          .then(res => this.$router.push(res.data.path)) // path comes from response from store controller method
          .catch(err => (this.errors = err.response.data.message));
      }
    }
  };
</script>

<style>
</style>
