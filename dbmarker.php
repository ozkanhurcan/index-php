<?php
include 'near.php';


$jsonmenu=json_encode($restoran);
print_r($jsonmenu);
$conn->close();
 ?>
