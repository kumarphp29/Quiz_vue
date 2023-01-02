<template>
 <div class="container mb-5"> 
    <div class="row">
      <div class="col-md-12">
        <h1>Quiz</h1>
        <p>Your Socre: {{ MyScore }}/10</p>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  name: 'MyScore',
  props: {
    
  },
  data(){
    return{
      MyScore:sessionStorage.getItem('score'),
      
    }
  },
  methods:{
    
    
  },
  mounted () {
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1{
  font-size: 50px;
}
</style>