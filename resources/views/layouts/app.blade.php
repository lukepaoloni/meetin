<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    @include('partials._head')
</head>
<body class="@yield('body') bg-light">
    <div id="app">
        <header class="container-fluid">
            @include('components.nav2')
        </header>

        <div class="meetin-app">
            @include('components.alerts')
            @yield('content')
        </div>
    </div>
    @include('assets.scripts')
    @yield('scripts')
</body>
</html>
