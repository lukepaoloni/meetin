<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    @include('partials._head')
</head>
<body class="@yield('body')">
<div id="app">
    <div class="meetin-app">
        @include('components.alerts')
        @yield('content')
    </div>
</div>
@include('assets.scripts')
@yield('scripts')
</body>
</html>
