<script setup>
import {ref} from 'vue'
import proverb from "@/assets/proverbs.json"
//const categories = ref([{name: 'category.name'}, {url: 'category.image_url'} ,{code: 'category.code' }])
const topic = ref('Amharic proverbs')
const proverbs  = ref(proverb['Amharic proverbs'])

</script>

<template>

{{topic}}
<ol> 
<li v-for="(proverbEach, index) in proverbs">
<pre>
   {{proverbEach['Ge\'ez Writing']}} =  {{proverbEach['English Equivalent Proverbs']}}
   
</pre>
</li>
</ol>
</template>
