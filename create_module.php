<?php 
include './db.php';
if(!empty($_POST['name'])&& 
!empty($_POST['semester'])
&&!empty($_POST['annee'])
&&!empty($_POST['image'])){
$name = $_POST['name'];
$semester = $_POST['semester'];
$annee = $_POST['annee']; 
$imageMod = $_POST['image'];

$query = "SELECT * FROM modules WHERE module = '$name' AND semester = '$semester' AND annee = '$annee'";
$stmt = mysqli_query($connection, $query);
if(mysqli_num_rows($stmt) != 0){
    $data['status'] = false;
    $data['message'] = 'module ' . $name . ' existe deja';
}else{
    $query = "INSERT INTO modules (module,semester,annee,image_mod)
    VALUES('$name','$semester','$annee','$imageMod')";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error d\insertion du module';
    }
}
}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>