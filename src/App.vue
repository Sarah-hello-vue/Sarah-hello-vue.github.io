<script setup>
import {ref} from 'vue'
let id = 4
const show = ref(true)
const list = ref([1,2,3])
function toggle() {
 show.value = ! show.value
}
function add() {
 list.value.push(id++);
}
function remove() {
 list.value.pop();
}
function reverse() {
 list.value = list.value.reverse();
}
</script>

<template>
<button @click ="toggle"> List rendering on/off </button>
<button @click="add"> add </button>
<button @click="remove"> remove </button>
<button @click = "reverse"> reverse </button>

<ul v-if="show && list.length">
	<li v-for= "item of list"> {{item}} </li>
</ul>
<p v-else-if="!show && list.length"> List is not empty, but hidden </p>
<p v-else> List is empty</p>

</template>
