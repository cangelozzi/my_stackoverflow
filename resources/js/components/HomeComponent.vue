<template>
  <v-container
    fluid
    grid-list-md
  >
    <v-layout
      row
      wrap
    >
      <v-flex xs10>
        <questioncomponent
          v-for="question in questions"
          :question=question
          :key="question.title"
        ></questioncomponent>
      </v-flex>
      <v-flex xs2>
        <sidebarcomponent class="side"></sidebarcomponent>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
  import questioncomponent from "./Questions/QuestionComponent";
  import sidebarcomponent from "./SidebarComponent.vue";
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
      questioncomponent,
      sidebarcomponent
    }
  };
</script>

<style scoped>
.container.fluid {
  max-width: 80%;
}
.side {
  width: 115%;
}
</style>
