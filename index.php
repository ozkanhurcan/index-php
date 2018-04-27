<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
   <!-- <script type="text/javascript" src="googlemaps.js"></script>-->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBr-OuoSpWjHlZ23wBzpFRZbFXvN0RWkJE&callback=initMap">
    </script>
   <script src="js/google-maps.js"></script> 
  </head>
  <body>
    <div id="container">
    <h1 style="text-align: center;">Yakınımda Restoran Ara </h1>

    <div id="map"></div>

<?php
  include 'near.php';

    $fp = fopen('yakin.json', 'w');
    fwrite($fp, json_encode($yakin));
    fclose($fp);
    for($z=0;$z<count($yakin);$z++){
    echo "<div class='data'>
    <img src='".$yakin[$z]['imgloc']."'><p>
    <h2>".$yakin[$z]['restoran']."</h2><ul><li>".implode("<li>",$yakin[$z]["menu"])."</ul><ul>".implode("<li>",$yakin[$z]["fiyat"])."</ul></li></li></p></div>"."<h4 class='id'>".$yakin[$z]["id"]."</h4>";
  }
 ?>
    </div>
  </body>
</html>
