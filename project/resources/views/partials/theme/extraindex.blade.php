<!-- Service Section Start -->
<section class="service-section section-b-space">
    <div class="container-fluid-lg">
        <div class="row g-3 row-cols-xxl-5 row-cols-lg-3 row-cols-md-2">
            <div>
                <div class="service-contain-2">
                    <svg class="icon-width">
                        <use xlink:href="../assets/svg/svg/service-icon-4.svg#shipping"></use>
                    </svg>
                    <div class="service-detail">
                        <h3>Free Shipping</h3>
                        <h6 class="text-content">Free Shipping world wide</h6>
                    </div>
                </div>
            </div>
            <div>
                <div class="service-contain-2">
                    <svg class="icon-width">
                        <use xlink:href="../assets/svg/svg/service-icon-4.svg#service"></use>
                    </svg>
                    <div class="service-detail">
                        <h3>24 x 7 Service</h3>
                        <h6 class="text-content">Online Service For 24 x 7</h6>
                    </div>
                </div>
            </div>
            <div>
                <div class="service-contain-2">
                    <svg class="icon-width">
                        <use xlink:href="../assets/svg/svg/service-icon-4.svg#pay"></use>
                    </svg>
                    <div class="service-detail">
                        <h3>Online Pay</h3>
                        <h6 class="text-content">Online Payment Avaible</h6>
                    </div>
                </div>
            </div>
            <div>
                <div class="service-contain-2">
                    <svg class="icon-width">
                        <use xlink:href="../assets/svg/svg/service-icon-4.svg#offer"></use>
                    </svg>
                    <div class="service-detail">
                        <h3>Festival Offer</h3>
                        <h6 class="text-content">Super Sale Upto 50% off</h6>
                    </div>
                </div>
            </div>
            <div>
                <div class="service-contain-2">
                    <svg class="icon-width">
                        <use xlink:href="../assets/svg/svg/service-icon-4.svg#return"></use>
                    </svg>
                    <div class="service-detail">
                        <h3>100% Original</h3>
                        <h6 class="text-content">100% Money Back</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Service Section End -->

<!-- Footer Start -->
<footer class="section-t-space footer-section-2 footer-color-2">
    <div class="container-fluid-lg">
        <div class="main-footer">
            <div class="row g-md-4 gy-sm-5">
                <div class="col-xxl-3 col-xl-4 col-sm-6">
                    <a href="{{ route('front.index') }}" class="foot-logo theme-logo text-white">
                        <img src="{{ asset('assets/images/'.$gs->footer_logo) }}" class="img-fluid blur-up lazyload" alt="">
                    </a>
                    <p class="information-text information-text-2">it is a long established fact that a reader
                        will
                        be distracted by the readable content.</p>
                    <ul class="social-icon">

                        @foreach(DB::table('social_links')->where('user_id',0)->where('status',1)->get() as $link)
                            <li class="light-bg">
                                <a href="{{ $link->link }}" class="footer-link-color">
                                    <i class="{{ $link->icon }}"></i>
                                </a>
                            </li>
                        @endforeach
                        
                    </ul>
                </div>

                <div class="col-xxl-2 col-xl-4 col-sm-6">
                    <div class="footer-title">
                        <h4 class="text-white">Quick Links</h4>
                    </div>
                    <ul class="footer-list footer-contact footer-list-light">
                        <li>
                            <a href="{{ route('front.index') }}" class="light-text">Home</a>
                        </li>
                        <li>
                            <a href="{{route('front.about')}}" class="light-text">About Us</a>
                        </li>
                        <li>
                            <a href="{{ route('front.category') }}" class="light-text">Shop</a>
                        </li>
                        <li>
                            <a href="{{ route('front.blog') }}" class="light-text">Blog</a>
                        </li>
                        <li>
                            <a href="{{ route('front.contact') }}" class="light-text">Contact Us</a>
                        </li>
                    </ul>
                </div>

                <div class="col-xxl-2 col-xl-4 col-sm-6">
                    <div class="footer-title">
                        <h4 class="text-white">Useful Link</h4>
                    </div>
                    <ul class="footer-list footer-list-light footer-contact">
                        <li>
                            <a href="{{ route('user-orders') }}" class="light-text">Your Order</a>
                        </li>
                        <li>
                            <a href="{{ route('user-dashboard') }}" class="light-text">Your Account</a>
                        </li>
                        <li>
                            <a href="{{ route('front.faq') }}" class="light-text">FAQ</a>
                        </li>
                    </ul>
                </div>

                <div class="col-xxl-2 col-xl-4 col-sm-6">
                    <div class="footer-title">
                        <h4 class="text-white">Categories</h4>
                    </div>
                    <ul class="footer-list footer-list-light footer-contact">

                        @foreach (DB::table('categories')->where('language_id',$langg->id)->get()->take(6) as $cate)
                            <li>
                                <a href="{{route('front.category', $cate->slug)}}{{!empty(request()->input('search')) ? '?search='.request()->input('search') : ''}}" class="light-text">{{ $cate->name }}</a>
                            </li>
                        @endforeach

                    </ul>
                </div>

                <div class="col-xxl-3 col-xl-6 col-sm-6">
                    <div class="footer-title">
                        <h4 class="text-white">Address</h4>
                    </div>
                    <ul class="footer-address footer-contact">
                        

                        @if($ps->street != null)
                            <li>
                                <a href="javascript:void(0)" class="light-text">
                                    <div class="inform-box flex-start-box">
                                        <i data-feather="map-pin"></i>
                                        <p>{{ $ps->street }}</p>
                                    </div>
                                </a>
                            </li>
                        @endif

                        @if($ps->phone != null)
                            <li>
                                <a href="tel:{{ $ps->phone }}" class="light-text">
                                    <div class="inform-box">
                                        <i data-feather="phone"></i>
                                        <p>Call us: {{ $ps->phone }}</p>
                                    </div>
                                </a>
                            </li>
                        @endif

                        @if($ps->email != null)
                            <li>
                                <a href="mailto:{{ $ps->email }}" class="light-text">
                                    <div class="inform-box">
                                        <i data-feather="mail"></i>
                                        <p>Email Us: {{ $ps->email }}</p>
                                    </div>
                                </a>
                            </li>
                        @endif

                    </ul>
                </div>
            </div>
        </div>

        <div class="sub-footer sub-footer-lite section-b-space section-t-space">
            <div class="left-footer">
                <p class="light-text">{{ $gs->copyright }}</p>
            </div>

            <ul class="payment-box">
                <li>
                    <img src="{{asset('assets/front-end/assets/images/icon/paymant/visa.png')}}" class="blur-up lazyload" alt="">
                </li>
                <li>
                    <img src="{{asset('assets/front-end/assets/images/icon/paymant/discover.png')}}" alt="" class="blur-up lazyload">
                </li>
                <li>
                    <img src="{{asset('assets/front-end/assets/images/icon/paymant/american.png')}}" alt="" class="blur-up lazyload">
                </li>
                <li>
                    <img src="{{asset('assets/front-end/assets/images/icon/paymant/master-card.png')}}" alt="" class="blur-up lazyload">
                </li>
                <li>
                    <img src="{{asset('assets/front-end/assets/images/icon/paymant/giro-pay.png')}}" alt="" class="blur-up lazyload">
                </li>
            </ul>
        </div>
    </div>
</footer>
<!-- Footer End -->

    <!-- Tap to top start -->
    <div class="theme-option">
        <div class="back-to-top">
            <a id="back-to-top"  href="#">
                <i class="fas fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <!-- Tap to top end -->

    <!-- Bg overlay Start -->
    <div class="bg-overlay"></div>
    <!-- Bg overlay End -->


