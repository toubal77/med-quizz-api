<?php 
include './db.php';
if(!empty($_POST['title'])&& 
!empty($_POST['description'])
&&!empty($_POST['id_diag'])
&&!empty($_POST['image'])){
$title = $_POST['title'];
$description = $_POST['description'];
$imageDiag = $_POST['image'];
$idDiag = $_POST['id_diag'];

$query = "SELECT * FROM diagnostics WHERE id= '$idDiag'";
$stmt = mysqli_query($connection, $query);
if(mysqli_num_rows($stmt) != 0){
    $query = "UPDATE diagnostics SET title ='$title',description='$description',imageUrl = '$imageDiag' WHERE id ='$idDiag'";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error d\insertion du diagnoctic';
    }
}else{
    $data['status'] = false;
    $data['message'] = 'diagnoctic ' . $title . ' existe pas';
}

}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>