@extends('layouts.default')
@section('title', $venue->name)
@section('layout', 'container')
@section('header')
@stop
@section('content')
<div class="col-12">
    <div class="row justfy-between">
        <div class="p-5 bg-white mt-5 col-7 box-shadow">
            <div class="venue-panel">
                <div class="venue-panel__title">
                    <h1 class="page-title">
                    {{ $venue->name }}
                    </h1>
                    <p class="lead">
                        {{ $venue->getAddress() }}
                    </p>
                </div>
                <div class="venue-panel__rating">
                    <div class="star-ratings">
                        @for($i = 0; $i < $venue->getMaxStars(); $i++)
                        @if ($venue->stars > $i)
                        <span class="icon icon-star"></span>
                        @else
                        <span class="icon-star-empty"></span>
                        @endif
                        @endfor
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-white mt-5 col-4 box-shadow">
            
        </div>  
    </div>
</div>
@stop