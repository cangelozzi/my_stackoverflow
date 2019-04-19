<template>
  <div>
    <markdown-editor v-model="reply.reply"></markdown-editor>
    <v-card-actions>
      <v-btn
        icon
        small
        @click="goBack"
      >
        <v-icon>arrow_back</v-icon>
      </v-btn>
      <v-btn
        color="blue"
        @click="updatereply()"
      >Save
      </v-btn>
    </v-card-actions>
  </div>
</template>

<script>
  export default {
    props: ["reply", "question"],
    methods: {
      goBack() {
        EventBus.$emit("closeEdit");
      },
      updatereply() {
        console.log(`/api${this.question.path}/reply/${this.reply.id}`);
        axios
          .patch(`/api${this.question.path}/reply/${this.reply.id}`, {
            body: this.reply.reply
          })
          .then(res => {
            this.goBack();
          })
          .catch(err => console.log(err.response));
      }
    }
  };
</script>

<style>
</style>
