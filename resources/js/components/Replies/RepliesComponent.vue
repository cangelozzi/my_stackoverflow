<template>
  <div>
    <singlereply
      v-for="(reply, index) in questionreplies"
      :key="reply.id"
      v-if=[replies]
      :index=index
      :question=question
      :data="reply"
    ></singlereply>
  </div>
</template>

<script>
  import singlereply from "./SingleReplyComponent";
  export default {
    props: ["question"],
    data() {
      return {
        questionreplies: this.question.replies
      };
    },
    components: {
      singlereply
    },
    created() {
      this.getEventReply();
    },
    methods: {
      getEventReply() {
        EventBus.$on("newReply", reply => {
          this.questionreplies.unshift(reply);
        });

        EventBus.$on("deletereply", index => {
          axios
            .delete(
              `/api${this.question.path}/reply/${this.questionreplies[index].id}`
            )
            .then(res => {
              this.questionreplies.splice(index, 1);
            })
            .catch(err => console.log(err.response));
        });
      }
    }
  };
</script>

<style>
</style>
