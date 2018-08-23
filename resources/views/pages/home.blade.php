@extends('layouts.default')
@section('body', 'bg-white')
@section('title', 'Home')
@section('scripts-head')
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf0pnTLEPq5x2VV0WWVn5OKeRjicjtx4Y&libraries=places"></script>
@stop
@section('scripts-footer')
    <script>
        var input = document.getElementById('venue-search__input');
        var autocomplete = new google.maps.places.Autocomplete(input);
    </script>
@stop

@section('header')
<div class="landing-page">
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
        <div class="row align-items-center mt-5">
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
@section('layout', 'home-content')
@section('content')
<section class="three-steps">
    <div class="container-fluid py-5">
        <div class="row justify-content-between align-items-center">
            <div class="hidden-sm col-6 pl-0">
                <div class="background-image background-left bg-style-1" style="background-image: url(/images/home/video.svg);"></div>
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
                                        <h4 class="headline-4 text-left">{{ __('Task Management') }}</h4>
                                        <p class="lead text-left">It is a long established fact that</p>
                                    </div>
                                </li>
                                <li class="list-item icon-list-item d-flex justify-content-between pb-5">
                                    <span class="icon icon-team"></span>
                                    <div class="list-item__text pl-4">
                                        <h4 class="headline-4 text-left">{{ __('Task Management') }}</h4>
                                        <p class="lead text-left">It is a long established fact that</p>
                                    </div>
                                </li>
                                <li class="list-item icon-list-item d-flex justify-content-between pb-5">
                                    <span class="icon icon-team"></span>
                                    <div class="list-item__text pl-4">
                                        <h4 class="headline-4 text-left">{{ __('Task Management') }}</h4>
                                        <p class="lead text-left">It is a long established fact that</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="hidden-sm col-md-4 pr-0">
                        <div class="background-image background-right bg-style-1" style="background-image: url(images/home/right-blue-shape.svg);"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="laptop-showcase">
    <div class="container mt-5 py-5">
        <div class="row justify-content-between align-items-center">
            <div class="col-12 col-md-6">
                <h3 class="headline-15">
                    {{ __('An app that') }}
                </h3>
                <h3 class="headline-3">
                    {{ __('Makes life easy') }}
                </h3>
                <div class="mt-5">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie auctor scelerisque. Suspendisse et eleifend erat, in egestas quam.</p>
                    <p>Sed non volutpat enim, vel maximus nunc. Praesent neque magna, volutpat id dapibus et, pretium egestas elit.</p>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="laptop-image">
                    <img src="images/home/laptop-image.png" class="laptop-image img-fluid" />
                </div>
            </div>
        </div>
    </div>
</section>
<section class="stats">
    <div class="bg-primary pt-8 pb-15 relative">
        <div class="shape-round">
            <div class="icon icon-down arrow-down"></div>
            <div class="radiant"></div>
            <div class="radiant"></div>
            <div class="radiant"></div>
        </div>
        <div class="container pt-5">
            <div class="row justify-content-center align-items-center text-center">
                <div class="col-12">
                    <h3 class="headline-8 font-white">
                        {{ __('Conference Planner') }}
                    </h3>
                    <h4 class="headline-13 font-white mb-5">
                        {{ __('that fulfill your needs') }}
                    </h4>
                    <a href="" class="btn btn-white btn-shadow btn btn-white btn-shadow mb-7-5">
                        <span>{{ __('Main features') }}</span>
                    </a>
                    <ul class="image-list image-overlap">
                        <li class="image-item">
                            <img src="images/home/image-item.png" alt="" class="image-fluid">
                        </li>
                        <li class="image-item">
                            <img src="images/home/image-item.png" alt="" class="image-fluid">
                        </li>
                        <li class="image-item">
                            <img src="images/home/image-item.png" alt="" class="image-fluid">
                        </li>
                        <li class="image-item">
                            <img src="images/home/image-item.png" alt="" class="image-fluid">
                        </li>
                        <li class="image-item">
                            <img src="images/home/image-item.png" alt="" class="image-fluid">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-white py-15 box-shadow-3">
        <div class="container">
            <div class="row justify-content-center align-items-center pt-15 text-center">
                <div class="col-3">
                    <h5 class="headline-5">
                        {{ __('Active users') }}
                    </h5>
                    <h5 class="headline-6">
                        {{ __('6284827') }}
                    </h5>
                </div>
                <div class="col-3">
                    <h5 class="headline-5">
                        {{ __('Active users') }}
                    </h5>
                    <h5 class="headline-6">
                        {{ __('6284827') }}
                    </h5>
                </div>
                <div class="col-3">
                    <h5 class="headline-5">
                        {{ __('Active users') }}
                    </h5>
                    <h5 class="headline-6">
                        {{ __('6284827') }}
                    </h5>
                </div>
                <div class="col-3">
                    <h5 class="headline-5">
                        {{ __('Active users') }}
                    </h5>
                    <h5 class="headline-6">
                        {{ __('6284827') }}
                    </h5>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="reviews mb-5 relative py-5" style="background-image: url(/images/home/iphone-app.png);background-repeat: no-repeat;background-position: right top;">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-6 py-5">
                <h3 class="headline-15">
                    {{ __('What People Say') }}
                </h3>
                <h3 class="headline-3">
                    {{ __('Reviews') }}
                </h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie auctor scelerisque. Suspendisse et eleifend erat, in egestas quam. Suspendisse et eleifend erat, in egestas quam.
                </p>
                <div class="mt-3 text-right">
                    <h6 class="headline-7">{{ __('Daniel') }}</h6>
                    <p>{{ __('Project Manager') }}</p>
                </div>
            </div>
        </div>
    </div>
</section>
@stop
