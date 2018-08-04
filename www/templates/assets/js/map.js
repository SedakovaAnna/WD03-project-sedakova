function initMap() {
	
	var isDraggable;
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		isDraggable = false;
	} else {
		isDraggable = true;
	}

	var cherepovets = {lat:59.125906, lng: 37.908612};
	
	myMap = new google.maps.Map(document.getElementById('map'), {
		center: cherepovets,
		zoom: 13,
		disableDefaultUI: true,
		draggable: isDraggable,
		styles: [{"featureType":"road.local","elementType":"geometry","stylers":[{"visibility":"on"}]}]

	});

	var markerCherepovets = new google.maps.Marker({

	    position: cherepovets,
	    map: myMap,
	    title: 'Череповец',
	    icon: '../../templates/assets/img/maps/pin-blue.png'

	});

	var contentStringCherepovets = '<div id="content">'+
	      '<div id="siteNotice">'+
	      '</div>'+
	      '<h1 id="firstHeading" class="firstHeading">Вологодская обл.</h1>'+
	      '<div id="bodyContent">'+
	      'г. Череповец</p>'+
	      '</div>'+
	      '</div>';
	
	var infowindowCherepovets = new google.maps.InfoWindow({
		content: contentStringCherepovets,
		maxWidth: 400
	});

	markerCherepovets.addListener('click', function() {
		infowindowCherepovets.open(myMap, markerCherepovets);
	});

}

