@extends('layouts.app')
@section('title', 'Venues')
@section('layout', 'venues-map')
@section('content')
    <div class="meetin-sidebar">
        @include('components.sidebar')
    </div>
    <div class="meetin-map">
        <div id="venues-map" style="min-height: 100vh"></div>
    </div>
@stop
@section('scripts')
    <script>
        var map;
        function bindInfoWindow(map, marker, infowindow) {
            google.maps.event.addListener(marker, 'click', function(){
                let contentString = '<a href="/venues/'+marker.id+'" class="venue-modal" data-marker="'+marker.record_id+'">';
                        contentString += '<div class="venue-modal__img">';
                            contentString += '<img src="http://via.placeholder.com/75x75" alt="">';
                        contentString += '</div>';
                        contentString += '<div class="venue-modal__content">';
                             contentString += '<div class="venue-modal__name">'+marker.title+'</div>';
                             contentString += '<div class="venue-modal__ratings>';
                            for (let i = 0; i < 5; i++) {
                                if (marker.rating > i) {
                                    contentString += '<span class="icon icon-star"></span>';
                                } else {
                                    contentString += '<span class="icon-star-empty"></span>';
                                }
                            }
                            contentString += '</div>';
                        contentString += '<div class="venue-modal__address">'+marker.global_address+'</div>';
                        contentString += '</div>'
                contentString += '</a>';
                infowindow.setContent(contentString);
                infowindow.open(map, marker);
            });
        }
        function initMap(response) {
            var markers = [], infowindow;
            map = new google.maps.Map(document.getElementById('venues-map'), {
                center: {lat: 53.2469863, lng: -1.4750701},
                zoom: 8,
                gestureHandling: 'greedy',
                componentRestrictions: {
                    country: ['gbp']
                }
            });
            infowindow = new google.maps.InfoWindow({
                content: "",
                borderWidth: 0,
                padding: 0
            });
            for (let i = 0; i < response.length; i++) {
                let data = response[i];
                let position = new google.maps.LatLng( data.latitude,
                    data.longitude );
                let record_id = "" + data.latitude + data.longitude;
                let marker = new google.maps.Marker( {
                    id: data.id,
                    record_id: record_id,
                    global_name: data.name,
                    global_address: data.address_1,
                    global_city: data.city,
                    global_postcode: data.post_code,
                    global_country: data.country_id,
                    url: data.url,
                    position: position,
                    map: map,
                    title: data.name,
                    rating: data.stars
                } );
                markers.push( marker );
                bindInfoWindow(map, marker, infowindow);
            }
        }
        function getVenues() {
            $.ajax({
                dataType: 'json',
                type: 'GET',
                url: window.location.href
            }).done(function(response) {
                initMap(response);
            });
        }
        $(document).ready(function () {
            $.getScript('https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0pnTLEPq5x2VV0WWVn5OKeRjicjtx4Y', function(){
                getVenues();
            });
        });
    </script>
{{--     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0pnTLEPq5x2VV0WWVn5OKeRjicjtx4Y&callback=initMap"
            async defer></script> --}}
@stop
