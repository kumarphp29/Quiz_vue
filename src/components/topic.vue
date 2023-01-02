<template>
 <div class="container mb-5"> 
  <form @submit.prevent="onSubmit" class="add-form" ref="form">
    <div class="row"> 
      <div class="col-12"> 
        <div class="col-md-1"></div>
        <div class="col-md-11">
          <p class="fw-bold"> {{ question }}<a href="/" class="float-right">Logout</a></p>
          </div>
          <div class="col-md-12"> 
              <div v-for="topic in topics" :key="topic.id">
                <div class="col-md-1">
                  <input type="radio" name="topic" v-model="formTopic" :value="topic.id"> 
                </div>
                <div class="col-md-11">
                  <label for="one" class="box first"> 
                    
                              {{topic.topic}}
                  </label> 
                </div>
              </div>
          </div>
        </div> 
        <div class="col-12"> 
          <div class="d-flex justify-content-center"> 
            <button class="btn btn-primary px-4 py-2 fw-bold"> Start</button> 
          </div> 
        </div> 
      </div>
      </form>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'QuizTopic',
  props: {
    
  },
  data(){
    return{
      question:'Please Select Subject',
      topics : null,
      formTopic:null
    }
  },
  methods:{
    onSubmit:function(e){
      e.preventDefault()
      if(this.formTopic == null){
        alert('Please Select Subject');
      }
      else{
        sessionStorage.setItem('topic', this.formTopic);
        window.location.href = 'question';
        
      }
    },
    
  },
  mounted () {
    if(sessionStorage.getItem('mailid')== null || sessionStorage.getItem('mailid')== 'undefined' || sessionStorage.getItem('mailid')== ''){
        window.location.href = '/';
      }
    axios.get('topic.php').then(response => {this.topics = response.data;console.log(this.topics);})
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
