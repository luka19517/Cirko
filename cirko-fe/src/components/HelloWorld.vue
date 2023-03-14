<template id="app">
  <h2>Hello world!</h2>
  <h3>Message from backend {{ messageFromBackend }}</h3>
</template>

<script setup>
import axios from 'axios'
import { ref } from "vue"

const messageFromBackend = ref();

async function loadMessage() {

  const response = await axios({
    method: 'get',
    url: 'http://localhost:8080/initialConnection'
  })

  console.log(response);
  messageFromBackend.value =  response.data;
}

loadMessage();

</script>