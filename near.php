<?php 
include 'dbconnect.php';
header("Content-type: text/html; charset=utf-8;");
$sqlrest = "SELECT * FROM restoranlar";

$rest = $conn->query($sqlrest);

if ($rest->num_rows >0) {
 while($row[] = $rest->fetch_assoc()) {
  $restoran = $row;
  $json = json_encode($restoran);
 }
} else {
 echo "No Results Found.";
}
//print_r($json);
$sqlmenu = "SELECT yemek_adi,fiyati FROM menu";

$menu = $conn->query($sqlmenu);

if ($menu->num_rows >0) {

	while($menurows[] = $menu->fetch_assoc()) {

		$item = $menurows;
	}
}
else {
	echo "No Results Found.";
}
$y=0;
$z=0;
for($i=0;$i<count($item);$i++){
	if($z==4){
		$z=0;
	}
	if($i%4==0 && $i!=0){
		$y++;
	}
	$restoran[$y]["id"]=$y+1;
	$restoran[$y]["menu"][$z]=$item[$i]["yemek_adi"];
	$restoran[$y]["fiyat"][$z]=$item[$i]["fiyati"];
	$z++;
}   //array('lng' => 41.0133722, 'lat' => 28.9738776)
    include 'circle.php';
	//print_r($yakin);
	/*for($i=0;$i<count($yakin);$i++){
		$latlng[$i]["lat"]= $yakin[$i]["latitude"];
		$latlng[$i]["lng"]= $yakin[$i]["longitude"];
	}*/
 ?>
