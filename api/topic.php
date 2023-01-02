<?php 
include('includes/db.php');
$sql = "SELECT topic,id FROM subject ORDER BY topic";
$query = $mysqli -> query($sql);

$row = $query -> fetch_all(MYSQLI_ASSOC);
$result = json_encode($row,true);
echo  $result;
?>