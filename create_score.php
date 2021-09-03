<?php 
include './db.php';
if(!empty($_POST['name'])&& 
!empty($_POST['semester'])
&&!empty($_POST['annee'])
&& !empty($_POST['corr'])
&& !empty($_POST['incorr'])
&& !empty($_POST['idUser'])){
$name = $_POST['name'];
$semester = $_POST['semester'];
$annee = $_POST['annee'];
$corr = $_POST['corr'];
$incorr = $_POST['incorr']; 
$idUser = $_POST['idUser'];
    $query = "INSERT INTO scores (id_user,module,semester,annee,correct,incorrect)
    VALUES('$idUser','$name','$semester','$annee','$corr','$incorr')";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error d\insertion scores';
    }

}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>