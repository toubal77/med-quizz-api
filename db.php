<?php 

$local = 'localhost';
$root = 'root';
$passwordLocal = '';
$database = 'medquizz';


$connection = new mysqli($local,$root,$passwordLocal,$database);

// Check connection
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
}

?>