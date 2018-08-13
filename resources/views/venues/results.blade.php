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
                    {{ $venue->address_1 }}, {{ $venue->address_2 }}, {{ $venue->city }}, {{ $venue->post_code }}
                </p>
                <p class="text-3 text-primary">
                    {{ __('Distance: 2.5 miles') }}
                </p>
            </div>
            <div class="meetin-result__actions">
                <p>{{ $venue->stars }}</p>
                <a href="" class="btn btn-primary">
                    <span>{{ __('More') }}</span>
                </a>
            </div>
        </div>
    @endforeach
</div>
