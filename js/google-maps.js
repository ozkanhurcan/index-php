 function readTextFile(file, callback) {
      var rawFile = new XMLHttpRequest();
      rawFile.overrideMimeType("application/json");
      rawFile.open("GET", file, true);
      rawFile.onreadystatechange = function() {
        if (rawFile.readyState === 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    }
    rawFile.send(null);
}
      function initMap() {


    readTextFile("http://localhost/mysqlconverter/yakin.json", function(text){
    var data = JSON.parse(text);
    //console.log[data[1]["latitude"]]      {lat: 41.013413,lng: 28.973878};
    var myLatLng = {lat: 41.013413,lng: 28.973878};

        var map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          zoom: 16
        });

    var i=0;
    var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
    var beachMarker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          icon: image,
          title: "Çırak Atölye"
          });
    for (i=0;i<=data.length;i++){
      var marker = new google.maps.Marker({
          position: {lat: parseFloat(data[i]["longitude"]),lng: parseFloat(data[i]["latitude"])}  ,
          map: map,
          title: data[i]["restoran"]
        });
    }
    //console.log(data);

});
     }
