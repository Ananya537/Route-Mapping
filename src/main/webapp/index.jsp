<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Route Mapping</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;900&family=PT+Sans&family=Poppins:wght@500&family=Ubuntu&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
    <!-- Regular CSS Sylesheet -->

    <link rel="stylesheet" href="style.css">

    <!-- Javascript Scripts -->

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <!--  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxqDa7n9GYpZP8ZM7e51jrKeyQjaZrMjk&callback=initMap" async defer></script>-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAe6RsIno1EuqVMSjqQrNmZU3vEo_fKxgA&callback=initMap&libraries=geometry" async defer></script>
	

    <!-- Font Awesome -->
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="icon" href="favicon (3).ico">

    <!-- custom js file link  -->
    <script src="script.js"></script>

</head>
<body>

</head>
<body onload="showData()">

    <section id="route-mapping">
        
        <a class="navbar-brand">Route-Mapping Using Dijkstra's Algorithm.</a>
    
    </section>
    
	<section id="course">

    	<div class="container-fluid">

            <div id="course-row">

                <div class="row">

                    <div class="card" style="width: 19rem; padding-top: 10px; margin-right: 10px; height: 515px;">
                        <div class="card-body">
                          <h5 class="card-title">Welcome!</h5>
                          	<form id="routeForm" method="post">
						        <label for="source" style="padding-top:15px; padding-bottom:15px;"><strong>SOURCE</strong></label>
						        <select name="source" id="selectOption1" style="margin-bottom:25px; border-radius: 25px; border-width: 2px; width: 250px;">
						        	<option selected></option>
						            <option value="0">Delhi International Airport</option>
						            <option value="1">Bengaluru International Airport</option>
						            <option value="2">John F. Kennedy International Airport</option>
						            <option value="3">Heathrow Airport</option>
						            <option value="4">Dubai International Airport</option>
						            <option value="5">Beijing Capital International Airport</option>
						            <option value="6">Tokyo Haneda Airport</option>
						            <option value="7">Sydney Kingsford Smith Airport</option>
						            <option value="8">Cape Town International Airport</option>
						            <option value="9">Istanbul Airport</option>
						            <option value="10">Madrid-Barajas Airport</option>
						            <option value="11">Sao Paulo International Airport</option>
						            <option value="12">Hanoi Airport</option>
						            <option value="13">Zurich Airport</option>
						            <option value="14">Kenya International Airport</option>
						            <option value="15">Vancouver International Airport</option>
						        </select><br>
						        <label for="destination" style="padding-bottom:15px;"><strong>DESTINATION</strong></label>
						        <select name="destination" id="selectOption2" style="margin-bottom:15px; border-radius: 25px; border-width: 2px; width: 250px;">
						        	<option selected></option>
						            <option value="0">Delhi International Airport</option>
						            <option value="1">Bengaluru International Airport</option>
						            <option value="2">John F. Kennedy International Airport</option>
						            <option value="3">Heathrow Airport</option>
						            <option value="4">Dubai International Airport</option>
						            <option value="5">Beijing Capital International Airport</option>
						            <option value="6">Tokyo Haneda Airport</option>
						            <option value="7">Sydney Kingsford Smith Airport</option>
						            <option value="8">Cape Town International Airport</option>
						            <option value="9">Istanbul Airport</option>
						            <option value="10">Madrid-Barajas Airport</option>
						            <option value="11">Sao Paulo International Airport</option>
						            <option value="12">Hanoi Airport</option>
						            <option value="13">Zurich Airport</option>
						            <option value="14">Kenya International Airport</option>
						            <option value="15">Vancouver International Airport</option>
						        </select><br>
        
        
					            <center><button type="submit" onclick="return validateForm1()" style="margin-top:15px; margin-bottom:20px; margin-right:20px; width: 150px;" class="btn btn-outline-dark">Find Route</button></center>
					            <center><button type="submit" onclick="return validateForm2()" style="margin-top:15px; margin-bottom:20px; margin-right:20px; width: 150px;" class="btn btn-outline-dark">Find Cost</button></center>
					            <center><button type="button" class="btn btn-outline-dark" id="toggleButton" style="margin-top:15px; margin-bottom:20px; margin-right:20px; width: 150px;">View Details</button></center>
           						
           						<!-- onclick="createCards()"  -->
           						
           					</form>
						</div>
                    </div>

                 
            		<div id="map" style="height: 515px; width:57rem;"></div>
            		
            		<!-- <div class="card" id='seeMore' style="width: 1227px; padding-top: 20px; height: 170px;margin-top: 10px;"> -->
                        
                    </div>
                                                       
                </div>
              </div>
			</div>
	</section>
    
    <div class="row mt-4">
            <div class="d-none" style="width: 415px; margin-left:28px;" id="card1">
                <div class="card">
                    <div class="card-body" style="height:280px;">
                    	<h4><center><strong>Route 1</strong></center></h4>
                    	<p class="card-distance" id="distance1">
                    	<p class="card-distance" id="price1">
						<p><strong>Airports:</strong></p>
                    	<ul id="dataList1">
                        
                    	</ul>
                    </div>
                </div>
            </div>

            <div class="d-none" style="width: 415px;" id="card2">
                <div class="card">
                    <div class="card-body" style="height:280px;">
                    	<h4><center><strong>Route 2</strong></center></h4>
                    	<p class="card-distance" id="distance2">
                    	<p class="card-distance" id="price2">
                        <p><strong>Airports:</strong></p>
	                    <ul id="dataList2">
	                       
	                    </ul>
                    </div>
                </div>
            </div>

            <div class="d-none" style="width: 415px; " id="card3">
                <div class="card">
                    <div class="card-body" style="height:280px;">
                    	<h4><center><strong>Route 3</strong></center></h4>
                    	<p class="card-distance" id="distance3">
                    	<p class="card-distance" id="price3">
                        <p><strong>Airports:</strong></p>
                    	<ul id="dataList3">
                        
                    	</ul>
                    </div>
                </div>
            </div>
        </div>

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	
	<script>
	
	    // Variables
	    var map, markers = [], pointsDone = [], bounds, myInterval, startPoint, endPoint, progress;
	
	    // Settings
	    var stepSize = 300; 
	    var stepTime = 5;   
	
	    var airportList = ["Delhi International Airport","Bengaluru International Airport","John F. Kennedy International Airport",
	         "Heathrow Airport","Dubai International Airport","Beijing Capital International Airport","Tokyo Haneda Airport",
	         "Sydney Kingsford Smith Airport","Cape Town International Airport","Istanbul Airport","Madrid-Barajas Airport",
	         "Sao Paulo International Airport", "Noi Bai International Airport", "Zurich Airport", "Kenya international airport", "Vancouver International Airport"];
		
	    var colors = ["#FF0000", "#00FF00", "#0000FF", "#FFFF00", "#FF00FF"]; 
	    var colorsJ = ["#FF0000", "#00FF00", "#0000FF", "#FFFF00", "#FF00FF"];
	    
	    function showData() {
	        var dist = <%= request.getAttribute("distance") %>;
	        var dataArray = <%= request.getAttribute("dataArray") %>;
	        var price = <%= request.getAttribute("price") %>;
	        var distance = dist[1];
	        var output = "";
	        var i, j;
	        var color_count = [];
	        var latitude, longitude;
	        var routeOutputForCard1 = ''; 
	        var routeOutputForCard2 = ''; 
	        var routeOutputForCard3 = ''; 
	        
	
	        var lat = [ 28.7041, 12.9716, 40.7128 , 51.470020, 25.2532, 40.072498 , 34.8595 , -33.9500, -33.918861, 41.2768, 40.4839, -23.4294444444, 21.2187149, 47.458217 , -1.3227102, 49.1966913];
	        var lng = [ 77.1025, 77.5946, -74.0060, -0.454295, 55.3657, 116.597504, 136.8165, 151.1817, 18.423300 , 28.7301, -3.5680, -46.4686111111, 105.80417090000003 , 8.555476  , 36.926069299999995 , -123.1815123];
	
	        if (dataArray != null) {
	            for (j = 0; j < dataArray.length; j++) {
	                var routeOutput = ""; 
	                var distance = dist[j];
	                var prices = price[j];
	                color_count[j] = 0;
	                
	                if (j === 0) {
	                    document.getElementById("distance1").innerHTML = "<strong>Distance :</strong> " + distance + " km";
	                } else if (j === 1) {
	                    document.getElementById("distance2").innerHTML = "<strong>Distance :</strong> " + distance + " km";
	                } else if (j === 2) {
	                    document.getElementById("distance3").innerHTML = "<strong>Distance :</strong> " + distance + " km";
	                }
	                
	                if (j === 0) {
	                    document.getElementById("price1").innerHTML = "<strong>Price :</strong> " + " Rs. " + prices ;
	                } else if (j === 1) {
	                    document.getElementById("price2").innerHTML = "<strong>Price :</strong> " + " Rs. " + prices ;
	                } else if (j === 2) {
	                    document.getElementById("price3").innerHTML = "<strong>Price :</strong> " + " Rs. " + prices ;
	                }
	             
	                for (i = 0; i < dataArray[j].length; i++) {
	                    color_count[j] = color_count[j] + 1;
	                    routeOutput += "<li>" + airportList[dataArray[j][i]] + "</li>";
	                }
	               
	                if (j === 0) {
	                    routeOutputForCard1 = routeOutput;
	                } else if (j === 1) {
	                    routeOutputForCard2 = routeOutput;
	                } else if (j === 2) {
	                    routeOutputForCard3 = routeOutput;
	                }
	            }
	
	            var dataListElement1 = document.getElementById("dataList1");
	            if (dataListElement1) {
	                dataListElement1.innerHTML = routeOutputForCard1; 
	            }
	
	            var dataListElement2 = document.getElementById("dataList2");
	            if (dataListElement2) {
	                dataListElement2.innerHTML = routeOutputForCard2; 
	            }
	
	            var dataListElement3 = document.getElementById("dataList3");
	            if (dataListElement3) {
	                dataListElement3.innerHTML = routeOutputForCard3; 
	            }
	        }
	        
	
	        var contents = [];
	        var mapPoints = [];
	        var infoWindows = []; 
	        for (j = 0; j < dataArray.length; j++) {
	            for (var k = 0; k < dataArray[j].length; k++) {
	                var content = '<div><h6><strong>' + airportList[dataArray[j][k]] + '</strong></h6></div>';
	                var newCoordinates = [
	                    {
	                        lat: lat[dataArray[j][k]],
	                        lng: lng[dataArray[j][k]]
	                    }
	                ];
	                contents.push(content);
	                mapPoints.push(newCoordinates[0]);
	            }
	        }
	
	        var mapOptions = {
	            zoom: 2.3,
	            center: new google.maps.LatLng(mapPoints[0].lat, mapPoints[0].lng),
	            mapTypeId: google.maps.MapTypeId.HYBRID
	        };
	
	        
	        var map;
	        var bounds;
	        var markers = [];
	        var pointsDone = [];
	
	        function initializeMap(color_count) {
	           
	            map = new google.maps.Map(document.getElementById('map'), mapOptions);
	            bounds = new google.maps.LatLngBounds();
	
	            
	            $.each(mapPoints, function (index, value) {
	                var myLatLng = new google.maps.LatLng(value.lat, value.lng);
	                var marker = new google.maps.Marker({
	                    position: myLatLng,
	                    map: map,
	                    visible: false
	                });
	
	               
	                fetchWeatherData(value.lat, value.lng)
	                    .then(function(weatherData) {
	                    
	                     	var weatherDescription = weatherData.weather[0].description;
							var isBadWeather = false;
							var badWeatherDetails = '';
							
							
							if (weatherDescription.includes('rain') || weatherDescription.includes('thunderstorm')) {
							    isBadWeather = true;
							    badWeatherDetails = 'Bad weather conditions: Heavy rain or thunderstorms';
							} else if (weatherDescription.includes('snow')) {
							    isBadWeather = true;
							    badWeatherDetails = 'Bad weather conditions: Snowfall';
							} else if (weatherDescription.includes('fog') || weatherDescription.includes('mist')) {
							    isBadWeather = true;
							    badWeatherDetails = 'Bad weather conditions: Foggy or misty';
							} else if (weatherDescription.includes('broken clouds') ) {
							    isBadWeather = true;
							    badWeatherDetails = 'Bad weather conditions: Heavy rain or thunderstorms';
							}   
		                     var contentString =
		                            '<div>' +
		                            '<h1>' + contents[index] + '</h1>' +
		                            '<strong><p><strong>Weather:</strong> ' + weatherData.weather[0].description + '<img src="http://openweathermap.org/img/w/' + weatherData.weather[0].icon + '.png" alt="Weather Icon"> </p>' +
		                            '<p style="margin-top: 5px;"><strong>Temperature:</strong></strong> ' + 
		                            '<h2 style="font-size: 20px;"><img src="https://openweathermap.org/img/wn/' + weatherData.weather[0].icon + '@2x.png" style="width: 55px; height: 55px;"/>' + weatherData.main.temp + '°C <img src="https://openweathermap.org/img/wn/' + weatherData.weather[0].icon + '@2x.png" style="width: 55px; height: 55px;"/></h2>' +
		                            (isBadWeather ? '<strong><p style="color: red;">' + badWeatherDetails + '</p></strong>' : '') +
		                            '</div>';
		
		                     
		                        var infoWindow = new google.maps.InfoWindow({
		                            content: contentString
		                        });
		
		                        
		                        marker.addListener('click', function() {
		                            infoWindow.open(map, marker);
		                        });
		                    })
		                    .catch(function(error) {
		                        console.error('Error fetching weather data:', error);
		                    });
		                
		
		                markers.push(marker);
	
	               
	                bounds.extend(myLatLng);
	            });
	
	            
	            map.fitBounds(bounds);
	
	            
	            pointsDone.push(new google.maps.LatLng(mapPoints[0].lat, mapPoints[0].lng));
	
	           
	            google.maps.event.addListenerOnce(map, 'idle', function () {
	                pathAnimation(0, color_count, 0);
	            });
	        }
	
	
	       
	     	function fetchWeatherData(lat, lng) {
	            
	            var apiKey = 'f1073c9aade8c59499a19d8d4f67c74d';
	            var weatherUrl = 'https://api.openweathermap.org/data/2.5/weather?lat=' + lat + '&lon=' + lng + '&units=metric&appid=' + apiKey;
	
	            return fetch(weatherUrl)
	                .then(function(response) {
	                    return response.json();
	                });
	        }
	
	        
	        google.maps.event.addDomListener(window, 'load', initMap);
	        var infoWindows = [];
	
	       
	        function createInfoWindow(content, position) {
	            var infoWindow = new google.maps.InfoWindow({
	                content: content,
	            });
	
	            
	            infoWindows.forEach(function (iw) {
	                iw.close();
	            });
	
	            infoWindow.setPosition(position);
	            infoWindow.open(map);
	            infoWindows.push(infoWindow);
	        }
	
	        
	        function pathAnimation(point, color_count, m) {
	    markers[point].setVisible(true);
	
	    
	    startPoint = pointsDone[point];
	
	    var endPoint = null; 
	    if (point + 1 < mapPoints.length) {
	        endPoint = new google.maps.LatLng(mapPoints[point + 1].lat, mapPoints[point + 1].lng);
	    }
	    color_count[m] = color_count[m] - 1;
	
	    
	    if (color_count[m] > 0) {
	        var strokeColor;
	        if (m == 0) {
	            strokeColor = colors[0]; 
	        } else if (m == 1) {
	            strokeColor = colors[1];
	        } else {
	            strokeColor = colors[2];
	        }
	
	        const arrowSymbol = {
	            path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW,
	            scale: 3,
	            strokeColor: strokeColor,
	        };
	
	        var myPath = new google.maps.Polyline({
	            path: pointsDone,
	            geodesic: true,
	            strokeOpacity: 1.0,
	            strokeWeight: 4,
	            map: map,
	            strokeColor: strokeColor,
	            icons: [
	                {
	                    icon: arrowSymbol,
	                    offset: '100%', 
	                },
	            ],
	        });
	    }
	    
	    
	
	    
	    pointsDone.push(endPoint);
	    step = 0;
	    var myInterval = setInterval(function () {
	        step += 1;
	        if (step > stepSize || endPoint === null) {
	            
	            clearInterval(myInterval);
	            if (pointsDone.length - 1 < mapPoints.length) {
	                if (color_count[m] == 0) {
	                    m++;
	                }
	                pathAnimation( ++point , color_count, m);
	            }
	        } else {
	            
	            progress = google.maps.geometry.spherical.interpolate(startPoint, endPoint, step / stepSize);
	            myPath.setPath([startPoint, progress]);
	        }
	    }, stepTime);
	    
	    google.maps.event.addListener(myPath, 'click', function(event) {
	        var currentDistance = dist[m]; 
	        var currentPrice = price[m];   
	
	        
		        var infoContent = '<div><h6>' +
		    '<strong>Distance:</strong> ' + currentDistance + ' km<br>' +
		    '<strong>Price:</strong> ' + currentPrice + ' Rs' +
		    '</h6></div>';
	        createInfoWindow(infoContent, event.latLng);
	    });
	
	}
	
	        // Start it up
	        initializeMap(color_count);
	
	    }
	
	</script>
    
    <script>
        function setAction(action) {
            document.getElementById("routeForm").action = action;
            document.getElementById("routeForm").submit();
        }
    </script>

	<script>
	        var toggleButton = document.getElementById("toggleButton");
	        var card1 = document.getElementById("card1");
	        var card2 = document.getElementById("card2");
	        var card3 = document.getElementById("card3");
	
	        toggleButton.addEventListener("click", function () {
	            card1.classList.toggle("d-none");
	            card2.classList.toggle("d-none");
	            card3.classList.toggle("d-none");
	        });
	        
	        function validateForm1() {
	        	   var sourceSelect = document.getElementById("selectOption1");
	        	   var destinationSelect = document.getElementById("selectOption2");
	
	        	   if (sourceSelect.value === "" || destinationSelect.value === "") {
	        	      alert("Please select both source and destination.");
	        	      return false; 
	        	   }
				   
	        	   if (sourceSelect.value === destinationSelect.value) {
	         	      alert("Source and destination cannot be same");
	         	      return false; 
	         	   }
	
	        	  
	        	   setAction('ProcessSelectionServlet');
	        	}
	        
	        function validateForm2() {
	     	   var sourceSelect = document.getElementById("selectOption1");
	     	   var destinationSelect = document.getElementById("selectOption2");
	
	     	   if (sourceSelect.value === "" || destinationSelect.value === "") 
	     	   {
	     	      alert("Please select both source and destination.");
	     	      return false; 
	     	   }
				   
	     	   if (sourceSelect.value === destinationSelect.value) 
	     	   {
	      	      alert("Source and destination cannot be same");
	      	      return false; 
	      	   }
	
	     	   
	     	  setAction('ProcessSelectionServlet2');
	     	}
	</script>

</body>
</html>
