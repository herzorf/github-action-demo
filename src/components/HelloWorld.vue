<script setup lang="ts">
import { ref } from 'vue'

defineProps<{ msg: string }>()

const count = ref(0)
</script>

<template>
  <h1>github action + docker + 腾讯云实现自动化部署</h1>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
