@extends('layouts.single')
@section('title', 'Login')
@section('scripts-head')
@stop
@section('scripts-footer')
@stop

@section('content')
    <div class="fullscreen bg-image" style="background-image: url({{ @asset('images/login/workplace.jpg') }})">
        <div class="container-fluid">
            <div class="row">
                <div class="col col-12 col-md-4 left-panel">
                    @include('components.brand')
                </div>
                <div class="col col-12 col-md-8 right-panel bg-light">
                    <div class="row">
                        <div class="col col-12 col-md-10 col-lg-6 mx-auto">
                            {!! Form::open(['url' => 'login']) !!}
                            <div class="form-group">
                                {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => 'Email']) !!}
                            </div>
                            <div class="form-group">
                                {!! Form::password('password', ['class' => 'form-control', 'placeholder' => 'Password']) !!}
                            </div>
                            <div class="form-group">
                                {!! Form::submit('Login', ['class' => 'btn btn-primary']) !!}
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
