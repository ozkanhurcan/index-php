<?php $mylatlng = array('lng' => 41.0133722, 'lat' => 28.9738776);
    $z=0;
	for($i=0;$i<count($restoran);$i++){
	if($mylatlng["lng"]+0.1>=$restoran[$i]["longitude"] && $mylatlng["lng"]-0.1<=$restoran[$i]["longitude"] && $mylatlng["lat"]+0.1>=$restoran[$i]["latitude"]&& $mylatlng["lat"]-0.1<=$restoran[$i]["latitude"]){
		$yakin[$z]["id"]=$z+1;
		$yakin[$z]["restoran"]=$restoran[$i]["restoran"];
		$yakin[$z]["latitude"] = $restoran[$i]["latitude"];
		$yakin[$z]["longitude"] = $restoran[$i]["longitude"];
		$yakin[$z]["imgloc"] = $restoran[$i]["imgloc"];
		for($y=0;$y<4;$y++){
		$yakin[$z]["menu"][$y] = $restoran[$i]["menu"][$y];
		$yakin[$z]["fiyat"][$y] = $restoran[$i]["fiyat"][$y];
		}
		$z++;
	}
	}
	 ?>
