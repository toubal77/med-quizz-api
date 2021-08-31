<?php 
include './db.php';
if(!empty($_POST['name'])&& 
!empty($_POST['semester'])
&&!empty($_POST['annee'])
&& !empty($_POST['image'])
&&!empty($_POST['id_mod'])){
$name = $_POST['name'];
$semester = $_POST['semester'];
$annee = $_POST['annee']; 
$id_mod = $_POST['id_mod'];
$image = $_POST['image'];
$query = "SELECT * FROM modules WHERE id= '$id_mod'";
$stmt = mysqli_query($connection, $query);
if(mysqli_num_rows($stmt) != 0){
    $query = "UPDATE modules SET module ='$name',semester='$semester',annee='$annee', image_mod = '$image' WHERE id ='$id_mod'";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error d\insertion du module';
    }
}else{
    $data['status'] = false;
    $data['message'] = 'module ' . $name . ' existe pas';
}

}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>