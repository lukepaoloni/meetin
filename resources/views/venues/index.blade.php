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
        function initMap() {
            map = new google.maps.Map(document.getElementById('venues-map'), {
                center: {lat: -34.397, lng: 150.644},
                zoom: 8
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0pnTLEPq5x2VV0WWVn5OKeRjicjtx4Y&callback=initMap"
            async defer></script>
@stop
