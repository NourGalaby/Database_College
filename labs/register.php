<?php 
session_start(); 
include("connect.php");

$username = $_POST["form-first-name"];
$password = $_POST["form-pass"];
$email= $_POST['form-email'];



if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}
if(mysqli_query($mysqli,"INSERT INTO students (username,password,email) VALUES('$username','$password','$email')")==TRUE ){

echo "registration successful !!";
}else {

echo "registration Failed, the user name may be taken";
}

   
mysqli_close($mysqli);


  
 ?>