// Initialize the map and marker variables globally
var map;
var markers = [];

// Your map initialization function
function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: 0, lng: 0 }, // Set your desired map center
    zoom: 2.3, // Adjust the zoom level as needed
  });

  // Get the option selection elements
  const selectOption1 = document.getElementById("selectOption1");
  const selectOption2 = document.getElementById("selectOption2");

  // Add event listeners to trigger marker pop-up on option selection change
  selectOption1.addEventListener("change", updateMarkers);
  selectOption2.addEventListener("change", updateMarkers);

  // Function to update the markers based on selected options
  function updateMarkers() {
    // Remove existing markers from the map
    markers.forEach(marker => marker.setMap(null));

    // Clear the markers array
    markers = [];

    // Get the selected values from both option boxes
    const selectedValue1 = selectOption1.value;
    const selectedValue2 = selectOption2.value;

    // Define positions based on selected values
    switch (selectedValue1) {
      case "0":
        markers.push(new google.maps.Marker({
          position: { lat: 28.7041, lng: 77.1025 },
          map: map,
          title: "Marker 1",
        }));
        break;
      case "1":
        markers.push(new google.maps.Marker({
          position: { lat: 12.9716, lng: 77.5946 },
          map: map,
          title: "Marker 2",
        }));
        break;
      case "2":
        markers.push(new google.maps.Marker({
          position: { lat: 40.7128, lng:-74.0060 },
          map: map,
          title: "Marker 3",
        }));
        break;
      case "3":
        markers.push(new google.maps.Marker({
            position: { lat: 51.470020, lng: -0.454295 },
            map: map,
            title: "Marker 4",
          }));
          break;
      case "4":
        markers.push(new google.maps.Marker({
            position: { lat: 25.2532, lng: 55.3657 },
            map: map,
            title: "Marker 5",
          }));
          break;
      case "5":
        markers.push(new google.maps.Marker({
          position: { lat: 40.072498, lng: 116.597504 },
          map: map,
          title: "Marker 6",
        }));
        break;
      case "6":
        markers.push(new google.maps.Marker({
          position: { lat: 34.8595, lng: 136.8165 },
          map: map,
          title: "Marker 7",
        }));
        break;
      case "7":
        markers.push(new google.maps.Marker({
          position: { lat: -33.9500, lng: 151.1817 },
          map: map,
          title: "Marker 8",
        }));
        break;
      case "8":
        markers.push(new google.maps.Marker({
          position: { lat: -33.918861, lng: 18.423300 },
          map: map,
          title: "Marker 9",
        }));
        break;
      case "9":
        markers.push(new google.maps.Marker({
            position: { lat: 41.2768, lng: 28.7301 },
            map: map,
            title: "Marker 10",
        }));
        break;
      case "10":
        markers.push(new google.maps.Marker({
            position: { lat: 40.4839, lng: -3.5680 },
            map: map,
            title: "Marker 11",
        }));
        break;
      case "11":
        markers.push(new google.maps.Marker({
          position: { lat: -23.4294444444, lng:  -46.4686111111 },
          map: map,
          title: "Marker 12",
        }));
        break;
      case "12":
        markers.push(new google.maps.Marker({
          position: { lat: 21.2187149, lng:  105.80417090000003 },
          map: map,
          title: "Marker 13",
        }));
        break;
      case "13":
        markers.push(new google.maps.Marker({
          position: { lat: 47.458217, lng:  8.555476 },
          map: map,
          title: "Marker 14",
        }));
        break;
      case "14":
        markers.push(new google.maps.Marker({
          position: { lat: -1.3227102, lng:  36.926069299999995 },
          map: map,
          title: "Marker 15",
        }));
        break;
       case "15":
        markers.push(new google.maps.Marker({
          position: { lat: 49.1966913, lng:  -123.18151230000001 },
          map: map,
          title: "Marker 16",
        }));
        break;
              
  
    }
    switch (selectedValue2) {
      case "0":
        markers.push(new google.maps.Marker({
          position: { lat: 28.7041, lng: 77.1025 },
          map: map,
          title: "Marker 1",
        }));
        break;
      case "1":
        markers.push(new google.maps.Marker({
          position: { lat: 12.9716, lng: 77.5946 },
          map: map,
          title: "Marker 2",
        }));
        break;
      case "2":
        markers.push(new google.maps.Marker({
          position: { lat: 40.7128, lng:-74.0060 },
          map: map,
          title: "Marker 3",
        }));
        break;
      case "3":
        markers.push(new google.maps.Marker({
            position: { lat: 51.470020, lng: -0.454295 },
            map: map,
            title: "Marker 4",
          }));
          break;
      case "4":
        markers.push(new google.maps.Marker({
            position: { lat: 25.2532, lng: 55.3657 },
            map: map,
            title: "Marker 5",
          }));
          break;
      case "5":
        markers.push(new google.maps.Marker({
          position: { lat: 40.072498, lng: 116.597504 },
          map: map,
          title: "Marker 6",
        }));
        break;
      case "6":
        markers.push(new google.maps.Marker({
          position: { lat: 34.8595, lng: 136.8165 },
          map: map,
          title: "Marker 7",
        }));
        break;
      case "7":
        markers.push(new google.maps.Marker({
          position: { lat: -33.9500, lng: 151.1817 },
          map: map,
          title: "Marker 8",
        }));
        break;
      case "8":
        markers.push(new google.maps.Marker({
          position: { lat: -33.918861, lng: 18.423300 },
          map: map,
          title: "Marker 9",
        }));
        break;
      case "9":
        markers.push(new google.maps.Marker({
            position: { lat: 41.2768, lng: 28.7301 },
            map: map,
            title: "Marker 10",
        }));
        break;
      case "10":
        markers.push(new google.maps.Marker({
            position: { lat: 40.4839, lng: -3.5680 },
            map: map,
            title: "Marker 11",
        }));
        break;
      case "11":
        markers.push(new google.maps.Marker({
          position: { lat: -23.4294444444, lng:  -46.4686111111 },
          map: map,
          title: "Marker 12",
        }));
        break;
      case "12":
        markers.push(new google.maps.Marker({
          position: { lat: 21.2187149, lng:  105.80417090000003 },
          map: map,
          title: "Marker 13",
        }));
        break;
      case "13":
        markers.push(new google.maps.Marker({
          position: { lat: 47.458217, lng:  8.555476 },
          map: map,
          title: "Marker 14",
        }));
        break;
      case "14":
        markers.push(new google.maps.Marker({
          position: { lat: -1.3227102, lng:  36.926069299999995 },
          map: map,
          title: "Marker 15",
        }));
        break;
       case "15":
        markers.push(new google.maps.Marker({
          position: { lat: 49.1966913, lng:  -123.18151230000001 },
          map: map,
          title: "Marker 16",
        }));
        break;
    }

    
    if (markers.length > 0) {
      map.setCenter(markers[0].getPosition());
    }
  }

  // Trigger the initial marker update based on the initial selected values
  updateMarker();
}

// Load the Google Maps API asynchronously
window.onload = loadMapScript;/**
 * 
 */
