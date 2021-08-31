<?php 
include './db.php';

$query = "SELECT * FROM diagnostics";
$stmt = mysqli_query($connection,$query);
if($stmt){
    $data['status'] = true;
    $data['diag'] = array();
    while($row = mysqli_fetch_array($stmt)){
       $diagnostics['id'] = $row['id'];
       $diagnostics['title'] = $row['title'];
       $diagnostics['description'] = $row['description'];
       $diagnostics['image'] = $row['imageUrl'];
       array_push($data['diag'],$diagnostics);
    }
}else{
    $data['status'] = false;
    $data['message'] = 'error d\'avoir tout les diagnostics';
}
header('Content-Type: application/json');
echo json_encode($data, JSON_PRETTY_PRINT);

?>