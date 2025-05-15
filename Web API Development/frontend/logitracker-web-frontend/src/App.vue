<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Navbar from './components/Layout/Navbar.vue';
import Footer from './components/Layout/Footer.vue';
</script>

<template>
  <div>
    <div>
      <Navbar />
    </div>
    <div class="min-h-[80vh]">
      <RouterView />
    </div>
    <div>
      <Footer></Footer>
    </div>
  </div>

</template>

<style scoped></style>
