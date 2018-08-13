<div class="meetin-results">
    <div class="meetin-search__results-header">
        <h3 class="text-uppercase headline-11">
            {{ __('Found ') . $count . __(' results') }}
        </h3>
    </div>
    <div class="meetin-search__results">
        @foreach($venues as $venue)
            <div class="meetin-search__result">
                <div class="meetin-result__img">
                    <img src="http://via.placeholder.com/250x250" alt="">
                </div>
                <div class="meetin-result__content">
                    <h4 class="headline-12">
                        {{ $venue->name }}
                    </h4>
                    <p class="lead">
                        {{ $venue->getAddress() }}
                    </p>
                    <p class="text-3 text-primary distance">
                        {{ __('Distance: 2.5 miles') }}
                    </p>
                </div>
                <div class="meetin-result__actions">
                    <div class="star-ratings">
                        @for($i = 0; $i < $venue->getMaxStars(); $i++)
                            @if ($venue->stars > $i)
                                <span class="icon icon-star"></span>
                            @else
                                <span class="icon-star-empty"></span>
                            @endif
                        @endfor
                    </div>
                    <a href="/venues/{{ $venue->id }}" class="btn btn-primary text-uppercase">
                        <span>{{ __('More') }}</span>
                        <span class="icon icon-next"></span>
                    </a>
                </div>
            </div>
        @endforeach
    </div>
</div>