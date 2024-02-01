<script setup>
import {ref} from 'vue'
import Child from './components/Child.vue'

const pocketMoney = ref('당신에게 퇴근을 선물할께요...<📧>!')

</script>

<template>
<Child :pocketMoney = "pocketMoney" />
</template>
