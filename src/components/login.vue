<template>
  <div class="col-md-12">
    <h1>{{msg}}</h1>
   <div>
    <a class="btn btn-lg btn-google btn-block text-uppercase btn-outline" :href="loginurl">
      
      <img src="@/assets/gmail.png" style="width:20%" /> Login Using Google</a>
</div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'UserLogin',
  props: {
   
  },
  data(){
    return {
      msg:'Quiz',
      loginurl:''
    }
  },
  mounted () {
    sessionStorage.clear()
    axios.get('login.php').then(response => {
      this.loginurl = response.data+'&red_url='+window.location.origin;
    })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
