<template>
  <div>
    <h1>All User</h1>
    <table class="responsive-table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Actived</th>
        </tr>
      </thead>
      <tbody>
        <all-user v-for="user in unactivedUser" :key="user.id" :user="user"/>
      </tbody>
    </table>
  </div>
</template>
<script>
  import axios from 'axios'
  import AllUser from '../components/all-user'

  export default {
    data (){
      return {
        users: []
      }
    },

    components: { AllUser },

    computed: {
      unactivedUser: function () {
        return this.users.filter(user => !user.actived)
      }
    },

    mounted (){
      this.fetchUsers()
    },

    methods: {
      fetchUsers: function () {
        axios.get('/api/users').then(
        response => {
          this.users = response.data.users
        },
        error => alert(error)
        )
      }
    }
  }
</script>
