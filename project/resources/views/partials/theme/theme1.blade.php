
@extends('layouts.front')
@section('css')
<link rel="stylesheet" href="{{ asset('assets/front/css/category/classic.css') }}">
@endsection
@section('content')

    @include('partials.global.subscription-popup')

    <header class="ecommerce-header nav-on-banner header-3">
        {{-- Top header currency and Language --}}
        @include('partials.global.top-header')
        {{-- Top header currency and Language  end--}}
        @include('partials.global.responsive-menubar')

    </header>

   <!-- Home Section Start -->
   <section class="home-section-2 home-section-bg pt-0 overflow-hidden">
            <div class="container-fluid p-0">
                <div class="row">
                    <div class="col-12">
                        <div class="owl-carousel owl-theme" id="owl-demo">
                            <div>
                              <div class="owl-text-overlay ">
                                <h2 class="owl-title w-75 text-uppercase poster-1">Stay home & delivered your <span
                                    class="daily">Daily Needs</span>
                                </h2>
                                <p class="w-58 d-none d-sm-block text-black">Many organizations have issued official
                                    statements encouraging people to reduce their intake of sugary drinks.</p>
                                    <button onclick="location.href = '#';"
                                    class="btn btn-animation mt-xxl-4 mt-2 home-button mend-auto">Shop Now <i
                                        class="fa-solid fa-right-long ms-2 icon"></i></button>    
                            </div>
                              <img class="owl-img" src="../assets/images/grocery/banner/1.jpg">
                        
                            </div>
                            <div>
                                <div class="owl-text-overlay ">
                                  <h2 class="owl-title w-75 text-uppercase poster-1">Stay home & delivered your <span
                                      class="daily">Daily Needs</span>
                                  </h2>
                                  <p class="w-58 d-none d-sm-block text-black">Many organizations have issued official
                                      statements encouraging people to reduce their intake of sugary drinks.</p>
                                      <button onclick="location.href = '#';"
                                      class="btn btn-animation mt-xxl-4 mt-2 home-button mend-auto">Shop Now <i
                                          class="fa-solid fa-right-long ms-2 icon"></i></button>    
                              </div>
                                <img class="owl-img" src="../assets/images/grocery/banner/1.jpg">
                          
                              </div>
                              <div>
                                <div class="owl-text-overlay ">
                                  <h2 class="owl-title w-75 text-uppercase poster-1">Stay home & delivered your <span
                                      class="daily">Daily Needs</span>
                                  </h2>
                                  <p class="w-58 d-none d-sm-block text-black">Many organizations have issued official
                                      statements encouraging people to reduce their intake of sugary drinks.</p>
                                      <button onclick="location.href = '#';"
                                      class="btn btn-animation mt-xxl-4 mt-2 home-button mend-auto">Shop Now <i
                                          class="fa-solid fa-right-long ms-2 icon"></i></button>    
                              </div>
                                <img class="owl-img" src="../assets/images/grocery/banner/1.jpg">
                          
                              </div>
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
        <!-- Home Section End -->

        <!-- Banner Section Start -->
        <section class="banner-section banner-small ratio_65">
            <div class="container-fluid-lg">
                <div class="slider-4-banner no-arrow slick-height">
                    <div>
                        <div class=" banner-contain-3 hover-effect">
                            <a href="javascript:void(0)">
                                <img src="../assets/images/grocery/banner/2.jpg" class="bg-img blur-up lazyload" alt="">
                            </a>
                            <div class="banner-detail p-center-left w-75 banner-p-sm mend-auto">
                                <div>
                                    <h5 class="fw-light mb-2">50% Discount</h5>
                                    <h4 class="fw-bold mb-0">Summer Ice Cream</h4>
                                    <button onclick="location.href = 'shop.html';" class="btn shop-now-button mt-3 ps-0 mend-auto theme-color fw-bold">Shop Now 
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="banner-contain-3 hover-effect">
                            <a href="javascript:void(0)">
                                <img src="../assets/images/grocery/banner/3.jpg" class="img-fluid bg-img" alt="">
                            </a>
                            <div class="banner-detail p-center-left w-75 banner-p-sm mend-auto">
                                <div>
                                    <h5 class="fw-light mb-2">Today Special</h5>
                                    <h4 class="fw-bold mb-0">Fruits Juice Series</h4>
                                    <button onclick="location.href = 'shop.html';"
                                        class="btn shop-now-button mt-3 ps-0 mend-auto theme-color fw-bold">Shop Now <i
                                            class="fa-solid fa-chevron-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="banner-contain-3 hover-effect">
                            <a href="javascript:void(0)">
                                <img src="../assets/images/grocery/banner/4.jpg" class="blur-up lazyload bg-img" alt="">
                            </a>
                            <div class="banner-detail p-center-left w-75 banner-p-sm mend-auto">
                                <div>
                                    <h5 class="fw-light mb-2">Combo Offer</h5>
                                    <h4 class="fw-bold mb-0">Eat Healthy Be Healthy </h4>
                                    <button onclick="location.href = 'shop.html';"
                                        class="btn shop-now-button mt-3 ps-0 mend-auto theme-color fw-bold">Shop Now <i
                                            class="fa-solid fa-chevron-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="banner-contain-3 hover-effect">
                            <a href="javascript:void(0)">
                                <img src="../assets/images/grocery/banner/5.jpg" class="blur-up lazyload bg-img" alt="">
                            </a>
                            <div class="banner-detail p-center-left w-75 banner-p-sm mend-auto">
                                <div>
                                    <h5 class="fw-light mb-2">Amazing Deals</h5>
                                    <h4 class="fw-bold mb-0">As Fresh As Fruit </h4>
                                    <button onclick="location.href = 'shop.html';"
                                        class="btn shop-now-button mt-3 ps-0 mend-auto theme-color fw-bold">Shop Now <i
                                            class="fa-solid fa-chevron-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class=" banner-contain-3 hover-effect">
                            <a href="javascript:void(0)">
                                <img src="../assets/images/grocery/banner/66.jpg" class="bg-img blur-up lazyload" alt="">
                            </a>
                            <div class="banner-detail p-center-left w-75 banner-p-sm mend-auto">
                                <div>
                                    <h5 class="fw-light mb-2">50% Discount</h5>
                                    <h4 class="fw-bold mb-0">Summer Ice Cream</h4>
                                    <button onclick="location.href = 'shop.html';" class="btn shop-now-button mt-3 ps-0 mend-auto theme-color fw-bold">Shop Now 
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
                            <div>
                                <div class="category-box-list">
                                    <a href="shop.html" class="category-name">
                                        <h4>Fish</h4>
                                        <h6>25 items</h6>
                                    </a>
                                    <div class="category-box-view">
                                        <a href="shop.html">
                                            <img src="../assets/images/grocery/category/1.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                        <button onclick="location.href = 'shop.html';"
                                            class="btn shop-button">
                                            <span>Shop Now</span>
                                            <i class="fas fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="category-box-list">
                                    <a href="shop.html" class="category-name">
                                        <h4>Invertebrates</h4>
                                        <h6>20 items</h6>
                                    </a>
                                    <div class="category-box-view">
                                        <a href="shop.html">
                                            <img src="../assets/images/grocery/category/2.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                        <button onclick="location.href = 'shop.html';"
                                            class="btn shop-button">
                                            <span>Shop Now</span>
                                            <i class="fas fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="category-box-list">
                                    <a href="shop.html" class="category-name">
                                        <h4>Corals</h4>
                                        <h6>14 items</h6>
                                    </a>
                                    <div class="category-box-view">
                                        <a href="shop.html">
                                            <img src="../assets/images/grocery/category/3.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                        <button onclick="location.href = 'shop.html';"
                                            class="btn shop-button">
                                            <span>Shop Now</span>
                                            <i class="fas fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="category-box-list">
                                    <a href="shop.html" class="category-name">
                                        <h4>Clean Up Crews</h4>
                                        <h6>43 items</h6>
                                    </a>
                                    <div class="category-box-view">
                                        <a href="shop.html">
                                            <img src="../assets/images/grocery/category/4.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                        <button onclick="location.href = 'shop.html';"
                                            class="btn shop-button">
                                            <span>Shop Now</span>
                                            <i class="fas fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="category-box-list">
                                    <a href="shop.html" class="category-name">
                                        <h4>Live Rock</h4>
                                        <h6>23 items</h6>
                                    </a>
                                    <div class="category-box-view">
                                        <a href="shop.html">
                                            <img src="../assets/images/grocery/category/5.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                        <button onclick="location.href = 'shop.html';"
                                            class="btn shop-button">
                                            <span>Shop Now</span>
                                            <i class="fas fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="category-box-list">
                                    <a href="shop.html" class="category-name">
                                        <h4>Many More</h4>
                                        <h6>54 items</h6>
                                    </a>
                                    <div class="category-box-view">
                                        <a href="shop.html">
                                            <img src="../assets/images/grocery/category/6.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                        <button onclick="location.href = 'shop.html';"
                                            class="btn shop-button">
                                            <span>Shop Now</span>
                                            <i class="fas fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
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
                    <h2>Featured Product</h2>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="slider-7_1 arrow-slider img-slider">
                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/1.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Bell pepper</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>

                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/2.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Eggplant</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.1s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/3.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Potato</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.15s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/4.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Onion</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.2s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/5.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Baby Chili</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.25s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/6.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Broccoli</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.3s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/7.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Apple</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.35s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/fruits-vegetables/8.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Strawberry</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                    <div class="col-lg-6">
                        <div class="banner-contain-3 hover-effect bg-size blur-up lazyloaded" style="background-image: url(&quot;../assets/images/grocery/banner/6.jpg&quot;); background-size: cover; background-position: center center; background-repeat: no-repeat; display: block;">
                            <img src="../assets/images/grocery/banner/6.jpg" class="bg-img blur-up lazyload" alt="" style="display: none;">
                            <div class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                <div>
                                    <h2 class="text-great fw-normal text-danger">Special hot sale</h2>
                                    <h3 class="mb-1 fw-bold text-white">Golden Fish <br> With Bowl</h3>
                                    <h4 class="text-content text-white">Choose a Nutritious &amp; Healthy Breakfast.</h4>
                                    <button class="btn btn-md theme-bg-color text-dark mt-sm-3 mt-1 fw-bold mend-auto" onclick="location.href = 'shop.html';">Shop Now</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="banner-contain-3 hover-effect bg-size blur-up lazyloaded" style="background-image: url(&quot;../assets/images/grocery/banner/7.jpg&quot;); background-size: cover; background-position: center center; background-repeat: no-repeat; display: block;">
                            <img src="../assets/images/grocery/banner/7.jpg" class="bg-img blur-up lazyload" alt="" style="display: none;">
                            <div class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                <div>
                                    <h2 class="text-great fw-normal text-danger">Special hot sale</h2>
                                    <h3 class="mb-1 fw-bold text-white">Fighter Fish <br> With Bowl</h3>
                                    <h4 class="text-content text-white">Choose a Nutritious &amp; Healthy Breakfast.</h4>
                                    <button class="btn btn-md theme-bg-color text-dark mt-sm-3 mt-1 fw-bold mend-auto" onclick="location.href = 'shop.html';">Shop Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
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
                    <div class="col-xxl-4 col-lg-5 order-lg-2">
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
                    </div>

                    <div class="col-xxl-8 col-lg-7 order-lg-1">
                        <div class="slider-5_2 img-slider">
                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/1.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Potato Chips</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/2.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Body Lotion</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/3.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Nithara Coffee</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/4.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Cow Ghee</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/5.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Fresh Cilantro</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/6.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Sandwich Bread</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/7.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Popcorn</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/5.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Fresh Cilantro</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/8.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Fresh Eggs</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/deal/9.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Tomato Ketchup</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                    <div class="col-12">
                        <div class="offer-box hover-effect">
                            <h2><span>FREE GIFT ANY ORDER</span> 70% oFF</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Offer Section End -->

        <!-- Product Breakfast & Dairy Section Start -->
        <section class="product-section-4">
            <div class="container-fluid-lg">
                <div class="title">
                    <h2>Best Selling Products</h2>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="slider-7_1 arrow-slider img-slider">
                            <div>
                                <div class="product-box-4 wow fadeInUp">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/1.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Bell pepper</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.05s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/2.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Grassmilk</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.1s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/3.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Kellogg's choco </h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.15s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/4.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Paneer</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.2s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/5.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Bournvita</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.25s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/6.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Tulsi</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.3s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/7.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Kellogg's Muesli</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="product-box-4 wow fadeInUp" data-wow-delay="0.35s">
                                    <div class="product-image product-image-2">
                                        <a href="product-left-thumbnail.html">
                                            <img src="../assets/images/grocery/product/breakfast/8.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <ul class="option">
                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="javascript:void(0)" class="notifi-wishlist">
                                                    <i class="iconly-Heart icli"></i>
                                                </a>
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
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name text-title">Low Fat Milk</h5>
                                        </a>
                                        <h5 class="price theme-color">$65.21<del>$71.25</del></h5>
                                        <div class="addtocart_btn">
                                            <button class="add-button addcart-button btn buy-button text-light">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                            <div class="qty-box cart_qty">
                                                <div class="input-group">
                                                    <button type="button" class="btn qty-left-minus" data-type="minus"
                                                        data-field="">
                                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                                    </button>
                                                    <input class="form-control input-number qty-input" type="text"
                                                        name="quantity" value="1">
                                                    <button type="button" class="btn qty-right-plus" data-type="plus"
                                                        data-field="">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                    <div class="col-lg-6">
                        <div class="banner-contain-3 hover-effect">
                            <img src="../assets/images/grocery/banner/6.jpg" class="bg-img blur-up lazyload" alt="">
                            <div
                                class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                <div>
                                    <h2 class="text-great fw-normal text-danger">Special hot sale</h2>
                                    <h3 class="mb-1 fw-bold text-white">Golden Fish <br> With Bowl</h3>
                                    <h4 class="text-content text-white">Choose a Nutritious & Healthy Breakfast.</h4>
                                    <button class="btn btn-md theme-bg-color text-dark mt-sm-3 mt-1 fw-bold mend-auto"
                                        onclick="location.href = 'shop.html';">Shop Now</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="banner-contain-3 hover-effect">
                            <img src="../assets/images/grocery/banner/7.jpg" class="bg-img blur-up lazyload" alt="">
                            <div
                                class="banner-detail banner-detail-2 text-dark p-center-left w-75 banner-p-sm position-relative mend-auto">
                                <div>
                                    <h2 class="text-great fw-normal text-danger">Special hot sale</h2>
                                    <h3 class="mb-1 fw-bold text-white">Fighter Fish <br> With Bowl</h3>
                                    <h4 class="text-content text-white">Choose a Nutritious & Healthy Breakfast.</h4>
                                    <button class="btn btn-md theme-bg-color text-dark mt-sm-3 mt-1 fw-bold mend-auto"
                                        onclick="location.href = 'shop.html';">Shop Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Banner Section End -->

        <!-- Blog Section Start -->
        <section class="blog-section">
            <div class="container-fluid-lg">
                <div class="title title-4">
                    <h2>Blog</h2>
                </div>

                <div class="slider-3-blog arrow-slider slick-height">
                    <div>
                        <div class=" blog-box ratio_45">
                            <div class="blog-box-image">
                                <a href="blog-detail.html">
                                    <img src="../assets/images/grocery/blog/1.jpg" class="blur-up lazyload bg-img"
                                        alt="">
                                </a>
                            </div>

                            <div class="blog-detail">
                                <label>Conversion rate optimization</label>
                                <a href="blog-detail.html">
                                    <h3>Best selling bag online market place...</h3>
                                </a>
                                <h5 class="text-content">Anil Viradiya - MARCH 9, 2022</h5>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="blog-box ratio_45">
                            <div class="blog-box-image">
                                <a href="blog-detail.html">
                                    <img src="../assets/images/grocery/blog/2.jpg" class="blur-up lazyload bg-img"
                                        alt="">
                                </a>
                            </div>

                            <div class="blog-detail">
                                <label>Email Marketing</label>
                                <a href="blog-detail.html">
                                    <h3>Best selling bag online market place...</h3>
                                </a>
                                <h5 class="text-content">Anil Viradiya - MARCH 9, 2022</h5>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="blog-box ratio_45">
                            <div class="blog-box-image">
                                <a href="blog-detail.html">
                                    <img src="../assets/images/grocery/blog/3.jpg" class="blur-up lazyload bg-img"
                                        alt="">
                                </a>
                            </div>

                            <div class="blog-detail">
                                <label>Conversion rate optimization</label>
                                <a href="blog-detail.html">
                                    <h3>Best selling bag online market place...</h3>
                                </a>
                                <h5 class="text-content">Anil Viradiya - MARCH 9, 2022</h5>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="blog-box ratio_45">
                            <div class="blog-box-image">
                                <a href="blog-detail.html">
                                    <img src="../assets/images/grocery/blog/1.jpg" class="blur-up lazyload bg-img"
                                        alt="">
                                </a>
                            </div>

                            <div class="blog-detail">
                                <label>Conversion rate optimization</label>
                                <a href="blog-detail.html">
                                    <h3>Best selling bag online market place...</h3>
                                </a>
                                <h5 class="text-content">Anil Viradiya - MARCH 9, 2022</h5>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="blog-box ratio_45">
                            <div class="blog-box-image">
                                <a href="blog-detail.html">
                                    <img src="../assets/images/grocery/blog/3.jpg" class="blur-up lazyload bg-img"
                                        alt="">
                                </a>
                            </div>

                            <div class="blog-detail">
                                <label>Conversion rate optimization</label>
                                <a href="blog-detail.html">
                                    <h3>Best selling bag online market place...</h3>
                                </a>
                                <h5 class="text-content">Anil Viradiya - MARCH 9, 2022</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->

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
                            <a href="index.html" class="foot-logo theme-logo text-white">
                                <img src="../assets/images/logo/4.png" class="img-fluid blur-up lazyload" alt="">
                            </a>
                            <p class="information-text information-text-2">it is a long established fact that a reader
                                will
                                be distracted by the readable content.</p>
                            <ul class="social-icon">
                                <li class="light-bg">
                                    <a href="#" class="footer-link-color">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="light-bg">
                                    <a href="#"
                                        class="footer-link-color">
                                        <i class="fab fa-google"></i>
                                    </a>
                                </li>
                                <li class="light-bg">
                                    <a href="#" class="footer-link-color">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="light-bg">
                                    <a href="#" class="footer-link-color">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="light-bg">
                                    <a href="#" class="footer-link-color">
                                        <i class="fab fa-pinterest-p"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xxl-2 col-xl-4 col-sm-6">
                            <div class="footer-title">
                                <h4 class="text-white">Quick Links</h4>
                            </div>
                            <ul class="footer-list footer-contact footer-list-light">
                                <li>
                                    <a href="/" class="light-text">Home</a>
                                </li>
                                <li>
                                    <a href="about-us.html" class="light-text">About Us</a>
                                </li>
                                <li>
                                    <a href="shop.html" class="light-text">Shop</a>
                                </li>
                                <li>
                                    <a href="blog.html" class="light-text">Blog</a>
                                </li>
                                <li>
                                    <a href="contact-us.html" class="light-text">Contact Us</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xxl-2 col-xl-4 col-sm-6">
                            <div class="footer-title">
                                <h4 class="text-white">Useful Link</h4>
                            </div>
                            <ul class="footer-list footer-list-light footer-contact">
                                <li>
                                    <a href="order-tracking.html" class="light-text">Your Order</a>
                                </li>
                                <li>
                                    <a href="user-dashboard.html" class="light-text">Your Account</a>
                                </li>
                                <li>
                                    <a href="faq.html" class="light-text">FAQ</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xxl-2 col-xl-4 col-sm-6">
                            <div class="footer-title">
                                <h4 class="text-white">Categories</h4>
                            </div>
                            <ul class="footer-list footer-list-light footer-contact">
                                <li>
                                    <a href="fish.html" class="light-text">Fish</a>
                                </li>
                                <li>
                                    <a href="invertebrates.html" class="light-text">Invertebrates</a>
                                </li>
                                <li>
                                    <a href="corals.html" class="light-text">Corals</a>
                                </li>
                                <li>
                                    <a href="clean-up-crews.html" class="light-text">Clean Up Crews</a>
                                </li>
                                <li>
                                    <a href="live-rock.html" class="light-text">Live Rock</a>
                                </li>
                                <li>
                                    <a href="supplies.html" class="light-text">Supplies</a>
                                </li>
                                <li>
                                    <a href="wysiwyg.html" class="light-text">WYSIWYG</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xxl-3 col-xl-6 col-sm-6">
                            <div class="footer-title">
                                <h4 class="text-white">Address</h4>
                            </div>
                            <ul class="footer-address footer-contact">
                                <li>
                                    <a href="javascript:void(0)" class="light-text">
                                        <div class="inform-box flex-start-box">
                                            <i data-feather="map-pin"></i>
                                            <p>Fish2 Corals Demo Store, Demo store india 345 - 659</p>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)" class="light-text">
                                        <div class="inform-box">
                                            <i data-feather="phone"></i>
                                            <p>Call us: 123-456-7890</p>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)" class="light-text">
                                        <div class="inform-box">
                                            <i data-feather="mail"></i>
                                            <p>Email Us: Support@fish2corals.com</p>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="sub-footer sub-footer-lite section-b-space section-t-space">
                    <div class="left-footer">
                        <p class="light-text">© 2023, Fish2 Corals. All rights reserved.</p>
                    </div>

                    <ul class="payment-box">
                        <li>
                            <img src="../assets/images/icon/paymant/visa.png" class="blur-up lazyload" alt="">
                        </li>
                        <li>
                            <img src="../assets/images/icon/paymant/discover.png" alt="" class="blur-up lazyload">
                        </li>
                        <li>
                            <img src="../assets/images/icon/paymant/american.png" alt="" class="blur-up lazyload">
                        </li>
                        <li>
                            <img src="../assets/images/icon/paymant/master-card.png" alt="" class="blur-up lazyload">
                        </li>
                        <li>
                            <img src="../assets/images/icon/paymant/giro-pay.png" alt="" class="blur-up lazyload">
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
        <!-- Footer End -->

        <!-- Tap to top start -->
        <div class="theme-option">
            <div class="back-to-top">
                <a id="back-to-top" href="#">
                    <i class="fas fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <!-- Tap to top end -->

        <!-- Bg overlay Start -->
        <div class="bg-overlay"></div>
        <!-- Bg overlay End -->
