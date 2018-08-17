@extends('layouts.default')
@section('body', 'bg-white')
@section('title', 'Home')

@section('scripts')
    <script>
        function initMap() {
            var input = document.getElementById('venue-search__input');
            var autocomplete = new google.maps.places.Autocomplete(input);
            autocomplete.setFields(
                ['address_components', 'geometry', 'icon', 'name']);
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
        </div>
	</div>
</div>
@stop
@section('layout', 'container-fluid')
@section('content')
<div class="col-12 py-5">
    <div class="row justify-content-between">
        <div class="hidden-sm col-6 pl-0">
            <div class="background-image background-left" style="background-image: url(/images/home/video.svg); min-height: 750px;"></div>
        </div>
        <div class="col-12 col-md-6">
            <div class="row">
                <div class="col-12 col-md-8">
                    <h3 class="headline-15 text-lowercase">
                        {{ __('lets organise') }}
                    </h3>
                    <h3 class="headline-3">
                        {{ __('Your daily life') }}
                    </h3>
                    <div class="py-4 mt-5">
                        <ul class="list icon-list p-0 float-left">
                            <li class="list-item icon-list-item d-flex justify-content-between pb-5">
                                <span class="icon icon-team"></span>
                                <div class="list-item__text pl-4">
                                    <h4 class="headline-4 mb-2 text-left">{{ __('Task Management') }}</h4>
                                    <p class="lead text-left">It is a long established fact that</p>
                                </div>
                            </li>
                            <li class="list-item icon-list-item d-flex justify-content-between pb-5">
                                <span class="icon icon-team"></span>
                                <div class="list-item__text pl-4">
                                    <h4 class="headline-4 mb-2 text-left">{{ __('Task Management') }}</h4>
                                    <p class="lead text-left">It is a long established fact that</p>
                                </div>
                            </li>
                            <li class="list-item icon-list-item d-flex justify-content-between pb-5">
                                <span class="icon icon-team"></span>
                                <div class="list-item__text pl-4">
                                    <h4 class="headline-4 mb-2 text-left">{{ __('Task Management') }}</h4>
                                    <p class="lead text-left">It is a long established fact that</p>
                                </div>
                            </li>
                        </ul>
                    </div>  
                </div>
                <div class="hidden-sm col-md-4"></div>
            </div>
        </div>
    </div>
</div>
@stop
