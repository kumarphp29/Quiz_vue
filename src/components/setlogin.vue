<template>
 <div class="container mb-5"> 
  </div>
</template>

<script>
export default {
  name: 'setLogin',
 
  methods:{
    
    
  },
  mounted () {
    sessionStorage.setItem('mailid','topic');
    window.location.href="topic"
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
