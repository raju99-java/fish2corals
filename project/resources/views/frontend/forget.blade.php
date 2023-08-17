@extends('layouts.front')
@section('content')
@include('partials.global.common-header')

   <!-- Breadcrumb Section Start -->
   <section class="breadscrumb-section pt-0">
      <div class="container-fluid-lg">
         <div class="row">
               <div class="col-12">
                  <div class="breadscrumb-contain">
                     <h2>Forgot Password</h2>
                     <nav>
                           <ol class="breadcrumb mb-0">
                              <li class="breadcrumb-item">
                                 <a href="{{ route('front.index') }}">
                                       <i class="fa-solid fa-house"></i>
                                 </a>
                              </li>
                              <li class="breadcrumb-item active">Forgot Password</li>
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
                              
                              <h4>Forgot your password</h4>
                           </div>
                           
                           <div class="input-box">
                              @include('includes.admin.form-login')
                              <form class="row g-4" id="forgotform" action="{{route('user.forgot.submit')}}" method="POST" >
                                 {{ csrf_field() }}
                                    <div class="col-12">
                                       <div class="form-floating theme-form-floating log-in-form">
                                          <input type="email" class="form-control" placeholder="{{ __('Enter Email Address') }}" id="reg_email" name="email" required="">
                                          <label for="email">Email Address</label>
                                       </div>
                                    </div>
                                    <p>{{ __('A password will be sent to your email address.') }}</p>
                                    <input class="authdata" type="hidden" value="{{ __('Checking...')}}">
                                    <div class="col-12">
                                       <button class="btn btn-animation w-100" type="submit" name="register" value="Forgot Password" >Forgot
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
