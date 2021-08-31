<?php 
include './db.php';
if(!empty($_POST['id'])){
    
$id = $_POST['id'];

$query = "DELETE FROM diagnostics WHERE id ='$id'";
$stmt = mysqli_query($connection, $query);
if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error to delete';
    }

}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>