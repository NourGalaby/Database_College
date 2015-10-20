
<?php 
$mysqli = new mysqli("eu-cdbr-azure-west-c.cloudapp.net", "be4c54a5038438", "dd408c47", "mystudents");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
//echo $mysqli->host_info . "\n";

?>
