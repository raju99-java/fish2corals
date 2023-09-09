<div class="top-filter-menu">
      <div class="category-dropdown">
         <h5 class="text-content">Sort By :</h5>
         
         <div class="products-header-right dropdown">
            <form class="woocommerce-ordering" method="get">

               <select name="sort" class="orderby short-item" aria-label="Shop order" id="sortby">
                  <option value="date_desc">{{ __('Latest Product') }}</option>
                  <option value="date_asc">{{ __('Oldest Product') }}</option>
                  <option value="price_asc">{{ __('Lowest Price') }}</option>
                  <option value="price_desc">{{ __('Highest Price') }}</option>
               </select>

               @if($gs->product_page != null)
               <select id="pageby" name="pageby" class="short-itemby-no">
                  @foreach (explode(',',$gs->product_page) as $element)
                  <option value="{{ $element }}">{{ $element }}</option>
                  @endforeach
               </select>
               @else
               <input type="hidden" id="pageby" name="paged" value="{{ $gs->page_count }}">
               <input type="hidden" name="shop-page-layout" value="left-sidebar">
               @endif
            </form>
         </div>
         
         
         

      </div>

      <div class="grid-option d-none d-md-block">
         <ul>
            <li class="three-grid">
                <a href="javascript:void(0)">
                    <img src="{{asset('assets/front-end/assets/svg/grid-3.svg')}}" class="blur-up lazyload" alt="">
                </a>
            </li>
            <li class="grid-btn d-xxl-inline-block d-none active">
                  <a href="javascript:void(0)">
                     <img src="{{asset('assets/front-end/assets/svg/grid-4.svg')}}"
                        class="blur-up lazyload d-lg-inline-block d-none" alt="">
                     <img src="{{asset('assets/front-end/assets/svg/grid.svg')}}"
                        class="blur-up lazyload img-fluid d-lg-none d-inline-block" alt="">
                  </a>
            </li>
            <li class="list-btn">
                  <a href="javascript:void(0)">
                     <img src="{{asset('assets/front-end/assets/svg/list.svg')}}" class="blur-up lazyload" alt="">
                  </a>
            </li>
         </ul>
      </div>
</div>