<?php 
include './db.php';
if(!empty($_POST['title'])&& 
!empty($_POST['description'])
&&!empty($_POST['image'])){
$title = $_POST['title'];
$description = $_POST['description'];
$imageDiag = $_POST['image'];

$query = "SELECT * FROM diagnostics WHERE title = '$title' AND description = '$description' AND imageUrl = '$imageDiag'";
$stmt = mysqli_query($connection, $query);
if(mysqli_num_rows($stmt) != 0){
    $data['status'] = false;
    $data['message'] = 'diagnostic ' . $title . ' existe deja';
}else{
    $query = "INSERT INTO diagnostics (id,title,description,imageUrl)
    VALUES(NULL,'$title','$description','$imageDiag')";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error d\insertion du diagnostic';
    }
}
}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>