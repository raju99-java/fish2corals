@extends('layouts.front')
@section('content')
@include('partials.global.common-header')

   <!-- Breadcrumb Section Start -->
   <section class="breadscrumb-section pt-0">
      <div class="container-fluid-lg">
         <div class="row">
               <div class="col-12">
                  <div class="breadscrumb-contain">
                     <h2>Blog Details</h2>
                     <nav>
                           <ol class="breadcrumb mb-0">
                              <li class="breadcrumb-item">
                                 <a href="{{ route('front.index') }}">
                                       <i class="fa-solid fa-house"></i>
                                 </a>
                              </li>
                              <li class="breadcrumb-item" aria-current="page">
                                 <a href="{{ route('front.blog') }}">
                                    Blog
                                 </a>
                              </li>
                              <li class="breadcrumb-item active" aria-current="page">Blog Details</li>
                           </ol>
                     </nav>
                  </div>
               </div>
         </div>
      </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!--==================== Blog Section Start ====================-->
   <section class="blog-section section-b-space">
        <div class="container-fluid-lg">
            <div class="row g-sm-4 g-3">
               
                <div class="col-xxl-3 col-xl-4 col-lg-5 d-lg-block d-none">
                    <div class="left-sidebar-box">
                        <div class="left-search-box">
                            <div class="search-box">
                                
                                 <form action="{{ route('front.blogsearch') }}" method="GET">
                                    <input type="text" class="form-control" id="exampleFormControlInput4"
                                    name="search" placeholder="{{ __('Search Here') }}" value="{{ isset($_GET['search']) ? $_GET['search'] : '' }}" required >
                                    <button type="submit" name="submit" ><i class="fa fa-search"></i></button>
                                 </form>
                            </div>
                        </div>

                        <div class="accordion left-accordion-box" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                        aria-controls="panelsStayOpen-collapseOne">
                                        Recent Post
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingOne">
                                    <div class="accordion-body pt-0">
                                        <div class="recent-post-box">

                                             @foreach (App\Models\Blog::latest()->where('language_id',$langg->id)->limit(4)->get() as $blog)
                                                <div class="recent-box">
                                                      <a href="{{ route('front.blogshow',$blog->slug) }}" class="recent-image">
                                                         <img src="{{asset('assets/images/blogs/'.$blog->photo)}}"
                                                            class="img-fluid blur-up lazyload" alt="">
                                                      </a>

                                                      <div class="recent-detail">
                                                         <a href="{{ route('front.blogshow',$blog->slug) }}">
                                                            <h5 class="recent-name">
                                                               {{ mb_strlen($blog->title,'UTF-8') > 45 ? mb_substr($blog->title,0,45,'UTF-8')."..":$blog->title }}
                                                            </h5>
                                                         </a>
                                                         <h6>{{ date('M d - Y',(strtotime($blog->created_at))) }}</h6>
                                                      </div>
                                                </div>
                                             @endforeach

                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseTwo">
                                        Category
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingTwo">
                                    <div class="accordion-body p-0">
                                        <div class="category-list-box">
                                            <ul>
                                                @foreach ($bcats as $cat)
                                                   <li>
                                                      <a href="#">
                                                         <div class="category-name">
                                                               <h5>{{ $cat->name }}</h5>
                                                               <span>{{ $cat->blogs()->count() }}</span>
                                                         </div>
                                                      </a>
                                                   </li>
                                                @endforeach

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseThree">
                                        Product Tags
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingThree">
                                    <div class="accordion-body pt-0">
                                        <div class="product-tags-box">
                                            <ul>

                                                @foreach($tags as $tag)
                                                   @if(!empty($tag))
                                                      <li>
                                                         <a href="#">{{ $tag }}</a>
                                                      </li>
                                                   @endif
                                                @endforeach 

                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseFour">
                                        Trending Products
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingFour">
                                    <div class="accordion-body">
                                        <ul class="product-list product-list-2 border-0 p-0">

                                            @forelse($trend_products as $trend_product)
                                                <li>
                                                      <div class="offer-product">
                                                         <a href="{{route('front.product',['slug'=>$trend_product->slug])}}" class="offer-image">
                                                            <img src="{{asset('assets/images/products/'.$trend_product->photo)}}"
                                                                  class="blur-up lazyload" alt="">
                                                         </a>

                                                         <div class="offer-detail">
                                                            <div>
                                                                  <a href="{{route('front.product',['slug'=>$trend_product->slug])}}">
                                                                     <h6 class="name">{{$trend_product->name}}</h6>
                                                                  </a>
                                                                  <span></span>
                                                                  <h6 class="price theme-color">₹ {{$trend_product->price}}</h6>
                                                            </div>
                                                         </div>
                                                      </div>
                                                </li>
                                             @empty
                                             @endforelse

                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-9 col-xl-8 col-lg-7 ratio_50">

                    <div class="blog-detail-image rounded-3 mb-4">
                        <img src="{{ asset('assets/images/blogs/'.$blog->photo) }}" class="bg-img blur-up lazyload" alt="">
                        <div class="blog-image-contain">
                            <ul class="contain-list">
                                <li>{{ $blog->category->name }}</li>
                            </ul>
                            <h2>{{ $blog->title }}</h2>
                            <ul class="contain-comment-list">
                                <li>
                                    <div class="user-list">
                                        <i data-feather="user"></i>
                                        <span>{{ __('By Admin') }}</span>
                                    </div>
                                </li>

                                <li>
                                    <div class="user-list">
                                        <i data-feather="calendar"></i>
                                        <span>{{ date('M d - Y',(strtotime($blog->created_at))) }}</span>
                                    </div>
                                </li>

                                <li>
                                    <div class="user-list">
                                        <i class="fa fa-eye"></i>
                                        <span> {{ $blog->views }} {{ __('View(s)') }}</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="blog-detail-contain">
                        <p>{!! clean($blog->details , array('Attr.EnableID' => true)) !!}</p>
                    </div>
                </div>
            </div>
        </div>
      </section>
   <!--==================== Blog Section End ====================-->

@includeIf('partials.global.common-footer')
@endsection
