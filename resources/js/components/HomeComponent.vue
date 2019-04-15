<template>
  <v-container
    fluid
    grid-list-md
  >
    <v-layout
      row
      wrap
    >
      <v-flex xs8>
        <questioncomponent
          v-for="question in questions"
          :key="question.title"
          :question=question
        ></questioncomponent>
      </v-flex>
      Sidebar
    </v-layout>
  </v-container>
</template>

<script>
  import questioncomponent from "./QuestionComponent";
  export default {
    data() {
      return {
        questions: {}
      };
    },

    created() {
      axios
        .get("/api/question")
        .then(res => (this.questions = res.data.data))
        .catch(err => console.log(err.response.data));
    },

    components: {
      questioncomponent
    }
  };
</script>

<style>
</style>
