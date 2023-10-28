<%@ page import="java.util.List" %>
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

                    <div class="card" style="width: 19rem; padding-top: 10px; margin-right: 10px; height: 365px;">
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
						            <!-- Add more location options as needed -->
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
						            <!-- Add more location options as needed -->
						        </select><br>
        
        
					            <button type="submit" onclick="return validateForm1()" style="margin-top:10px; margin-bottom:20px; margin-right:20px;" class="btn btn-outline-dark">Find Route</button>
					            <button type="submit" onclick="return validateForm2()" style="margin-top:10px; margin-bottom:20px; margin-right:10px;" class="btn btn-outline-dark">Find Cost</button>
					            <button type="button" class="btn btn-outline-dark" id="toggleButton">View Details</button>
           						
           						<!-- onclick="createCards()"  -->
           						
           					</form>
						</div>
                    </div>

                 
            		<div id="map"></div>
            		
            		<!-- <div class="card" id='seeMore' style="width: 1227px; padding-top: 20px; height: 170px;margin-top: 10px;"> -->
                        
                    </div>
                                                       
                </div>
              </div>
			</div>
	</section>
	
	<section id="course">
        <div class="container">
            <div id="card-row" class="row">
                <!-- Bootstrap cards will be added here -->
            </div>
        </div>
    </section>
    
    <div class="row mt-4">
            <div class="d-none" style="width: 415px; margin-left:28px;" id="card1">
                <div class="card">
                    <div class="card-body" style="height:210px;">
                    	<h4><center><strong>Route 1</strong></center></h4>
                    	<p class="card-distance" id="distance1">
                    	<p class="card-distance" id="price1">
						<p><strong>Airports:</strong></p>
                    	<ul id="dataList1">
                        <!-- The list will be populated by JavaScript -->
                    	</ul>
                    </div>
                </div>
            </div>

            <div class="d-none" style="width: 415px;" id="card2">
                <div class="card">
                    <div class="card-body" style="height:210px;">
                    	<h4><center><strong>Route 2</strong></center></h4>
                    	<p class="card-distance" id="distance2">
                    	<p class="card-distance" id="price2">
                        <p><strong>Airports:</strong></p>
	                    <ul id="dataList2">
	                        <!-- The list will be populated by JavaScript -->
	                    </ul>
                    </div>
                </div>
            </div>

            <div class="d-none" style="width: 415px; " id="card3">
                <div class="card">
                    <div class="card-body" style="height:210px;">
                    	<h4><center><strong>Route 3</strong></center></h4>
                    	<p class="card-distance" id="distance3">
                    	<p class="card-distance" id="price3">
                        <p><strong>Airports:</strong></p>
                    	<ul id="dataList3">
                        <!-- The list will be populated by JavaScript -->
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
    var stepSize = 300; // Size of every animation increment
    var stepTime = 5;   // Decrease to speed up

    var airportList = ["Delhi International Airport","Bengaluru International Airport","John F. Kennedy International Airport",
         "Heathrow Airport","Dubai International Airport","Beijing Capital International Airport","Tokyo Haneda Airport",
         "Sydney Kingsford Smith Airport","Cape Town International Airport","Istanbul Airport","Madrid-Barajas Airport",
         "Sao Paulo International Airport", "Noi Bai International Airport", "Zurich Airport", "Kenya international airport", "Vancouver International Airport"];
	// Define an array of colors for polylines
    var colors = ["#FF0000", "#00FF00", "#0000FF", "#FFFF00", "#FF00FF"]; // Add more colors as needed
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
        var routeOutputForCard1 = ''; // Initialize as an empty string
        var routeOutputForCard2 = ''; // Initialize as an empty string
        var routeOutputForCard3 = ''; // Initialize as an empty string
        // Add more variables if you have additional cards

        var lat = [ 28.7041, 12.9716, 40.7128 , 51.470020, 25.2532, 40.072498 , 34.8595 , -33.9500, -33.918861, 41.2768, 40.4839, -23.4294444444, 21.2187149, 47.458217 , -1.3227102, 49.1966913];
        var lng = [ 77.1025, 77.5946, -74.0060, -0.454295, 55.3657, 116.597504, 136.8165, 151.1817, 18.423300 , 28.7301, -3.5680, -46.4686111111, 105.80417090000003 , 8.555476  , 36.926069299999995 , -123.1815123];

        if (dataArray != null) {
            for (j = 0; j < dataArray.length; j++) {
                var routeOutput = ""; // Initialize routeOutput for each route
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
                // Append the airports to the respective card variable based on the card number (j+1)
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
        var infoWindows = []; // Create an array to store info windows

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

        // Initialize map
        var map;
        var bounds;
        var markers = [];
        var pointsDone = [];

        function initializeMap(color_count) {
            // Create map
            map = new google.maps.Map(document.getElementById('map'), mapOptions);
            bounds = new google.maps.LatLngBounds();

            // Create markers and info windows
            $.each(mapPoints, function (index, value) {
                var myLatLng = new google.maps.LatLng(value.lat, value.lng);
                var marker = new google.maps.Marker({
                    position: myLatLng,
                    map: map,
                    visible: false
                });

                // Create an info window for this marker
                fetchWeatherData(value.lat, value.lng)
                    .then(function(weatherData) {
                     // Assuming you have the weather data in the variable weatherData
                     	var weatherDescription = weatherData.weather[0].description;
						var isBadWeather = false;
						var badWeatherDetails = '';
						
						// Check for bad weather conditions based on the weather description
						if (weatherDescription.includes('rain') || weatherDescription.includes('thunderstorm')) {
						    isBadWeather = true;
						    badWeatherDetails = 'Bad weather conditions: Heavy rain or thunderstorms';
						} else if (weatherDescription.includes('snow')) {
						    isBadWeather = true;
						    badWeatherDetails = 'Bad weather conditions: Snowfall';
						} else if (weatherDescription.includes('fog') || weatherDescription.includes('mist')) {
						    isBadWeather = true;
						    badWeatherDetails = 'Bad weather conditions: Foggy or misty';
						}   
	                     var contentString =
	                            '<div>' +
	                            '<h1>' + contents[index] + '</h1>' +
	                            '<strong><p><strong>Weather:</strong> ' + weatherData.weather[0].description + '<img src="http://openweathermap.org/img/w/' + weatherData.weather[0].icon + '.png" alt="Weather Icon"> </p>' +
	                            '<p><strong>Temperature:</strong></strong> ' + 
	                            '<h2><img src="https://openweathermap.org/img/wn/' + weatherData.weather[0].icon + '@2x.png" />' + weatherData.main.temp + '°C <img src="https://openweathermap.org/img/wn/' + weatherData.weather[0].icon + '@2x.png" /></h2>' +
	                            (isBadWeather ? '<strong><p style="color: red;">' + badWeatherDetails + '</p></strong>' : '') +
	                            '</div>';
	
	                        // Now you can use contentString to display the weather information with icons
	
	
	                        var infoWindow = new google.maps.InfoWindow({
	                            content: contentString
	                        });
	
	                        // Add a click event listener to open the InfoWindow when the marker is clicked
	                        marker.addListener('click', function() {
	                            infoWindow.open(map, marker);
	                        });
	                    })
	                    .catch(function(error) {
	                        console.error('Error fetching weather data:', error);
	                    });
	                
	
	                markers.push(marker);

                // Add to bounds and path
                bounds.extend(myLatLng);
            });

            // Center & zoom map on all mapPoints
            map.fitBounds(bounds);

            // Add first mapPoint to an array that will keep points that have been animated
            pointsDone.push(new google.maps.LatLng(mapPoints[0].lat, mapPoints[0].lng));

            // Start the animation on the first point in mapPoints
            google.maps.event.addListenerOnce(map, 'idle', function () {
                pathAnimation(0, color_count, 0);
            });
        }


        // Following function gets called one polyline at a time
     // Define an array to store info windows
     	function fetchWeatherData(lat, lng) {
            // Replace 'YOUR_OPENWEATHERMAP_API_KEY' with your OpenWeatherMap API key
            var apiKey = 'f1073c9aade8c59499a19d8d4f67c74d';
            var weatherUrl = 'https://api.openweathermap.org/data/2.5/weather?lat=' + lat + '&lon=' + lng + '&units=metric&appid=' + apiKey;

            return fetch(weatherUrl)
                .then(function(response) {
                    return response.json();
                });
        }

        // Call the initMap function when the Google Maps API script has loaded
        google.maps.event.addDomListener(window, 'load', initMap);
        var infoWindows = [];

        // Function to create and display custom info window
        function createInfoWindow(content, position) {
            var infoWindow = new google.maps.InfoWindow({
                content: content,
            });

            // Close any previously opened info windows
            infoWindows.forEach(function (iw) {
                iw.close();
            });

            infoWindow.setPosition(position);
            infoWindow.open(map);
            infoWindows.push(infoWindow);
        }

        // Following function gets called one polyline at a time
        function pathAnimation(point, color_count, m) {
    markers[point].setVisible(true);

    // Set start & end point for this polyline
    startPoint = pointsDone[point];

    var endPoint = null; // Initialize endPoint to null

    if (point + 1 < mapPoints.length) {
        endPoint = new google.maps.LatLng(mapPoints[point + 1].lat, mapPoints[point + 1].lng);
    }
    color_count[m] = color_count[m] - 1;

    // Check if color_count[m] is greater than 0 before drawing the polyline
    if (color_count[m] > 0) {
        var strokeColor;
        if (m == 0) {
            strokeColor = colors[0]; // Use a different color based on m
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
                    offset: '100%', // Place the arrow symbol at the end of the polyline
                },
            ],
        });
    }
    
    

    // Add this point to the array keeping points that have already been animated to
    pointsDone.push(endPoint);
    step = 0;
    var myInterval = setInterval(function () {
        step += 1;
        if (step > stepSize || endPoint === null) {
            // Done drawing or no more points, clear the interval, and call pathAnimation() again if we're not done animating all the polylines
            clearInterval(myInterval);
            if (pointsDone.length - 1 < mapPoints.length) {
                if (color_count[m] == 0) {
                    m++;
                }
                pathAnimation( ++point , color_count, m);
            }
        } else {
            // Not done drawing yet...
            progress = google.maps.geometry.spherical.interpolate(startPoint, endPoint, step / stepSize);
            myPath.setPath([startPoint, progress]);
        }
    }, stepTime);
    
    google.maps.event.addListener(myPath, 'click', function(event) {
        var currentDistance = dist[m]; // Use m to get the distance for the current route
        var currentPrice = price[m];   // Use m to get the price for the current route

        // Create a custom info window content with distance and price information
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
    function createCards() {
        
    	// Find the existing row containing the cards
        var existingRow = document.getElementById("card-row");

        // If the existing row exists, remove it
        if (existingRow) {
            existingRow.parentNode.removeChild(existingRow);
        }

        // Create a new row div to contain the cards
        var newRowDiv = document.createElement("div");
        newRowDiv.className = "row";

        // Create and append 3 Bootstrap cards to the new row
        for (var i = 0; i < 3; i++) {
            var cardDiv = document.createElement("div");
            cardDiv.className = "col-md-4"; // Use col-md-4 for medium-sized screens
            cardDiv.innerHTML = `
                <div class="card" style="width: 23rem; padding-top: 10px; margin-right: 10px; height: 350px;">
                    <div class="card-body">
                        <h5 class="card-title">Card ${i + 1}</h5>
                        <p class="card-text">This is a sample card.</p>
                    </div>
                </div>`;
            
            // Append the card to the new row
            newRowDiv.appendChild(cardDiv);
        }

        // Append the new row with cards to the course section
        var courseSection = document.getElementById("course");
        courseSection.appendChild(newRowDiv);
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
        	      // Display an error message or take appropriate action.
        	      alert("Please select both source and destination.");
        	      return false; // Prevent form submission.
        	   }
			   
        	   if (sourceSelect.value === destinationSelect.value) {
         	      // Display an error message or take appropriate action.
         	      alert("Source and destination cannot be same");
         	      return false; // Prevent form submission.
         	   }

        	   // If validation passes, allow form submission.
        	   setAction('ProcessSelectionServlet');
        	}
        
        function validateForm2() {
     	   var sourceSelect = document.getElementById("selectOption1");
     	   var destinationSelect = document.getElementById("selectOption2");

     	   if (sourceSelect.value === "" || destinationSelect.value === "") {
     	      // Display an error message or take appropriate action.
     	      alert("Please select both source and destination.");
     	      return false; // Prevent form submission.
     	   }
			   
     	   if (sourceSelect.value === destinationSelect.value) {
      	      // Display an error message or take appropriate action.
      	      alert("Source and destination cannot be same");
      	      return false; // Prevent form submission.
      	   }

     	   // If validation passes, allow form submission.
     	  setAction('ProcessSelectionServlet2');
     	}
    </script>



</body>
</html>