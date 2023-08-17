@extends('layouts.front')
@section('content')
@include('partials.global.common-header')

   <!-- Breadcrumb Section Start -->
   <section class="breadscrumb-section pt-0">
      <div class="container-fluid-lg">
         <div class="row">
               <div class="col-12">
                  <div class="breadscrumb-contain">
                     <h2>Blog</h2>
                     <nav>
                           <ol class="breadcrumb mb-0">
                              <li class="breadcrumb-item">
                                 <a href="{{ route('front.index') }}">
                                       <i class="fa-solid fa-house"></i>
                                 </a>
                              </li>
                              <li class="breadcrumb-item active" aria-current="page">Blog</li>
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
         <div class="row g-4">

               <div class="col-xxl-9 col-xl-8 col-lg-7 order-lg-2">
                  <div class="row g-4 ratio_65">

                     @foreach ($blogs as $blog)
                        <div class="col-xxl-4 col-sm-6">
                           <div class="blog-box wow fadeInUp">
                              <div class="blog-image">
                                    <a href="{{ route('front.blogshow',$blog->slug) }}">
                                       <img src="{{ $blog->photo ? asset('assets/images/blogs/'.$blog->photo):asset('assets/images/noimage.png')}}" class="bg-img blur-up lazyload" alt="">
                                    </a>
                              </div>

                              <div class="blog-contain">
                                    <div class="blog-label">
                                       <span class="time"><i data-feather="clock"></i> <span>{{ date('M d - Y',(strtotime($blog->created_at))) }}</span></span>
                                       <!-- <span class="super"><i data-feather="user"></i> <span>Mark J.
                                                Speight</span></span> -->
                                    </div>
                                    <a href="{{ route('front.blogshow',$blog->slug) }}">
                                       <h3>{{ mb_strlen($blog->title,'UTF-8') > 45 ? mb_substr($blog->title,0,45,'UTF-8')."..":$blog->title }}</h3>
                                    </a>
                                    <button onclick="location.href = '{{ route('front.blogshow',$blog->slug) }}';" class="blog-button">Read More
                                       <i class="fa-solid fa-right-long"></i></button>
                              </div>
                           </div>
                        </div>
                     @endforeach


                  </div>

                  <nav class="custome-pagination">
                     <ul class="pagination justify-content-center">

                        {{ $blogs->links() }}
                           
                     </ul>
                  </nav>
               </div>

               <div class="col-xxl-3 col-xl-4 col-lg-5 order-lg-1">
                  <div class="left-sidebar-box wow fadeInUp">

                     <div class="left-search-box">
                           <div class="search-box">
                           <form action="{{ route('front.blogsearch') }}" method="GET">
                              <input type="text" class="form-control" id="exampleFormControlInput1"
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
         </div>
      </div>
   </section>
   <!--==================== Blog Section End ====================-->

@includeIf('partials.global.common-footer')
@endsection
