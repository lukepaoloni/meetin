<nav class="navbar navbar-expand-lg navbar-light navbar-meetin row">
    <a href="#" class="navbar-brand">
        <h2><?= __( 'Meetin' ); ?></h2>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div id="navbarContent" class="collapse navbar-collapse">
        {{ menu('main', 'bootstrap4') }}
        <div class="separator"></div>
        <ul class="navbar-nav ml-lg-5 ml-md-0">
            <li class="nav-item mx-3">
                <a href="{{ url('login') }}" class="nav-link">
                    <span>{{ __('Login') }}</span>
                </a>
            </li>
            <li class="nav-item mx-3">
                <a href="{{ url('register') }}" class="btn btn-primary">
                    <span>{{ __('Sign up') }}</span>
                </a>
            </li>
        </ul>
    </div>
</nav>
