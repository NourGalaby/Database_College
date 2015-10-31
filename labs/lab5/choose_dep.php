<?php 
session_start();
include("connect.php");
$dep= $_POST['dep'];
echo $dep;

$_SESSION['dep']=$dep;
$username=$_SESSION['username'];
echo $username;
if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}
if(mysqli_query($mysqli,"UPDATE `lab5`.`user` SET `department_id` = $dep WHERE `user`.`username` = '$username';")==TRUE ){

echo "success";
 echo ' <meta http-equiv="refresh" content="3;url=courses.php" />';
}else{
echo"error Try again"; 

}


 ?>