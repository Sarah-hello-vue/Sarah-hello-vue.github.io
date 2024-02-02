<script setup>
import {ref, watchEffect} from 'vue'
import proverb from "@/assets/proverbs.json"
const topic = ref('Amharic proverbs')
const proverbs  = ref(proverb['Amharic proverbs'])
function onSearch(item) {
return item['English Equivalent Proverbs'].toLowerCase().includes('you')
}
const filteredProverbs = ref([])

watchEffect(() => {
filteredProverbs.value = proverbs.value.filter(onSearch)
})

</script>

<template>

{{topic}}
<ol> 
<li v-for="(proverbEach, index) in filteredProverbs":key="index" >
<pre>
   {{proverbEach['Ge\'ez Writing']}} =  {{proverbEach['English Equivalent Proverbs']}}
   
</pre>
</li>
</ol>
</template>
