<?php 
include './db.php';
if(
    !empty($_POST['id_qcm'])&&
    !empty($_POST['module'])&& 
!empty($_POST['semester'])
&&!empty($_POST['annee'])&&
!empty($_POST['qcm'])
&& !empty($_POST['answer1'])
&& !empty($_POST['answer1resp'])
&& !empty($_POST['answer2'])
&& !empty($_POST['answer2resp'])
&& !empty($_POST['answer3'])
&& !empty($_POST['answer3resp'])
&& !empty($_POST['answer4'])
&& !empty($_POST['answer4resp'])
&& !empty($_POST['answer5'])
&& !empty($_POST['answer5resp'])
){
$id_qcm = $_POST['id_qcm'];
$module = $_POST['module'];
$semester = $_POST['semester'];
$annee = $_POST['annee'];
$qcm = $_POST['qcm'];
$answer1 = $_POST['answer1'];
$answer1resp = $_POST['answer1resp'];
$answer2 = $_POST['answer2'];
$answer2resp = $_POST['answer2resp'];
$answer3 = $_POST['answer3'];
$answer3resp = $_POST['answer3resp'];
$answer4 = $_POST['answer4'];
$answer4resp = $_POST['answer4resp'];
$answer5 = $_POST['answer5']; 
$answer5resp = $_POST['answer5resp'];

$query = "SELECT * FROM questions WHERE id_qcm= '$id_qcm'";
$stmt = mysqli_query($connection, $query);
if(mysqli_num_rows($stmt) != 0){
    $query = "UPDATE questions SET module ='$module',semester='$semester',annee='$annee',answer1='$answer1',resp1='$answer1resp',answer2='$answer2',resp2='$answer2resp',answer3='$answer3',resp3='$answer3resp',answer4='$answer3',resp4='$answer4resp',answer5='$answer5',resp5='$answer5resp' WHERE id_qcm ='$id_qcm'";
    $stmt = mysqli_query($connection, $query);
    if($stmt)
        $data['status'] = true;
    else{
        $data['status'] = false;
        $data['message'] = 'error d\insertion du module';
    }
}else{
    $data['status'] = false;
    $data['message'] = 'module ' . $qcm . ' existe pas';
}

}else{
    $data['status'] = false;
    $data['message'] = 'Veuillez entre des informations correctes';
}
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);

?>