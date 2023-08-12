@extends('layouts.front')

@section('content')
@include('partials.global.common-header')

        <!-- Breadcrumb Section Start -->
        <section class="breadscrumb-section pt-0">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="breadscrumb-contain">
                            <h2>{{ __('Register') }}</h2>
                            <nav>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="{{ route('front.index') }}">
                                            <i class="fa-solid fa-house"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item active">{{ __('Register') }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->


        <section class="log-in-section section-b-space">
            <div class="container-fluid-lg w-100">
                <div class="row">
                    <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                        <div class="image-contain">
                            <img src="{{asset('assets/front-end/assets/images/inner-page/sign-up.png')}}" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-xxl-6 col-xl-5 col-lg-6 col-sm-8 mx-auto">
                        <div class="log-in-box">
                            <div class="log-in-title">
                                <h3>Welcome To Fish2 Corals Shop</h3>
                                <h4>Create New Account</h4>
                            </div>

                            <div class="input-box">
                                @include('includes.admin.form-login')
                                <form class="row g-4" id="registerform" action="{{route('user-register-submit')}}" method="POST">
                                    @csrf
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="text" class="form-control" id="fullname" name="name" placeholder="Full Name">
                                            <label for="fullname">Full Name</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
                                            <label for="email">Email Address</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="text" class="form-control" id="tel" name="phone" placeholder="Phone Number">
                                            <label for="tel">Phone Number</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="text" class="form-control" id="address" name="address" placeholder="Address">
                                            <label for="address">Address</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                                            <label for="password">Password</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="password" class="form-control" id="cpassword" name="password_confirmation" placeholder="Confirm Password">
                                            <label for="cpassword">Confirm Password</label>
                                        </div>
                                    </div>

                                    @if($gs->is_capcha == 1)
                                    <div class="col-12">
                                        {!! NoCaptcha::display() !!}
                                        {!! NoCaptcha::renderJs() !!}
                                        @error('g-recaptcha-response')
                                        <p class="my-2">{{$message}}</p>
                                        @enderror
                                    </div>
                                    @endif

                                    <input id="processdata" type="hidden" value="{{ __('Processing...') }}">

                                    <div class="col-12">
                                        <button class="btn btn-animation w-100" type="submit">Sign Up</button>
                                    </div>
                                </form>
                            </div>

                            <div class="sign-up-box">
                                <h4>Already have an account?</h4>
                                <a href="{{ route('user.login') }}">Log In</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-7 col-xl-6 col-lg-6"></div>
                </div>
            </div>
        </section>


@include('partials.global.common-footer')
@endsection

@section('script')


@endsection
