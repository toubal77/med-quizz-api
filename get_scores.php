<?php 
include './db.php';
if(
!empty($_POST['idUser'])){
$idUser = $_POST['idUser'];

$query = "SELECT * FROM scores WHERE id_user = '$idUser'";
$stmt = mysqli_query($connection,$query);

if($stmt){
    $data['status'] = true;
    $data['scores'] = array();
    while($row = mysqli_fetch_array($stmt)){
       $scores['id'] = $row['id'];
       $scores['name'] = $row['module'];
       $scores['semester'] = $row['semester'];
       $scores['annee'] = $row['annee'];
       $scores['corr'] = $row['correct'];
       $scores['incorr'] = $row['incorrect']; 
        
       array_push($data['scores'],$scores);
    }
}else{
    $data['status'] = false;
    $data['message'] = 'error d\'avoir tout les scores';
}


}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>