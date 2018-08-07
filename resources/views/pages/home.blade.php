@extends('layouts.default')
@section('title', 'Home')
@section('layout', 'container')

@section('scripts')
    <script>
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: -33.8688, lng: 151.2195},
                zoom: 13
            });
            var input = document.getElementById('venue-search__input');
            var autocomplete = new google.maps.places.Autocomplete(input);
            autocomplete.bindTo('bounds', map);
            autocomplete.setFields(
                ['address_components', 'geometry', 'icon', 'name']);
            var infowindow = new google.maps.InfoWindow();
            var infowindowContent = document.getElementById('infowindow-content');
            infowindow.setContent(infowindowContent);
            var marker = new google.maps.Marker({
                map: map,
                anchorPoint: new google.maps.Point(0, -29)
            });
            autocomplete.addListener('place_changed', function() {
                infowindow.close();
                marker.setVisible(false);
                var place = autocomplete.getPlace();
                if (!place.geometry) {
                    // User entered the name of a Place that was not suggested and
                    // pressed the Enter key, or the Place Details request failed.
                    window.alert("No details available for input: '" + place.name + "'");
                    return;
                }

                // If the place has a geometry, then present it on a map.
                if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17);  // Why 17? Because it looks good.
                }
                marker.setPosition(place.geometry.location);
                marker.setVisible(true);
                var address = '';
                if (place.address_components) {
                    address = [
                        (place.address_components[0] && place.address_components[0].short_name || ''),
                        (place.address_components[1] && place.address_components[1].short_name || ''),
                        (place.address_components[2] && place.address_components[2].short_name || '')
                    ].join(' ');
                }
                infowindowContent.children['place-icon'].src = place.icon;
                infowindowContent.children['place-name'].textContent = place.name;
                infowindowContent.children['place-address'].textContent = address;
                infowindow.open(map, marker);
            });
        }
    </script>
	<script src="https://maps.googleapis.com/maps/api/js?key={{ setting('site.gmap_api_key') }}&libraries=places&callback=initMap" async defer></script>
@stop

@section('header')
<div class="landing-page" style="min-height: 100vh;">
	<div class="container">
		<div class="row align-items-center justify-content-between pt-5">
			<div class="col-12 col-md-6 col-lg-5">
				<div class="landing-page__content">
					<div class="row">
						<div class="col-12">
							<h1 class="text-capitalize headline-1 font-weight-bold">{{ __('Lorem') }} <span class="text-primary">{{ __('Ipsum') }}</span> <br/>{{ __('Maecenas Eu Tempus') }}</h1>
							<h4 class="headline-10 font-weight-light" style="max-width: 470px">
								{{ __('Phasellus vitae diam lectus. Nullam a justo et ex mollis mollis vel ac tortor. Sed sagittis diam nec dolor blandit finibus.') }}
							</h4>
						</div>
                        <div class="col-12 mt-5">
                            <a href="{{ url('contact') }}" class="btn btn-primary btn-lg">
                                <span>{{ __('Contact') }}</span>
                            </a>
                        </div>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-7">
				<img src="{{ asset('images/home/landing-page-image.svg') }}" alt="" class="img-fluid">
			</div>
		</div>
        <div class="row align-items-center">
            <div class="col-12 col-md-8 col-lg-7">
                {{ Form::open(['url' => 'search/venues', 'method' => 'get', 'class' => 'conference-search d-flex']) }}
                <div class="venue-search">
                    {{ Form::text('q', null, ['class' => 'form-control input-search', 'id' => 'venue-search__input', 'placeholder' => 'Search for a venue near you...', 'autocomplete' => 'off']) }}
                    <button class="btn btn-primary" type="submit">
                        <span class="sr-only">
                            {{ __('Search') }}
                        </span>
                        <span class="icon icon-search icon-2x"></span>
                    </button>
                </div>
                {{ Form::close() }}
            </div>
            <div class="col-12 mt-4">
                <div id="map" style="min-height: 500px"></div>
                <div id="infowindow-content">
                    <img src="" width="16" height="16" id="place-icon">
                    <span id="place-name"  class="title"></span><br>
                    <span id="place-address"></span>
                </div>
            </div>
        </div>
	</div>
</div>
@stop

@section('content')

@stop
