<div class="container-fluid-lg sticky-header">
    <div class="row">
        <div class="col-12 position-relative">
            <div class="main-nav nav-left-align">
                <div class="main-nav navbar navbar-expand-xl navbar-light navbar-sticky p-0">
                    <div class="offcanvas offcanvas-collapse order-xl-2" id="primaryMenu">
                        <div class="offcanvas-header navbar-shadow">
                            <h5>Menu</h5>
                            <button class="btn-close lead" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul class="navbar-nav">
                                <!-- 1 -->
                                @foreach (App\Models\Category::where('language_id',$langg->id)->where('status',1)->take(4)->get() as $category)

                                    <li class="nav-item dropdown dropdown-mega">
                                        
                                        <a class="nav-link dropdown-toggle ps-xl-2 ps-0" href="javascript:void(0)" data-bs-toggle="dropdown">{{ $category->name }}</a>

                                        <div class="dropdown-menu dropdown-menu-2 dropdown-menu-left">

                                            <a class="d-inline-block  font-600 text-uppercase text-secondary pb-2" href="{{route('front.category', [$category->slug])}}" >{{ $category->name }}</a>

                                            <div class="row">
                                                @if($category->subs->count() > 0)
                                                    <div class="dropdown-column col-xl-3">
                                                        @foreach (App\Models\Subcategory::where('category_id',$category->id)->get() as $subcategory)

                                                            <a class="dropdown-item" href="{{route('front.category', [$category->slug, $subcategory->slug])}}">{{$subcategory->name}}</a>
                                                            
                                                        @endforeach
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </li>

                                @endforeach
                                <!-- 1 -->
                                
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="rightside-menu">
                    <ul class="option-list-2">
                        <li>
                            <a href="javascript:void(0)" class="header-icon search-box search-icon">
                                <i class="iconly-Search icli"></i>
                            </a>
                        </li>

                        <li class="onhover-dropdown">
                            <a href="javascript:void(0)" class="header-icon swap-icon">
                                <i class="iconly-Heart icli"></i>
                            </a>

                            <div class="onhover-div">
                                <ul class="cart-list">
                                    <li>
                                        <div class="drop-cart">
                                            <a href="product-left-thumbnail.html" class="drop-image">
                                                <img src="../assets/images/vegetable/product/1.png"
                                                    class="blur-up lazyload" alt="">
                                            </a>

                                            <div class="drop-contain">
                                                <a href="product-left-thumbnail.html">
                                                    <h5>Fantasy Crunchy Choco Chip Cookies</h5>
                                                </a>
                                                <h6><span>1 x</span> $80.58</h6>
                                                <button class="close-button">
                                                    <i class="fa-solid fa-xmark"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="drop-cart">
                                            <a href="product-left-thumbnail.html" class="drop-image">
                                                <img src="../assets/images/vegetable/product/2.png"
                                                    class="blur-up lazyload" alt="">
                                            </a>

                                            <div class="drop-contain">
                                                <a href="product-left-thumbnail.html">
                                                    <h5>Peanut Butter Bite Premium Butter Cookies 600 g</h5>
                                                </a>
                                                <h6><span>1 x</span> $25.68</h6>
                                                <button class="close-button">
                                                    <i class="fa-solid fa-xmark"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>

                                <div class="price-box">
                                    <h5>Price :</h5>
                                    <h4 class="theme-color fw-bold">$106.58</h4>
                                </div>

                                <div class="button-group">
                                    <a href="cart.html" class="btn btn-sm cart-button">View Cart</a>
                                    <a href="checkout.html" class="btn btn-sm cart-button theme-bg-color
                                        text-white">Checkout</a>
                                </div>
                            </div>
                        </li>

                        <li>
                            <a href="cart.html" class="header-icon bag-icon">
                                <small class="badge-number badge-light">2</small>
                                <i class="iconly-Bag-2 icli"></i>
                            </a>
                        </li>
                    </ul>

                    <a href="user-dashboard.html" class="user-box">
                        <span class="header-icon">
                            <i class="iconly-Profile icli"></i>
                        </span>
                        <div class="user-name">
                            <h6 class="text-content">My Account</h6>
                            <h4 class="mt-1">Jennifer V. Ward</h4>
                        </div>
                    </a>

                    <!-- <a target="_blank" class="btn mobile-app d-xxl-flex d-none"
                        href="https://play.google.com/store/games?utm_source=apac_med&utm_medium=hasem&utm_content=Oct0121&utm_campaign=Evergreen&pcampaignid=MKT-EDR-apac-in-1003227-med-hasem-py-Evergreen-Oct0121-Text_Search_BKWS-BKWS%7CONSEM_kwid_43700065205026415_creativeid_535350509927_device_c&gclid=Cj0KCQjw8uOWBhDXARIsAOxKJ2H1K3VqdJFHodt0-XSnQzcuOuTP-s2aPBE6lG0QVOf8D5cJBsB-DxQaAkNAEALw_wcB&gclsrc=aw.ds">
                        <div class="mobile-image">
                            <img src="../assets/images/icon/mobile.png" class="img-fluid blur-up lazyload"
                                alt="">
                        </div>

                        <div class="mobile-name">
                            <h4>Download App</h4>
                        </div>
                    </a> -->
                </div>
            </div>
        </div>
    </div>
</div>