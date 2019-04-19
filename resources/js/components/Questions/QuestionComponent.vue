<template>
  <v-card class="mt-2">
    <v-card-title primary-title>
      <div>
        <h3 class="headline mb-0">
          <router-link
            :to="question.path"
            style="text-decoration: none;"
          >
            {{question.title}}
          </router-link>
        </h3>
        <div class="grey--text">{{question.user}} - {{question.created_at}}</div>
      </div>
    </v-card-title>

    <v-card-text v-html="body">
    </v-card-text>
  </v-card>
</template>

<script>
  export default {
    props: ["question"],
    data() {
      return {};
    },
    computed: {
      body() {
        return md.parse(this.question.body);
      }
    }
  };
</script>

<style>
</style>
