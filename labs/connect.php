
<?php 
$mysqli = new mysqli("us-cdbr-azure-southcentral-e.cloudapp.net", "b42b6620a25831", "fc38142e", "ssp");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
//echo $mysqli->host_info . "\n";

?>
