<?php 
session_start();
include("connect.php");
$dep= $_POST['dep'];

echo "wait..";
$_SESSION['dep']=$dep;
$username=$_SESSION['username'];

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}
if(mysqli_query($mysqli,"UPDATE `lab5`.`user` SET `department_id` = $dep WHERE `user`.`username` = '$username';")==TRUE ){


 echo ' <meta http-equiv="refresh" content="1;url=courses.php" />';
}else{
echo"error Try again"; 

}


 ?>