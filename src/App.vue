<script setup>
import {ref} from 'vue'
import category from "@/assets/category.json"
//const categories = ref({name: 'category.name'}, {url: 'category.image_url'} ,{code: 'category.code' })
const categories = ref(category)

</script>

<template>

<ol> 
<li v-for="(categoryEach, index) in categories">
<pre>
   {{index}}: {{categoryEach.name}},  {{categoryEach.image_url}}, {{categoryEach.code}}
</pre>
</li>
</ol>
</template>
