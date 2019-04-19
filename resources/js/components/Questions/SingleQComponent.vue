<template>

  <section>
    <editquestion
      :question=question
      v-if="editquestion"
    ></editquestion>
    <v-card v-else>
      <v-container
        fluid
        v-if="question"
      >
        <v-card-title>
          <section>
            <div class="headline">
              {{ question.title }}
            </div>
            <span class="grey--text">{{ question.user }} - {{ question.created_at }}</span>
          </section>
          <v-spacer></v-spacer>
          <v-btn color="#fc285d">{{question.reply_count}} replies</v-btn>
        </v-card-title>
        <v-card-text v-html="body"></v-card-text>

        <v-card-actions v-if="own">
          <v-btn
            icon
            small
            @click="editMe"
          >
            <v-icon color="blue">edit</v-icon>
          </v-btn>
          <v-btn
            icon
            small
            @click="deleteMe"
          >
            <v-icon color="red">delete</v-icon>
          </v-btn>
        </v-card-actions>

      </v-container>
    </v-card>

    <v-container>
      <replycomponent
        :question='question'
        v-if="question"
      ></replycomponent>

      <newreply
        :question_slug=question.path
        v-if="question"
      ></newreply>
    </v-container>

  </section>

</template>

<script>
  import editquestion from "./EditQuestionComponent";
  import replycomponent from "../Replies/RepliesComponent.vue";
  import newreply from "../Replies/CreateReplyComponent.vue";
  export default {
    components: {
      editquestion,
      replycomponent,
      newreply
    },
    data() {
      return {
        question: null,
        own: null,
        editquestion: false
      };
    },

    computed: {
      body() {
        return md.parse(this.question.body);
      }
    },

    created() {
      this.getQuestion();
      EventBus.$on("back", () => {
        this.editquestion = false;
      });
    },

    methods: {
      deleteMe() {
        axios
          .delete(`/api/question/${this.$route.params.q_single}`)
          .then(res => this.$router.push("/home"))
          .catch(err => console.log(err.response));
      },

      getQuestion() {
        axios
          .get(`/api/question/${this.$route.params.q_single}`)
          .then(res => {
            this.question = res.data.data;
            this.own = User.own(this.question.user_id);
          })
          .catch(err => console.log(err.response.data));
      },

      editMe() {
        this.editquestion = true;
      }
    }
  };
</script>

<style>
</style>
