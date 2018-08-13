<a href="" class="venue-modal">
	<div class="venue-modal__img">
		<img src="http://via.placeholder.com/75x75" alt="">
	</div>
	<div class="venue-modal__content">
		<div class="venue-modal__name">
			{{ $venue->name }}
		</div>
		<div class="venue-modal__ratings">
	        @for($i = 0; $i < $venue->getMaxStars(); $i++)
	            @if ($venue->stars > $i)
	                <span class="icon icon-star"></span>
	            @else
	                <span class="icon-star-empty"></span>
	            @endif
	        @endfor
		</div>
		<div class="venue-modal__address">
		 	{{ $venue->getAddress() }}	
		</div>
	</div>
</a>