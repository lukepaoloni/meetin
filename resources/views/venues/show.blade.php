@extends('layouts.default')
@section('title', $venue->name)
@section('layout', 'container')
@section('content')
<div class="col-12">
    <div class="row justify-content-between">
        <div class="mt-5 col-8">
            <div class="row">
                <div class="p-5 bg-white box-shadow rounded col-12">
                    <div class="venue-panel">
                        <div class="venue-panel__title">
                            <h1 class="page-title headline-3">
                            {{ $venue->name }}
                            </h1>
                            <p class="lead mb-3">
                                {{ $venue->getAddress() }}
                            </p>
                        </div>
                        <div class="venue-panel__rating">
                            <div class="star-ratings">
                                @for($i = 0; $i < $venue->getMaxStars(); $i++)
                                    @if ($venue->rating() > $i)
                                        <span class="icon icon-star"></span>
                                    @else
                                        <span class="icon-star-empty"></span>
                                    @endif
                                @endfor
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="venue-description">
                        {!! $venue->overview !!}
                    </div>
                </div>
                <div class="p-5 bg-white mt-5 col-12 box-shadow rounded">
                    <div class="venue-panel row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12">
                                    <div class="venue-panel__title mb-5">
                                        <h3 class="headline-8 font-dark">
                                        {{ __('Overview') }}
                                        </h3>
                                        <hr>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="venue-panel__rating mb-3">
                                        <div class="number-rating">
                                            <h4 class="headline-4 m-0">{{ $venue->rating() }}</h4>
                                        </div>
                                        <div class="star-ratings ml-3">
                                            @for($i = 0; $i < $venue->getMaxStars(); $i++)
                                                @if ($venue->rating() > $i)
                                                    <span class="icon icon-star"></span>
                                                @else
                                                    <span class="icon-star-empty"></span>
                                                @endif
                                            @endfor
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="venue-panel__features mt-2">
                                        <ul class="list-unstyled">
                                            @foreach ($venue->features() as $feature)
                                                <li class="list-item">
                                                    <p class="mb-2">{{ $feature->feature }}</p>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                <div class="col">
                                    <ul class="list-unstyled overview-list">
                                        <li class="list-item">
                                            <i class="fas fa-car fa-2x fa-style-1 mr-3"></i>
                                            <div class="progress" style="height: 20px;">
                                                <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 55%;"></div>
                                            </div>
                                            <p class="progress-percentage mb-0 ml-3">
                                                {{ __('55%') }}
                                            </p>
                                        </li>
                                        <li class="list-item">
                                            <i class="fas fa-utensils fa-2x fa-style-1 mr-3"></i>
                                            <div class="progress" style="height: 20px;">
                                                <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 55%;"></div>
                                            </div>
                                            <p class="progress-percentage mb-0 ml-3">
                                                {{ __('55%') }}
                                            </p>
                                        </li>
                                        <li class="list-item">
                                            <i class="fas fa-compass fa-2x fa-style-1 mr-3"></i>
                                            <div class="progress" style="height: 20px;">
                                                <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 55%;"></div>
                                            </div>
                                            <p class="progress-percentage mb-0 ml-3">
                                                {{ __('55%') }}
                                            </p>
                                        </li>
                                        <li class="list-item">
                                            <i class="fas fa-hotel fa-2x fa-style-1 mr-3"></i>
                                            <div class="progress" style="height: 20px;">
                                                <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 55%;"></div>
                                            </div>
                                            <p class="progress-percentage mb-0 ml-3">
                                                {{ __('55%') }}
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col">
                                    <div class="venue-map">
                                        <img src="https://trip-raster.citymaps.io/staticmap?scale=2&zoom=17&size=378x270&language=en_US&center=21.073376,-86.775665&markers=icon:http%3A%2F%2Fc1.tacdn.com%2Fimg2%2Fmaps%2Ficons%2Fresponsive_map_pins_v1%2FH_pin.png|21.073376,-86.775665" class="img-fluid" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-5 bg-white mt-5 col-12 box-shadow rounded">
                    <div class="row">
                        <div class="col-12">
                            <div class="venue-panel__title d-flex align-items-center justify-content-between">
                                <h3 class="headline-8 font-dark m-0">
                                {{ __('Reviews') }} <span class="review-count">({{ $venue->reviews()->count() }})</span>
                                </h3>
                                <button class="btn btn-primary" type="button">
                                    <span>{{ __('Write a review') }}</span>
                                </button>
                            </div>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <ul class="reviews list-unstyled">
                                {{--@foreach($venue->reviews() as $review)--}}
                                <li class="review">
                                    <div class="review-col">
                                        <div class="user-avatar" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-s/01/2e/70/79/avatar060.jpg)"></div>
                                        <p class="user">
                                            {{ __('John D') }}
                                        </p>
                                        <div class="user-stats">
                                            <i class="fas fa-heart"></i>
                                        </div>
                                    </div>
                                    <div class="review-col">
                                        <div class="review-content">
                                            <div class="review-stars">
                                               @for($i = 0; $i < $venue->getMaxStars(); $i++)
                                                    @if (4 > $i)
                                                        <span class="icon icon-star"></span>
                                                    @else
                                                        <span class="icon-star-empty"></span>
                                                    @endif
                                                @endfor
                                            </div>
                                            <div class="review-timestamp">{{ __('Reviewed 1 week ago') }}</div>
                                            <h4 class="headline-4">{{ __('A family place') }}</h4>
                                            <p class="review-p">
                                                The resort is fantastic, the staff very friendly and helpful, everyone but most of all the one the beach bar. The beach is huge, clean and comfortable. Everything is new and clean, beautiful ocean and pull view. We had a great time!!
                                            </p>
                                            <button class="btn-thankuser btn" type="button">
                                                <i class="far fa-thumbs-up"></i>
                                                <span>{{ __('John D') }}</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="review-col">
                                        <button class="btn-flag btn" type="button">
                                            <i class="fas fa-flag"></i>
                                        </button>
                                    </div>
                                </li>
                                {{--@endforeach--}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-white mt-5 col-3 box-shadow rounded relative p-0">
            <div class="venue-image__slider">
                <div class="venue-slider__img venue-slider__img1" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-o/0b/9d/7a/90/habitacion-junior-suite.jpg)"></div>
            </div>
            <div class="col-12 mt-5">
                <ul class="venue-features list-unstyled">
                    <li class="feature-item">
                        <p><span class="headline-12 mr-3">{{ __('Meeting Capacity:') }}</span>{{ $venue->meeting_capacity }}</p>
                    </li>
                    <li class="feature-item">
                        <p><span class="headline-12 mr-3">{{ __('Meeting Room Disabled Access:') }}</span>{{ $venue->meetingRoomDisabledAccess() }}</p>
                    </li>
                    <li class="feature-item">
                        <p><span class="headline-12 mr-3">{{ __('No. of Meeting Rooms:') }}</span>{{ $venue->no_meeting_rooms }}</p>
                    </li>
                    <li class="feature-item">
                        <p><span class="headline-12 mr-3">{{ __('Catering Capacity:') }}</span>{{ $venue->catering_capacity }}</p>
                    </li>
                    <li class="feature-item">
                        <p><span class="headline-12 mr-3">{{ __('No. of Bedrooms:') }}</span>{{ $venue->no_bedrooms }}</p>
                    </li>
                    <li class="feature-item">
                        <p><span class="headline-12 mr-3">{{ __('Share:') }}</span></p>
                        <div class="share">
                            <div class="sharethis-inline-share-buttons"></div>
                        </div>
                    </li>
                </ul>
                <hr class="mb-5">
                <div class="related-venue">
                    <p class="headline-12">{{ __('You might be interested in...') }}</p>
                    <ul class="related-venues list-unstyled pl-3">
                        <li class="related-venue">
                            <div class="venue-thumbnail" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-o/0b/9d/7a/90/habitacion-junior-suite.jpg);"></div>
                            <div class="related-venue-content">
                                <a href="" class="related-venue-link">
                                    {{ __('The Grand Hotel') }}
                                </a>
                                <div class="review-stars">
                                   @for($i = 0; $i < $venue->getMaxStars(); $i++)
                                        @if ($venue->stars > $i)
                                            <span class="icon icon-star"></span>
                                        @else
                                            <span class="icon-star-empty"></span>
                                        @endif
                                    @endfor
                                </div>
                            </div>
                        </li>
                        <li class="related-venue">
                            <div class="venue-thumbnail" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-o/0b/9d/7a/90/habitacion-junior-suite.jpg);"></div>
                            <div class="related-venue-content">
                                <a href="" class="related-venue-link">
                                    {{ __('The Grand Hotel') }}
                                </a>
                                <div class="review-stars">
                                   @for($i = 0; $i < $venue->getMaxStars(); $i++)
                                        @if ($venue->stars > $i)
                                            <span class="icon icon-star"></span>
                                        @else
                                            <span class="icon-star-empty"></span>
                                        @endif
                                    @endfor
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@stop
