<script>
  export default {
    props: {
      index: {
        type: String,
        required: true,
      },
    },
  };
</script>

<template>
    <div>
      <h1>Article {{ index }}</h1>
      <div v-if="index === '1'">
        <p>This is the content of article 1.</p>
      </div>
      <div v-if="index === '2'">
        <p>This is the content of article 2.</p>
      </div>
      <div v-if="index === '3'">
        <p>This is the content of article 3.</p>
      </div>
      <div v-if="index === '4'">
        <p>This is the content of article 4.</p>
      </div>
    </div>
  </template>