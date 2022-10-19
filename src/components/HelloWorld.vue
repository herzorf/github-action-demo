<script setup lang="ts">
import { ref } from 'vue'

defineProps<{ msg: string }>()

const count = ref(0)
</script>

<template>
  <h1>你就是个大傻逼💩</h1>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
