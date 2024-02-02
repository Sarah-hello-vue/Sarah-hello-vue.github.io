<script setup>
import {ref} from 'vue'
let id = 4
const show = ref(true)
const list = ref([1,2,3])
</script>
<template>
<button @click ="show = !show"> List rendering on/off </button>
<button @click="list.push(id++)"> add </button>
<button @click="list.pop()"> remove </button>
<button @click = "list.reverse()"> reverse </button>

<ul v-if="show && list.length">
	<li v-for= "item of list"> {{item}} </li>
</ul>
<p v-else-if="!show && list.length"> List is not empty, but hidden </p>
<p v-else> List is empty</p>

</template>
