@extends('layouts.front')

@section('content')
@include('partials.global.common-header')

    <!-- Breadcrumb Section Start -->
    <section class="breadscrumb-section pt-0">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="breadscrumb-contain">
                        <h2 class="mb-2">{{ __('Login') }}</h2>
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="{{ route('front.index') }}">
                                        <i class="fa-solid fa-house"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">{{ __('Login') }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

       <!-- log in section start -->
        <section class="log-in-section background-image-2 section-b-space">
            <div class="container-fluid-lg w-100">
                <div class="row">
                    <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                        <div class="image-contain">
                            <img src="{{asset('assets/front-end/assets/images/inner-page/log-in.png')}}" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-xxl-6 col-xl-5 col-lg-6 col-sm-8 mx-auto">
                        <div class="log-in-box">
                            <div class="log-in-title">
                                <h3>Welcome To Fish2 CoralsShop</h3>
                                
                                <h4>Log In Your Account</h4>
                            </div>

                                @if(Session::has('auth-modal'))
                            <div class="alert alert-danger alert-dismissible">

                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            {{ Session::get('auth-modal') }}
                            </div>
                            @endif

                            @if(Session::has('forgot-modal'))
                            <div class="alert alert-success alert-dismissible">

                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            {{ Session::get('forgot-modal') }}
                            </div>
                            @endif

                            <div class="input-box">
                                @include('includes.admin.form-login')
                                <form class="row g-4 woocommerce-form-login" id="loginform" action="{{ route('user.login.submit') }}" method="POST">
                                    @csrf
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating log-in-form">
                                            <input type="email" class="form-control" name="email" id="username" placeholder="{{ __('Type Email Address') }}" required="">
                                            <label for="email">Email Address</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating log-in-form">
                                            <input type="password" class="form-control" name="password" id="password" placeholder="{{ __('Type Password') }}" required="">
                                            <label for="password">Password</label>
                                        </div>
                                    </div>

                                    <input type="hidden" name="modal" value="1">
                                    @if(Session::has('auth-modal'))
                                    <input type="hidden" name="auth_modal" value="1">
                                    @endif
                                    <input id="authdata" type="hidden" value="{{ __('Authenticating...') }}">

                                    <div class="col-12">
                                        <button type="submit" class="btn btn-animation w-100 justify-content-center woocommerce-form-login__submit btn btn-primary border-0 rounded-0 submit-btn float-none w-100" name="login" value="Log in">LogIn</button>
                                    </div>
                                </form>

                            </div>

                            <div class="sign-up-box">
                                <a href="{{ route('user.forgot') }}" class="forgot-password">Forgot Password?</a>
                            </div>

                            <div class="sign-up-box">
                                <h4>Don't have an account?</h4>
                                <a href="{{ route('user.register') }}">Sign Up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <!-- log in section end -->



@includeIf('partials.global.common-footer')
@endsection

@section('script')


@endsection
