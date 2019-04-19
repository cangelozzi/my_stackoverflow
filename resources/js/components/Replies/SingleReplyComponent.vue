<template>
  <div class="mt-3">
    <v-card>
      <v-card-title>
        <div class="headline">{{data.user}}</div>
        <div class="ml-2">said {{data.created_at}}</div>
      </v-card-title>

      <editreply
        :reply=data
        :question=question
        v-if="letsEdit"
      ></editreply>

      <v-card-text
        v-else
        v-html="reply"
      ></v-card-text>

      <div v-if="!letsEdit">
        <v-card-actions v-if="belongsTo">
          <v-btn
            icon
            small
            @click="editreply()"
          >
            <v-icon color="blue">edit</v-icon>
          </v-btn>
          <v-btn
            icon
            small
            @click="deletereply()"
          >
            <v-icon color="red">delete</v-icon>
          </v-btn>
        </v-card-actions>
      </div>

    </v-card>
  </div>
</template>

<script>
  import editreply from "./EditReplyComponent";
  export default {
    props: ["data", "index", "question"],
    components: {
      editreply
    },
    data() {
      return {
        letsEdit: false
      };
    },
    created() {
      EventBus.$on("closeEdit", () => {
        this.letsEdit = false;
      });
    },
    computed: {
      belongsTo() {
        return User.own(this.data.user_id);
      },
      reply() {
        return md.parse(this.data.reply);
      }
    },
    methods: {
      deletereply() {
        EventBus.$emit("deletereply", this.index);
      },
      editreply() {
        this.letsEdit = true;
      }
    }
  };
</script>

<style>
</style>
