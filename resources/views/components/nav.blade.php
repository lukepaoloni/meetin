@php
    $menuItems = TCG\Voyager\Facades\Voyager::model('Menu')->display('main', '_json');
@endphp
<nav class="navbar navbar-expand-lg navbar-light navbar-meetin row">
    @include('components.brand')
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div id="navbarContent" class="collapse navbar-collapse">
        @if (count($menuItems) > 0)
            {{ menu('main', 'bootstrap4') }}
            <div class="separator"></div>
        @endif
        @guest
            <ul class="navbar-nav{{ (count($menuItems) == 0) ? ' ml-auto' : ' ml-lg-5 ml-md-0' }}">
                <li class="nav-item mx-3">
                    <a href="{{ route('login') }}" class="nav-link">
                        <span>{{ __('Login') }}</span>
                    </a>
                </li>
                @if (Route::has('register'))
                    <li class="nav-item mx-3">
                        <a href="{{ route('register') }}" class="btn btn-primary">
                            <span>{{ __('Sign up') }}</span>
                        </a>
                    </li>
                @endif
            </ul>
        @else
            <ul class="navbar-nav{{ (count($menuItems) == 0) ? ' ml-auto' : ' ml-lg-5 ml-md-0' }}">
                <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        {{ Auth::user()->name }} <span class="caret"></span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </div>
                </li>
            </ul>
        @endguest
    </div>
</nav>
