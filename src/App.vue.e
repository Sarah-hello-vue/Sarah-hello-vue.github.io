<script setup>
import {ref} from 'vue'

const parentMessage = ref('Parent')
const items= ref([{message: 'Foo'}, {message: 'Bar'}])

</script>

<template>
<ol>
<li v-for="(item, index) in items">
<pre>
	{{parentMessage}} - {{index}} - {{item.message}}
</pre>
</li>
</ol>

</template>
