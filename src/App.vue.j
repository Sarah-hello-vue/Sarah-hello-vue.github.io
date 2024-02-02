<script setup>
import {reactive, computed, ref} from 'vue'

const author = reactive( {
name: 'John Doe',
books : [1,2,3]
})

const publishedBooksMessage = computed(() => {return author.books.length>2? 'yes' : 'no' })

</script>


<template>
<span>💩) </span>
<span>{{ publishedBooksMessage}} </span>
<div>computed↓ </div>
<div>{{author.books.length>2? 'yas' : 'nop'}}</div> 
</template>
