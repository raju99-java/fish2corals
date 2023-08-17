@extends('layouts.front')
@section('content')
@include('partials.global.common-header')

    <!-- Breadcrumb Section Start -->
    <section class="breadscrumb-section pt-0">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="breadscrumb-contain">
                        <h2>Change Password</h2>
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="{{ route('front.index') }}">
                                        <i class="fa-solid fa-house"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">Change Password</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

   <!--==================== Registration Form Start ====================-->
    <section class="log-in-section section-b-space forgot-section">
        <div class="container-fluid-lg w-100">
            <div class="row">
                <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                    <div class="image-contain">
                        <img src="{{asset('assets/front-end/assets/images/inner-page/forgot.png')}}" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-xxl-4 col-xl-5 col-lg-6 col-sm-8 mx-auto">
                    <div class="d-flex align-items-center justify-content-center h-100">
                        <div class="log-in-box">
                            <div class="log-in-title">
                                <h3>Welcome To Fish2 Corals</h3>
                                <h4>Change your password</h4>
                            </div>

                            <div class="input-box">
                                @include('includes.admin.form-login')
                                <form class="row g-4" id="changepass" action="{{route('user.change.password')}}" method="POST">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="file_token" value="{{$token}}">

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating log-in-form">
                                            <input type="password" class="form-control" id="newpass" name="newpass" placeholder="New Password" required="">
                                            <label for="newpass">New Password</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating log-in-form">
                                            <input type="password" class="form-control" id="renewpass" name="renewpass" placeholder="Confirm Password" required="">
                                            <label for="renewpass">Confirm Password</label>
                                        </div>
                                    </div>

                                    <input class="authdata" type="hidden" value="{{ __('Changing...')}}">
                                    <div class="col-12">
                                        <button class="btn btn-animation w-100" type="submit" name="register" value="Change Password" >Change
                                            Password</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <!--==================== Registration Form Start ====================-->

@include('partials.global.common-footer')
@endsection
@section('script')
@endsection
