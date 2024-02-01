<script setup>
import {ref } from 'vue'

let id = 0
const newTodo = ref('')
const todos = ref([
 {id: id++, issue: 'Backlog'}, {id: id++, issue: 'Todo' },
 {id: id++, issue: 'Going Hawaii'}
])
                              
function addTodo() {
 todos.value.push({id: id++,
 issue: newTodo.value});
 newTodo.value = '';
}
function removeTodo(item) {
todos.value = todos.value.filter(todo => todo.id !== item.id) 
}
</script>
<template>
<form @submit.prevent="addTodo">
 <input v-model="newTodo">
  <button> add  </button>
</form>
<ul>
 <li v-for = "todo in todos">
  {{todo.issue}} - <button @click = "removeTodo(todo)"> remove  </button>
 </li>
</ul>
</template>










