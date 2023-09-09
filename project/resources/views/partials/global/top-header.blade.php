<div class="header-top">
   <div class="container-fluid-lg">
         <div class="row">
            <div class="col-xxl-12 col-lg-12 d-lg-block">
               <div class="header-offer">
                     <div class="notification-slider text-center">
                        <div class="timer-notification text-center">
                           <h6 class="text-dark">Something you love is now on sale!
                                 <a href="{{ route('front.category') }}" class="text-dark"
                                    tabindex="-1">Buy Now!</a>
                           </h6>
                        </div>
                     </div>
               </div>
            </div>
         </div>
   </div>
</div>

<div class="top-nav">
   <div class="container-fluid-lg">
         <div class="row">
            <div class="col-12">
               <div class="navbar-top">
                     <button class="navbar-toggler d-xl-none d-block p-0 me-3" type="button"
                        data-bs-toggle="offcanvas" data-bs-target="#primaryMenu">
                        <span class="navbar-toggler-icon">
                           <i class="iconly-Category icli"></i>
                        </span>
                     </button>

                     <a href="{{ route('front.index') }}" class="web-logo nav-logo text-white">
                     <img src="{{ asset('assets/images/'.$gs->logo) }}" class="img-fluid blur-up lazyload" alt="">
                     </a>

                     <div class="search-full">
                        <div class="input-group">
                           <span class="input-group-text">
                                 <i data-feather="search" class="font-light"></i>
                           </span>
                           <input type="text" class="form-control search-type" placeholder="Search here..">
                           <span class="input-group-text close-search">
                                 <i data-feather="x" class="font-light"></i>
                           </span>
                        </div>
                     </div>

                     <div class="middle-box">
                        <div class="center-box">
                           <form id="searchForm" class="search-form form-inline search-pill-shape" action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}" method="GET">
                              <div class="searchbar-box-2 input-group d-xl-flex d-none">
                                 
                                    <button class="btn search-icon" type="button">
                                       <i class="iconly-Search icli"></i>
                                    </button>
                                    <input type="text" id="prod_name" class="form-control" name="search" placeholder="Search for products..." value="{{ request()->input('search') }}" />
                                    <button class="btn search-button" type="submit">Search</button>
                                 
                              </div>
                           </form>
                        </div>
                     </div>

                     <!-- <div class="rightside-menu support-sidemenu">
                        <div class="support-box">
                           <div class="support-image">
                                 <img src="{{asset('assets/front-end/assets/images/icon/support.png')}}" class="img-fluid blur-up lazyload"
                                    alt="">
                           </div>
                           <div class="support-number">
                                 <h2>(123) 456 7890</h2>
                                 <h4>24/7 Support Center</h4>
                           </div>
                        </div>
                     </div> -->

               </div>
            </div>
         </div>
   </div>
</div>