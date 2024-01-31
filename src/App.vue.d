<script setup>
import {ref} from 'vue'

const awesome = ref(true)
</script>

<template>
	<button @click = "awesome = !awesome">toggle</button>
	<h1 v-if = "awesome">Vue is awesome!</h1>
	<h1 v-else>Oh no 😥 </h1>


	<h4 v-if="awesome">O TRUE</h4>
	<h4 v-show="awesome">X FALSE</h4>
</template>

<style scoped>
button {
	
	position: fixed;
	left : 100px;;	
	top: 50px;

}

</style>
