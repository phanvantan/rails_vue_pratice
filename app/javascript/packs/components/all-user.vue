<template lang="html">
  <tr :for="`user-${user.id}`">
    <td><span v-text="user.name"></span></td>
    <td><span v-text="user.email"></span></td>
    <td><span v-text="user.actived"></span></td>
  </tr>
</template>
<script>
  export default {
    props: ['user']
  }
</script>
