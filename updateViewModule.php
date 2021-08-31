<?php 
include './db.php';
if(!empty($_POST['id_mod'])){
$id_mod = $_POST['id_mod'];
$query = "SELECT * FROM modules WHERE id= '$id_mod'";
$stmt = mysqli_query($connection, $query);
$row = mysqli_fetch_array($stmt);
$viewModule = $row['view'];
$viewModule = $viewModule + 1;
    
$query = "UPDATE modules SET view = '$viewModule' WHERE id ='$id_mod'";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error update view module';
    }


}else{
     $data['status'] = false;
     $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>