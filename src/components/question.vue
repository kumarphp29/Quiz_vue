<template>
 <div class="container mb-5"> 
  <form @submit.prevent="onSubmit" class="add-form" ref="form">
    <div class="row"> 
      <div class="col-12"> 
        <div v-for="question in questions" :key="question.id">
          <p class="fw-bold"> {{numQuestion}} . {{ question.questionname }}</p>
         
          <div class="col-md-12"> 
                <div class="col-md-1">
                  <input type="radio" name="question" v-model="formQuestion" :value="question.option1">
                  
                </div>
                <div class="col-md-11">
                  <label for="one" class="box first">{{question.option1}}</label> 
                </div>
          </div>
          <div class="col-md-12"> 
                <div class="col-md-1">
                  <input type="radio" name="question" v-model="formQuestion" :value="question.option2"> 
                </div>
                <div class="col-md-11">
                  <label for="one" class="box first">{{question.option2}}</label> 
                </div>
          </div>
          <div class="col-md-12"> 
                <div class="col-md-1">
                  <input type="radio" name="question" v-model="formQuestion" :value="question.option3"> 
                </div>
                <div class="col-md-11">
                  <label for="one" class="box first">{{question.option3}}</label> 
                </div>
          </div>
          <div class="col-md-12"> 
                <div class="col-md-1">
                  <input type="radio" name="question" v-model="formQuestion" :value="question.option4"> 
                </div>
                <div class="col-md-11">
                  <label for="one" class="box first">{{question.option4}}</label> 
                </div>
          </div>
        </div>
        </div> 
        <div class="col-12"> 
          <div class="d-flex justify-content-center" v-if="numQuestion  < 10"> 
            <button class="btn btn-primary px-4 py-2 fw-bold" > Next</button> 
          </div> 
          <div class="d-flex justify-content-center" v-else> 
            <button class="btn btn-primary px-4 py-2 fw-bold"> Finish</button> 
          </div> 
        </div> 
      </div>
      </form>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'QuizQuestion',
  props: {
    
  },
  data(){
    return{
      questions:null,
      numQuestion:null,
      currentQuestion:null,
      formQuestion:null,
      questionid:null,
      ansQuestion:null,
      score:0,
    }
  },
  methods:{
    previous(){

    },
    onSubmit:function(e){
      e.preventDefault();
      if(sessionStorage.getItem('numQuestion')){
        this.numQuestion = parseInt(sessionStorage.getItem('numQuestion'));
      }
      else{
        this.numQuestion = 1;
      }
      if(sessionStorage.getItem(this.numQuestion)){
          this.currentQuestion = sessionStorage.getItem(this.numQuestion);
      }
      else{
        this.currentQuestion = null;
      }
      let headers = { 
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
      }
      axios.post('question.php',{
        questionid:this.currentQuestion,
        topic:sessionStorage.getItem('topic'),
        numQuestion:this.numQuestion,
      },
      { headers }
      ).then(response => {
        let rdata = response.data;
        let reqdata = rdata[0];
        if(reqdata.correctanswer == this.formQuestion){
            this.score = parseInt(this.score) + 1;
        }
        sessionStorage.setItem('score',this.score);
        if(sessionStorage.getItem('ansQuestion')){
          sessionStorage.setItem('ansQuestion',sessionStorage.getItem('ansQuestion')+','+this.currentQuestion)
        }
        else{
          sessionStorage.setItem('ansQuestion',this.currentQuestion)
        }
        if(parseInt(sessionStorage.getItem('numQuestion'))<10){
          let numQuestion1 = parseInt(sessionStorage.getItem('numQuestion')) +1;
          sessionStorage.setItem('numQuestion',numQuestion1)
        }
        else{
          window.location.href = 'score';
        }
        this.getquestion();
      })
    },
    getquestion(){
      if(sessionStorage.getItem('topic')== null || sessionStorage.getItem('topic')== 'undefined' || sessionStorage.getItem('topic')== ''){
        window.location.href = 'topic';
      }
      if(sessionStorage.getItem('numQuestion')){
        this.numQuestion = parseInt(sessionStorage.getItem('numQuestion'));
      }
      else{
        this.numQuestion = 1;
      }
      sessionStorage.setItem('numQuestion',this.numQuestion)
      if(sessionStorage.getItem(this.numQuestion)){
          this.currentQuestion = sessionStorage.getItem(this.numQuestion);
      }
      else{
        this.currentQuestion = null;
      }
      if(sessionStorage.getItem('ansQuestion')){
          this.ansQuestion = sessionStorage.getItem('ansQuestion');
      }
      else{
        this.ansQuestion = null;
      }
      let headers = { 
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
      }
      axios.post('question.php',{
        topic:sessionStorage.getItem('topic'),
        numQuestion:this.numQuestion,
        questionid:this.currentQuestion,
        answerQuestion:this.ansQuestion
      },
      { headers }
      ).then(response => {
        let rdata = response.data;
        let reqdata = rdata[0];
        this.questions = rdata;
        let questionid = reqdata.id;
        sessionStorage.setItem(this.numQuestion,questionid)
        console.log(rdata[0].id);
        
      })
    }
    
  },
  mounted () {
    if(sessionStorage.getItem('topic')== null || sessionStorage.getItem('topic')== 'undefined' || sessionStorage.getItem('topic')== ''){
        window.location.href = 'topic';
      }
   
    this.getquestion();
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
