<template>
  <div
    class="
      text-[2rem]
      float-left
      font-extrabold
      text-white
      mb-3
      tracking-tighter
    "
  >
    {{ welcomeMessage }}
  </div>
</template>

<script>
export default {
  computed: {
    welcomeMessage() {
      const d = new Date();
      const hours = d.getHours();
      switch (true) {
        case hours >= 6 && hours < 10:
          return "Good Morning";
        case hours >= 10 && hours < 13:
          return "Hello there";
        case hours >= 13 && hours < 17:
          return "Good Afternoon";
        case hours >= 17 && hours <= 24:
          return "Good Evening";
        default:
          return "Howdy";
      }
    },
  },
};
</script>