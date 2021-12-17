<template lang="html">
  <header class="text-white w-full h-[60px] min-h-[60px] px-4 z-10 flex items-center border-b border-white border-opacity-5">

    <div class="relative flex flex-shrink-0 flex-grow-0 justify-between items-center w-full gap-3 h-full">
        <div>
          <router-link to='/'>Home</router-link>

        </div>
      <div>
        <span>Profile</span>
      </div>
    </div>
  </header>

</template>

<script>
export default {
  name:'Header'
}
</script>

<style lang="css" scoped>

</style>
