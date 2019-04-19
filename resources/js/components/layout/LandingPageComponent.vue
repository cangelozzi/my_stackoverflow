<template>
  <v-app
    v-if="$route.path==='/' ? true : false"
    :dark="isDark"
  >
    <v-switch
      label="Try Dark Theme"
      color="#ea8f10"
      v-model="isDark"
    ></v-switch>
    <v-timeline>
      <v-timeline-item
        v-for="quote in quotes"
        :key="quote"
        color="#ea8f10"
        large
      >

        <v-card class="elevation-2">
          <v-card-title style="font-style: italic; font-size: 16px;">"{{quote.body}}"</v-card-title>
          <v-card-text class="headline">
            - {{quote.author}}
          </v-card-text>
        </v-card>
      </v-timeline-item>
    </v-timeline>
  </v-app>
</template>

<script>
  export default {
    data() {
      return {
        isDark: false,
        quotes: [
          {
            author: "John Woods",
            body:
              "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live."
          },
          {
            author: "Alan J. Perlis",
            body:
              "A language that doesn't affect the way you think about programming is not worth knowing."
          },
          {
            author: "Robert C. Martin",
            body: "Truth can only be found in one place: the code."
          },
          {
            author: "Camillo",
            body: "I like taking the complex and making it simple."
          }
        ]
      };
    }
  };
</script>

<style scoped>
.v-timeline {
  width: 80%;
  margin: 0 auto;
  bottom: 73px;
}
.v-input--selection-controls {
  margin-left: 22px;
}
</style>
