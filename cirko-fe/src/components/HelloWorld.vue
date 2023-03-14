<template id="app">
  <h2>Hello world!</h2>
  <h3>Message from backend {{ messageFromBackend() }}</h3>
</template>

<script setup>
import axios from 'axios'

async function messageFromBackend() {
  const response = await axios({
    method: 'get',
    url: '/service/initialConnection'
  })

  console.log(response);
  return response.data;
}


</script>