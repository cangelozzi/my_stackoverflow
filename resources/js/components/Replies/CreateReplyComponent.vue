<template>
  <div class="mt-4">
    <h1>Reply</h1>
    <markdown-editor v-model="body"></markdown-editor>
    <v-btn
      type="submit"
      color="#91c6c6"
      @click="replyIt"
    >Reply</v-btn>
  </div>
</template>

<script>
  export default {
    props: ["question_slug"],
    data() {
      return {
        body: null
      };
    },

    methods: {
      replyIt() {
        console.log(this.question_slug);
        axios
          .post(`/api${this.question_slug}/reply`, { body: this.body })
          .then(res => {
            this.body = "";
            EventBus.$emit("newReply", res.data.reply);
            window.scrollTo(0, 0);
          })
          .catch(err => console.log(err.response));
      }
    }
  };
</script>

<style>
</style>
