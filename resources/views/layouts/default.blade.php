<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    @include('partials._head')
</head>
<body class="@yield('body')">
    <div id="app">
        <header class="bg-white">
            <div class="meetin-navbar-1 pt-lg-3">
                <div class="container">
                    @include('components.nav')
                </div>
            </div>
            @yield('header')
        </header>

        <div class="@yield('layout')">
            @include('components.alerts')
            <div class="row">
                @yield('content')
            </div>
        </div>

        @include('partials._footer')
    </div>
    @yield('scripts')
    @include('assets.scripts')
</body>
</html>
