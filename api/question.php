<?php 
include('includes/db.php');
if(isset($_POST['numQuestion'])){
    if($_POST['numQuestion']<5){
        $question_level = 'Beginner';
    }
    else if($_POST['numQuestion']<8){
        $question_level = 'Intermediate';
    }
    else{
        $question_level = 'Professional';
    }
}
$qry = '';
if(!empty($_POST['questionid']) && $_POST['questionid']!='undefined'  && $_POST['questionid']!='null'){
    $qry = " and id = '".$_POST['questionid']."' ";
}
if(!empty($_POST['answerQuestion']) && $_POST['answerQuestion']!='undefined' && $_POST['answerQuestion']!='null'){
    $qry .= " and id not in( ".$_POST['answerQuestion'].") ";
}
$sql = "SELECT id,questionname,option1,option2,option3,option4,correctanswer FROM question where questionlevel = '".$question_level."' and topic = '".$_POST['topic']."' ".$qry." ORDER BY RAND() desc limit 0,1 ";
$query = $mysqli -> query($sql);

$row = $query -> fetch_all(MYSQLI_ASSOC);
$result = json_encode($row,true);
echo  $result;
?>