<script setup>
import {ref, onUpdated, onMounted, onBeforeUpdate} from 'vue'
const count = ref(0)
export default {
setup() {
onMounted(function() {
console.log(`onMounted called`)
})
,
onUpdated(function() {
console.log(`onUpdated called`)
})
,
onBeforeUpdate(function() {
console.log(`onBeforeUpdate called`)
})

},

mounted() {
console.log(`mounted called`)
}
}
</script>

<template>
<button id="count" @click = "count++"> {{count}} </button>
</template>
