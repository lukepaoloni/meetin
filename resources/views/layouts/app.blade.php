<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    @include('partials._head')
</head>
<body class="@yield('body') bg-light">
    <div id="app">
        <header>
            <div class="container-fluid">
                @include('components.nav')
            </div>
        </header>

        <div class="@yield('layout')">
            @include('components.alerts')
            <div class="row">
                @yield('content')
            </div>
        </div>

        @include('partials._footer')
    </div>
    @include('assets.scripts')
    @yield('scripts')
</body>
</html>