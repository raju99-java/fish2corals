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
                            <a href="{{ route('front.cart') }}" class="header-icon bag-icon">
                                <small class="badge-number badge-light" id="cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</small>
                                <i class="iconly-Bag-2 icli"></i>
                            </a>

                            @include('load.cart')
                        </li>

                        <li>
                            @if (Auth::check())
                                <a href="{{ route('user-wishlists') }}" class="header-icon swap-icon">
                                    <small class="badge-number badge-light" id="wishlist-count">{{ Auth::user()->wishlistCount() }}</small>
                                    <i class="iconly-Heart icli"></i>
                                </a>
                            @else
                                <a href="{{ route('user.login') }}" class="header-icon swap-icon">
                                    <small class="badge-number badge-light" id="wishlist-count">{{ 0 }}</small>
                                    <i class="iconly-Heart icli"></i>
                                </a>
                            @endif
                        </li>
                    </ul>

                    @if (Auth::user())
                    <a href="{{ route('user-dashboard') }}" class="user-box onhover-dropdown">
                        <span class="header-icon">
                            <i class="iconly-Profile icli"></i>
                        </span>
                        <div class="user-name">
                            <h6 class="text-content">My Account</h6>
                            <h4 class="mt-1">Jennifer V. Ward</h4>
                        </div>
                    </a>
                    @else
                    <a href="{{ route('user.login') }}" class="user-box onhover-dropdown">
                        <span class="header-icon">
                            <i class="iconly-Profile icli"></i>
                        </span>
                        <div class="user-name">
                            <h6 class="text-content">My Account</h6>
                            <h4 class="mt-1">Jennifer V. Ward</h4>
                        </div>
                    </a>
                    @endif

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