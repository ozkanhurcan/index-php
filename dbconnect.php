<?php
$servername="localhost";
$username="root";
$pass="";
$dbname="markerdb";
$conn = new mysqli($servername,$username,$pass,$dbname);
$conn->set_charset("utf8");

if ($conn->connect_error) {

 die("Connection failed: " . $conn->connect_error);
}
?>
