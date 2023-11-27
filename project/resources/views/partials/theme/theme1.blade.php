
@extends('layouts.front')
@section('css')
<link rel="stylesheet" href="{{ asset('assets/front/css/category/classic.css') }}">
@endsection
@section('content')

    <!-- @include('partials.global.subscription-popup') -->

    <header class="ecommerce-header nav-on-banner header-3">
        {{-- Top header currency and Language --}}
        @include('partials.global.top-header')
        {{-- Top header currency and Language  end--}}
        @include('partials.global.responsive-menubar')

    </header>
    <!-- mobile menu -->
    @include('partials.global.mobile-menu')
    <!-- mobile menu end -->

    
    <!-- main content start -->

        <!-- Home Section Start -->
            @if($ps->slider == 1)
                <section class="home-section-2 home-section-bg pt-0 overflow-hidden">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12">

                                <div class="owl-carousel owl-theme" id="owl-demo">

                                    @foreach($sliders as $data)
                                        <div>
                                            <div class="owl-text-overlay ">
                                                <h2 class="owl-title w-100 text-uppercase poster-1">{{$data->title_text}} 
                                                </h2>
                                                <h2 class="owl-title w-100 text-uppercase poster-1"><span class="daily">{{$data->subtitle_text}}</span></h2>
                                                <p class="w-58 d-none d-sm-block text-white">{{$data->details_text}}</p>
                                                <button onclick="location.href = '{{$data->link}}';" class="btn btn-animation mt-xxl-4 mt-2 home-button mend-auto">Shop Now <i class="fa-solid fa-right-long ms-2 icon"></i></button>    
                                            </div>
                                            <img class="owl-img" src="{{asset('assets/images/sliders/'.$data->photo)}}">
                                    
                                        </div>
                                    @endforeach

                                </div>

                                <!-- <div class="slider-animate">
                                    <div>
                                        <div class="home-contain rounded-0 p-0">
                                            <img src="../assets/images/grocery/banner/1.jpg"
                                                class="img-fluid bg-img blur-up lazyload" alt="">
                                            <div
                                                class="home-detail home-big-space p-center-left home-overlay position-relative">
                                                <div class="container-fluid-lg">
                                                    <div>
                                                        <h6 class="ls-expanded theme-color text-uppercase">Weekend Special offer
                                                        </h6>
                                                        <h1 class="heding-2">Premium Quality Dry Fruits</h1>
                                                        <h2 class="content-2">Dryfruits shopping made Easy</h2>
                                                        <h5 class="text-content">Fresh & Top Quality Dry Fruits are available
                                                            here!
                                                        </h5>
                                                        <button
                                                            class="btn theme-bg-color btn-md text-white fw-bold mt-md-4 mt-2 mend-auto"
                                                            onclick="location.href = 'shop.html';">Shop Now <i
                                                                class="fa-solid fa-arrow-right icon"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->

                            </div>
                        </div>
                    </div>
                </section>
            @endif
        <!-- Home Section End -->

        <!-- Banner Section Start -->
            @if($ps->arrival_section == 1)
                <section class="banner-section banner-small ratio_65">
                    <div class="container-fluid-lg">
                        <div class="slider-4-banner no-arrow slick-height">
                            @foreach ($arrivals as $key=>$arrival)
                                <div>
                                    <div class=" banner-contain-3 hover-effect">
                                        <a href="{{ route('front.category') }}">
                                            <img src="{{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}" class="bg-img blur-up lazyload" alt="">
                                        </a>
                                        <div class="banner-detail p-center-left w-75 banner-p-sm mend-auto">
                                            <div>
                                                <p class="fw-light mb-2">{{$arrival->title}}</p>
                                                <h4 class="fw-bold mb-0">{{$arrival->header}}</h4>
                                                <button onclick="location.href = '{{$arrival->link}}';" class="btn shop-now-button mt-3 ps-0 mend-auto theme-color fw-bold">Shop Now 
                                                    <i class="fa-solid fa-chevron-right"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </section>
            @endif
        <!-- Banner Section End -->

        <!-- Category Section Start -->
            <section class="category-section-3">
                <div class="container-fluid-lg">
                    <div class="title">
                        <h2>Shop By Categories</h2>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="category-slider-1 arrow-slider wow fadeInUp">

                                @foreach (App\Models\Category::where('language_id',$langg->id)->get() as $cate)
                                    <div>
                                        <div class="category-box-list">
                                            <a href="{{route('front.category', $cate->slug)}}" class="category-name">
                                                <h4>{{ $cate->name }}</h4>
                                                <h6>{{$cate->products->count()}} items</h6>
                                            </a>
                                            <div class="category-box-view">
                                                <a href="{{route('front.category', $cate->slug)}}">
                                                    <img src="{{asset('assets/images/categories/'.$cate->image)}}"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                </a>
                                                <button onclick="location.href = '{{route('front.category', $cate->slug)}}';"
                                                    class="btn shop-button">
                                                    <span>Shop Now</span>
                                                    <i class="fas fa-angle-right"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <!-- Category Section End -->

        <!-- Product Fruit & Vegetables Section Start -->
            <section class="product-section-3">
                <div class="container-fluid-lg">
                    <div class="title">
                        <h2>Featured Marine Life</h2>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="slider-7_1 arrow-slider img-slider">

                                @forelse($feature_products as $feature_product)

                                    <!-- <div>
                                        <div class="product-box-4 wow fadeInUp">
                                            <div class="product-image product-image-2">
                                                <a href="{{route('front.product',['slug'=>$feature_product->slug])}}">
                                                    <img src="{{asset('assets/images/products/'.$feature_product->photo)}}"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                </a>

                                                <ul class="option">
                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                        @if (Auth::check())
                                                            <a href="{{ route('user-wishlists') }}" class="notifi-wishlist">
                                                                <i class="iconly-Heart icli"></i>
                                                            </a>
                                                        @else
                                                            <a href="{{ route('user.login') }}" class="notifi-wishlist">
                                                                <i class="iconly-Heart icli"></i>
                                                            </a>
                                                        @endif
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="product-detail">

                                                <ul class="rating">

                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star"></i>
                                                    </li>
                                                </ul>

                                                <a href="{{route('front.product',['slug'=>$feature_product->slug])}}">
                                                    <h5 class="name text-title">{{$feature_product->name}}</h5>
                                                </a>
                                                <h5 class="price theme-color">
                                                    {{ App\Models\Product::find($feature_product->id)->showPrice()}}
                                                    <del>{{ App\Models\Product::find($feature_product->id)->showPreviousPrice()}}</del>
                                                </h5>

                                                <div class="addtocart_btn">

                                                    @if($feature_product->emptyStock())

                                                        <a href="javascript:;" class="btn buy-button text-light button add_to_cart_button">
                                                            <span title="Out of Stock"></span> <i class="fa-solid fa-times icon"></i>
                                                        </a>

                                                    @else

                                                        <a href="javascript:;" data-href="{{ route('product.cart.add',$feature_product->id) }}" class="add-button addcart-button btn buy-button text-light add-cart button add_to_cart_button">
                                                            <span title="Add to Cart"></span> <i class="fa-solid fa-plus"></i>
                                                        </a>

                                                    @endif

                                                </div>

                                            </div>
                                        </div>
                                    </div> -->

                                    <div>
                                        <div class="product-box-4 wow fadeInUp">
                                            <div class="product-image product-image-2">
                                                
                                                <a href="{{route('front.product',['slug'=>$feature_product->slug])}}">
                                                    <img src="{{asset('assets/images/products/'.$feature_product->photo)}}"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                </a>

                                                <!--<ul class="option">-->
                                                <!--    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">-->
                                                <!--        @if (Auth::check())-->
                                                <!--            <a href="{{ route('user-wishlists') }}" class="notifi-wishlist">-->
                                                <!--                <i class="iconly-Heart icli"></i>-->
                                                <!--            </a>-->
                                                <!--        @else-->
                                                <!--            <a href="{{ route('user.login') }}" class="notifi-wishlist">-->
                                                <!--                <i class="iconly-Heart icli"></i>-->
                                                <!--            </a>-->
                                                <!--        @endif-->
                                                <!--    </li>-->
                                                <!--</ul>-->


                                                <span class="featured-icon"><i class="fa fa-check"></i> Featured</span>
                                            </div>

                                            <div class="product-detail">
                                                <ul class="rating">
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star"></i>
                                                    </li>
                                                </ul>
                                                <a href="{{route('front.product',['slug'=>$feature_product->slug])}}">
                                                    <h5 class="name text-title">{{$feature_product->name}}</h5>
                                                </a>
                                                <h5 class="price theme-color">
                                                    {{ App\Models\Product::find($feature_product->id)->showPrice()}}
                                                    <del>{{ App\Models\Product::find($feature_product->id)->showPreviousPrice()}}</del>
                                                </h5>
                                                <button onclick="location.href = '{{route('front.product',['slug'=>$feature_product->slug])}}';" class="btn home-shop-button" tabindex="0">
                                                    <span>Shop Now </span>
                                                    <i class="fas fa-angle-right"></i>
                                                </button>
                                                
                                            </div>
                                        </div>
                                    </div>

                                @empty
                                @endforelse

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <!-- Product Fruit & Vegetables Section End -->

        <!-- Banner Section Start -->
            <section class="banner-section">
                <div class="container-fluid-lg">
                    <div class="row gy-lg-0 gy-3">

                        @forelse ($arrivals2 as $key=>$arrival)
                        <div class="col-lg-6">
                            <div class="banner-contain-3 hover-effect bg-size blur-up lazyloaded" style="background-image: url({{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}); background-size: cover; background-position: center center; background-repeat: no-repeat; display: block;">
                                <img src="{{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}" class="bg-img blur-up lazyload" alt="" style="display: none;">
                                <div class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                    <div>
                                        <h2 class="text-great fw-normal text-danger">{{$arrival->title}}</h2>
                                        <br>
                                        <h3 class="mb-1 fw-bold text-white">{{$arrival->header}}</h3>
                                        <br>
                                         <p class="text-content text-white">{{$arrival->details_text}}</p> 
                                        <button class="btn btn-md theme-bg-color text-dark mt-sm-3 mt-1 fw-bold mend-auto" onclick="location.href = '{{$arrival->link}}';">Shop Now</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @empty
                        @endforelse

                    </div>
                </div>
            </section>
        <!-- Banner Section End -->

        <!-- Deal Section Start -->
            <section class="product-section product-section-3">
                <div class="container-fluid-lg">
                    <div class="title">
                        <h2>Top Selling Items</h2>
                    </div>
                    <div class="row g-sm-4 g-3">

                        <!-- <div class="col-xxl-4 col-lg-5 order-lg-2">
                            <div class="product-bg-image wow fadeInUp">
                                <div class="product-title product-warning">
                                    <h2>Special Offer</h2>
                                </div>

                                <div class="product-box-4 product-box-3 rounded-0">
                                    <div class="deal-box">
                                        <div class="circle-box">
                                            <div class="shape-circle">
                                                <img src="../assets/images/grocery/circle.svg" class="blur-up lazyload"
                                                    alt="">
                                                <div class="shape-text">
                                                    <h6>Hot <br> Deal</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="top-selling-slider product-arrow">
                                        <div>
                                            <div class="product-image">
                                                <a href="product-left-thumbnail.html">
                                                    <img src="../assets/images/grocery/deal/big.png"
                                                        class="img-fluid product-image blur-up lazyload" alt="">
                                                </a>

                                                <ul class="option">
                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                        <a href="javascript:void(0)" class="notifi-wishlist">
                                                            <i class="iconly-Heart icli"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="product-detail text-center">
                                                <ul class="rating justify-content-center">
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star"></i>
                                                    </li>
                                                </ul>
                                                <a href="product-left-thumbnail.html">
                                                    <h3 class="name w-100 mx-auto text-center">Fighter Fish</h3>
                                                </a>
                                                <h3 class="price theme-color d-flex justify-content-center">
                                                    $65.21<del class="delete-price">$71.25</del>
                                                </h3>
                                                <div class="progress custom-progressbar">
                                                    <div class="progress-bar" style="width: 79%" role="progressbar"
                                                        aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <h5 class="text-content">Solid : <span class="text-dark">30 items</span>
                                                    <span class="ms-auto text-content">Hurry up offer end in</span>
                                                </h5>

                                                <div class="timer timer-2 ms-0 my-4" id="clockdiv-1" data-hours="1"
                                                    data-minutes="2" data-seconds="3">
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <div class="counter">
                                                                <div class="days">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="counter">
                                                                <div class="hours">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="counter">
                                                                <div class="minutes">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="counter">
                                                                <div class="seconds">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="product-image">
                                                <a href="product-left-thumbnail.html">
                                                    <img src="../assets/images/grocery/deal/big.png"
                                                        class="img-fluid product-image blur-up lazyload" alt="">
                                                </a>

                                                <ul class="option">
                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                        <a href="javascript:void(0)" class="notifi-wishlist">
                                                            <i class="iconly-Heart icli"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="product-detail text-center">
                                                <ul class="rating justify-content-center">
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star" class="fill"></i>
                                                    </li>
                                                    <li>
                                                        <i data-feather="star"></i>
                                                    </li>
                                                </ul>
                                                <a href="product-left-thumbnail.html">
                                                    <h3 class="name w-100 mx-auto text-center text-title">Unisex Small
                                                        Trolley
                                                        Suitcase</h3>
                                                </a>
                                                <h3 class="price theme-color d-flex justify-content-center">
                                                    $65.21<del class="delete-price">$71.25</del>
                                                </h3>
                                                <div class="progress custom-progressbar">
                                                    <div class="progress-bar" style="width: 41%" role="progressbar"
                                                        aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <h5 class="text-content">Solid : <span class="text-dark">30 items</span>
                                                    <span class="ms-auto text-content">Hurry up offer end in</span>
                                                </h5>

                                                <div class="timer timer-2 ms-0 my-4" id="clockdiv-2" data-hours="1"
                                                    data-minutes="2" data-seconds="3">
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <div class="counter">
                                                                <div class="days">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="counter">
                                                                <div class="hours">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="counter">
                                                                <div class="minutes">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="counter">
                                                                <div class="seconds">
                                                                    <h6></h6>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                        <div class="col-xxl-12 col-lg-12 order-lg-1">
                            <div class="slider-5_2 img-slider">
                                
                                @forelse($top_products as $index => $product)
                                    @if($index%2==0)
                                    <div>
                                    @endif
                                        @if($index%2==0)
                                            <div class="product-box-4 wow fadeInUp">
                                                <div class="product-image product-image-2">
                                                    <a href="{{route('front.product',['slug'=>$product->slug])}}">
                                                        <img src="{{asset('assets/images/products/'.$product->photo)}}"
                                                            class="img-fluid blur-up lazyload" alt="">
                                                    </a>

                                                    <!--<ul class="option">-->
                                                    <!--    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">-->
                                                    <!--        @if (Auth::check())-->
                                                    <!--            <a href="{{ route('user-wishlists') }}" class="notifi-wishlist">-->
                                                    <!--                <i class="iconly-Heart icli"></i>-->
                                                    <!--            </a>-->
                                                    <!--        @else-->
                                                    <!--            <a href="{{ route('user.login') }}" class="notifi-wishlist">-->
                                                    <!--                <i class="iconly-Heart icli"></i>-->
                                                    <!--            </a>-->
                                                    <!--        @endif-->
                                                    <!--    </li>-->
                                                    <!--</ul>-->
                                                    <span class="featured-icon"><i class="fa fa-check"></i> Top Sell</span>
                                                </div>

                                                <div class="product-detail">

                                                    <ul class="rating">

                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star"></i>
                                                        </li>
                                                    </ul>

                                                    <a href="{{route('front.product',['slug'=>$product->slug])}}">
                                                        <h5 class="name text-title">{{$product->name}}</h5>
                                                    </a>
                                                    <h5 class="price theme-color">
                                                        {{ App\Models\Product::find($product->id)->showPrice()}}
                                                        <del>{{ App\Models\Product::find($product->id)->showPreviousPrice()}}</del>
                                                    </h5>

                                                    <button onclick="location.href = '{{route('front.product',['slug'=>$product->slug])}}';" class="btn home-shop-button" tabindex="0">
                                                        <span>Shop Now </span>
                                                        <i class="fas fa-angle-right"></i>
                                                    </button>

                                                </div>
                                            </div>
                                        @else
                                            <div class="product-box-4 wow fadeInUp">
                                                <div class="product-image product-image-2">
                                                    <a href="{{route('front.product',['slug'=>$product->slug])}}">
                                                        <img src="{{asset('assets/images/products/'.$product->photo)}}"
                                                            class="img-fluid blur-up lazyload" alt="">
                                                    </a>

                                                    <!--<ul class="option">-->
                                                    <!--    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">-->
                                                    <!--        @if (Auth::check())-->
                                                    <!--            <a href="{{ route('user-wishlists') }}" class="notifi-wishlist">-->
                                                    <!--                <i class="iconly-Heart icli"></i>-->
                                                    <!--            </a>-->
                                                    <!--        @else-->
                                                    <!--            <a href="{{ route('user.login') }}" class="notifi-wishlist">-->
                                                    <!--                <i class="iconly-Heart icli"></i>-->
                                                    <!--            </a>-->
                                                    <!--        @endif-->
                                                    <!--    </li>-->
                                                    <!--</ul>-->
                                                    <span class="featured-icon"><i class="fa fa-check"></i> Top Sell</span>
                                                </div>

                                                <div class="product-detail">

                                                    <ul class="rating">

                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                        <li>
                                                            <i data-feather="star"></i>
                                                        </li>
                                                    </ul>

                                                    <a href="{{route('front.product',['slug'=>$product->slug])}}">
                                                        <h5 class="name text-title">{{$product->name}}</h5>
                                                    </a>
                                                    <h5 class="price theme-color">
                                                        {{ App\Models\Product::find($product->id)->showPrice()}}
                                                        <del>{{ App\Models\Product::find($product->id)->showPreviousPrice()}}</del>
                                                    </h5>

                                                    <button onclick="location.href = '{{route('front.product',['slug'=>$product->slug])}}';" class="btn home-shop-button" tabindex="0">
                                                        <span>Shop Now </span>
                                                        <i class="fas fa-angle-right"></i>
                                                    </button>

                                                </div>
                                            </div>
                                        @endif
                                    @if($index%2!=0)
                                    </div>
                                    @endif
                                @empty
                                @endforelse

                                
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        <!-- Deal Section End -->

        <!-- Offer Section Start -->
            <section class="offer-section">
                <div class="container-fluid-lg">
                    <div class="row">

                        @forelse ($arrivals3 as $key=>$arrival)
                            <div class="col-12">
                                <div class="banner-contain-3 hover-effect bg-size blur-up lazyloaded" style="background-image: url({{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}); background-size: cover; background-position: center center; background-repeat: no-repeat; display: block;">
                                    <img src="{{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}" class="bg-img blur-up lazyload" alt="" style="display: none;">
                                    <div class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                        <div>
                                            <h2 class="text-center">
                                                <span class="text-great fw-normal text-danger">{{$arrival->title}}</span> 
                                                <span class="mb-1 fw-bold text-white">{{$arrival->header}}</span>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        @empty
                        @endforelse

                    </div>
                </div>
            </section>
        <!-- Offer Section End -->

        <!-- Product Breakfast & Dairy Section Start -->
            <section class="product-section-4">
                <div class="container-fluid-lg">
                    <div class="title">
                        <h2>Featured</h2>
                        <!--<p class="mb-4">Deep Blue Seas LLC, the parent company of Saltwaterfish.com has added a new brand to the-->
                        <!--    family... Oceans' Garden Aquaculture. At OGA you can find the complete lineup of products from-->
                        <!--    powerhouse aquaculturists like ORA, Proaquatix, Eye Catching Coral, ACI Aquaculture, and our own-->
                        <!--    offerings at down to earth prices. We also offer select reef packages from local suppliers that-->
                        <!--    promise to be the freshest and most cost-effective reef packages in the industry.</p>-->
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="slider-7_1 arrow-slider img-slider">

                            @forelse($sale_products as $product)
                                <div>
                                    <div class="product-box-4 wow fadeInUp">
                                        <div class="product-image product-image-2">
                                            <a href="{{route('front.product',['slug'=>$product->slug])}}">
                                                <img src="{{asset('assets/images/products/'.$product->photo)}}"
                                                    class="img-fluid blur-up lazyload" alt="">
                                            </a>

                                            <!--<ul class="option">-->
                                            <!--    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">-->
                                            <!--        @if (Auth::check())-->
                                            <!--            <a href="{{ route('user-wishlists') }}" class="notifi-wishlist">-->
                                            <!--                <i class="iconly-Heart icli"></i>-->
                                            <!--            </a>-->
                                            <!--        @else-->
                                            <!--            <a href="{{ route('user.login') }}" class="notifi-wishlist">-->
                                            <!--                <i class="iconly-Heart icli"></i>-->
                                            <!--            </a>-->
                                            <!--        @endif-->
                                            <!--    </li>-->
                                            <!--</ul>-->
                                            <span class="featured-icon"><i class="fa fa-check"></i> Sale Products</span>
                                        </div>

                                        <div class="product-detail">

                                            <ul class="rating">

                                                <li>
                                                    <i data-feather="star" class="fill"></i>
                                                </li>
                                                <li>
                                                    <i data-feather="star" class="fill"></i>
                                                </li>
                                                <li>
                                                    <i data-feather="star" class="fill"></i>
                                                </li>
                                                <li>
                                                    <i data-feather="star" class="fill"></i>
                                                </li>
                                                <li>
                                                    <i data-feather="star"></i>
                                                </li>
                                            </ul>

                                            <a href="{{route('front.product',['slug'=>$product->slug])}}">
                                                <h5 class="name text-title">{{$product->name}}</h5>
                                            </a>
                                            <h5 class="price theme-color">
                                                {{ App\Models\Product::find($product->id)->showPrice()}}
                                                <del>{{ App\Models\Product::find($product->id)->showPreviousPrice()}}</del>
                                            </h5>


                                            <button onclick="location.href = '{{route('front.product',['slug'=>$product->slug])}}';" class="btn home-shop-button" tabindex="0">
                                                <span>Shop Now </span>
                                                <i class="fas fa-angle-right"></i>
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            @empty
                            @endforelse

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <!-- Product Breakfast & Dairy Section End -->

        <!-- Banner Section Start -->
        <section class="banner-section">
            <div class="container-fluid-lg">
                <div class="row gy-lg-0 gy-3">
                        @forelse ($arrivals4 as $key=>$arrival)
                        <div class="col-lg-6">
                            <div class="banner-contain-3 hover-effect bg-size blur-up lazyloaded" style="background-image: url({{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}); background-size: cover; background-position: center center; background-repeat: no-repeat; display: block;">
                                <img src="{{ $arrival->photo ?  asset('assets/images/arrival/'.$arrival->photo): '' }}" class="bg-img blur-up lazyload" alt="" style="display: none;">
                                <div class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                    <div>
                                        <h2 class="text-great fw-normal text-danger">{{$arrival->title}}</h2>
                                        <br>
                                        <h3 class="mb-1 fw-bold text-white">{{$arrival->header}}</h3>
                                        <br>
                                         <h4 class="text-content text-white">{{$arrival->details_text}}</h4> 
                                        <button class="btn btn-md theme-bg-color text-dark mt-sm-3 mt-1 fw-bold mend-auto" onclick="location.href = '{{$arrival->link}}';">Shop Now</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @empty
                        @endforelse

                </div>
            </div>
        </section>
        <!-- Banner Section End -->

        <!-- Blog Section Start -->
        <section class="blog-section">
            <div class="container-fluid-lg">
                <div class="title title-4">
                    <h2>Know Your Saltwater Aquarium With Care Tips & How-To Videos & Articles.</h2>
                </div>

                <div class="slider-3-blog arrow-slider slick-height">
                    @forelse($blogs as $blog)

                        <div>
                            <div class=" blog-box ratio_45">
                                <div class="blog-box-image">
                                    <a href="{{route('front.blogshow',['slug'=>$blog->slug])}}">
                                        <img src="{{asset('assets/images/blogs/'.$blog->photo)}}" class="blur-up lazyload bg-img"
                                            alt="">
                                    </a>
                                </div>

                                <div class="blog-detail">
                                    <label>{{$blog->category->name}}</label>
                                    <a href="{{route('front.blogshow',['slug'=>$blog->slug])}}">
                                        <h3>{{$blog->title}}</h3>
                                    </a>
                                    <h5 class="text-content">{{date('jS M, Y', strtotime($blog->created_at))}}</h5>
                                </div>
                            </div>
                        </div>

                    @empty
                    @endforelse

                </div>
            </div>
        </section>
        <!-- Blog Section End -->

    <!-- main content end -->


    <!-- footer start -->
    @include('partials.theme.extraindex')
    <!-- footer end -->

    
    @endsection
    @section('script')
        
    @endsection