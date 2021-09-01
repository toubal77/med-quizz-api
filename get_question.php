<?php 
include './db.php';

$query = "SELECT * FROM questions";
$stmt = mysqli_query($connection,$query);
if($stmt){
    $data['status'] = true;
    $data['questions'] = array();
    while($row = mysqli_fetch_array($stmt)){
       $questions['id'] = $row['id_qcm'];
       $questions['name'] = $row['module'];
       $questions['semester'] = $row['semester'];
       $questions['annee'] = $row['annee'];
       $questions['question'] = $row['qcm'];
       $questions['answer1'] = $row['answer1'];
       $questions['resp1'] = $row['resp1'];
       $questions['answer2'] = $row['answer2'];
       $questions['resp2'] = $row['resp2'];
       $questions['answer3'] = $row['answer3'];
       $questions['resp3'] = $row['resp3'];
       $questions['answer4'] = $row['answer4'];
       $questions['resp4'] = $row['resp4'];
       $questions['answer5'] = $row['answer5'];
       $questions['resp5'] = $row['resp5'];
       $questions['explication'] = $row['explication'];
       array_push($data['questions'],$questions);
    }
    
}else{
    $data['status'] = false;
    $data['message'] = 'error d\'avoir tout les module';
}
header('Content-Type: application/json');
echo json_encode($data, JSON_PRETTY_PRINT);

?>