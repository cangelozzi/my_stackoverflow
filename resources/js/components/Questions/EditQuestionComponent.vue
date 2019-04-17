<template>
  <v-container>
    <v-form @submit.prevent="updateQuestion">
      <v-text-field
        v-model="form.title"
        label="Question Title"
        type="text"
        required
      ></v-text-field>

      <markdown-editor v-model="form.body"></markdown-editor>

      <v-card-actions>

        <v-btn
          icon
          small
          @click="goBack"
        >
          <v-icon>arrow_back</v-icon>
        </v-btn>

        <v-btn
          type="submit"
          color="#48eae7"
        >Edit</v-btn>
      </v-card-actions>

    </v-form>
  </v-container>
</template>

<script>
  export default {
    props: ["question"],
    data() {
      return {
        form: {
          title: null,
          body: null
        }
      };
    },
    created() {
      this.form = this.question; // get question data and pre populate form
    },
    methods: {
      goBack() {
        EventBus.$emit("back");
      },
      updateQuestion() {
        axios
          .patch(`/api${this.form.path}`, this.form)
          .then(res => this.goBack())
          .catch(err => console.log(err.response));
      }
    }
  };
</script>

<style>
</style>
