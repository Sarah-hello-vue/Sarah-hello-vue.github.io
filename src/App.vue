<script setup>
import {ref, onMounted} from 'vue'
const count = ref({
cnt: 0,
name: "KIM",
})

function increment() {
count.value.cnt += 2;
count.value.name = count.value.name.split('').reverse().join('')
}

onMounted(() => console.log(`The initial count is ${count.value}.`)
)


</script>

<template>
	 <button @click="increment">Count is : {{count.cnt }} {{count.name}} </button>

	
</template>

<style scoped>
button {
font-weight: bold;
}

</style>
