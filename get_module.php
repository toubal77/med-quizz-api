<?php 
include './db.php';
if(!empty($_POST['years'])){
    $years = $_POST['years'];
    
$query = "SELECT * FROM modules WHERE annee: '$years'";
$stmt = mysqli_query($connection,$query);
if($stmt){
    $data['status'] = true;
    $data['modules'] = array();
    while($row = mysqli_fetch_array($stmt)){
       $module['id'] = $row['id'];
       $module['name'] = $row['module'];
       $module['semester'] = $row['semester'];
       $module['image'] = $row['image_mod'];
       $module['annee'] = $row['annee']; 
       $module['view'] = $row['view']; 
       array_push($data['modules'],$module);
    }
}else{
    $data['status'] = false;
    $data['message'] = 'error d\'avoir tout les module';
}
}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
header('Content-Type: application/json');
echo json_encode($data, JSON_PRETTY_PRINT);

?>