@extends('layouts.front')

@section('content')
@include('partials.global.common-header')

   <!-- Breadcrumb Section Start -->
   <section class="breadscrumb-section pt-0">
      <div class="container-fluid-lg">
         <div class="row">
               <div class="col-12">
                  <div class="breadscrumb-contain">
                     <h2>{{$productt->name}}</h2>
                     <nav>
                           <ol class="breadcrumb mb-0">
                              <li class="breadcrumb-item">
                                 <a href="{{ route('front.index') }}">
                                       <i class="fa-solid fa-house"></i>
                                 </a>
                              </li>

                              <li class="breadcrumb-item active">{{$productt->name}}</li>
                           </ol>
                     </nav>
                  </div>
               </div>
         </div>
      </div>
   </section>
   <!-- Breadcrumb Section End -->

   @include('partials.product-details.top')

   <!-- Releted Product Section Start -->
   <section class="product-list-section section-b-space">
      <div class="container-fluid-lg">
         <div class="title">
               <h2>Related Products</h2>
               <span class="title-leaf">
                  <svg class="icon-width">
                     <use xlink:href="{{asset('assets/front-end/svg/leaf.svg#leaf')}}"></use>
                  </svg>
               </span>
         </div>
         <div class="row">
               <div class="col-12">
                  <div class="slider-6_1 product-wrapper">

                     @foreach (DB::table('products')->where('type',$productt->type)->where('product_type',$productt->product_type)->where('language_id',Session::has('language') ? Session::get('language') : 1)->take(12)->get() as $item)

                        <div>
                              <div class="product-box-3 wow fadeInUp">
                                 <div class="product-header">
                                    <div class="product-image">
                                          <a href="{{ route('front.product', $item->slug) }}">
                                             <img src="{{ $item->photo ? asset('assets/images/products/'.$item->photo):asset('assets/images/noimage.png')}}"
                                                class="img-fluid blur-up lazyload" alt="">
                                          </a>
                                    </div>
                                 </div>

                                 <div class="product-footer">
                                    <div class="product-detail">
                                          <span class="span-name">{{App\Models\Product::find($item->id)->category->name}}</span>
                                          <a href="{{ route('front.product', $item->slug) }}">
                                             <h5 class="name">{{ App\Models\Product::find($item->id)->showName()}}</h5>
                                          </a>
                                          <h5 class="price"><span class="theme-color">{{ App\Models\Product::find($item->id)->showPrice()}}</span> <del>{{ App\Models\Product::find($item->id)->showPreviousPrice() }}</del>
                                          </h5>

                                          <div class="addtocart_btn">

                                                @if(App\Models\Product::where('id',$item->id)->first()->emptyStock())

                                                    <button onclick="location.href = '#';"
                                                        class="btn btn-animation product-button btn-sm">Out Of Stock <i
                                                        class="fa-solid fa-times icon"></i>
                                                    </button>

                                                @else

                                                    <a href="javascript:;" data-href="{{ route('product.cart.add',$item->id) }}" class="text-light add-cart button add_to_cart_button btn btn-animation product-button btn-sm">
                                                        <span>Add</span> <i class="fa-solid fa-plus"></i>
                                                    </a>

                                                @endif

                                          </div>

                                    </div>
                                 </div>
                              </div>
                        </div>

                     @endforeach
                  </div>
               </div>
         </div>
      </div>
   </section>
   <!-- Releted Product Section End -->

@includeIf('partials.global.common-footer')


@if($gs->is_report)

@if(Auth::check())

{{-- REPORT MODAL SECTION --}}

<div class="modal fade report" id="report-modal" tabindex="-1" role="dialog" aria-labelledby="report-modal-Title" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

 <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>

                    <div class="login-area">
                        <div class="header-area forgot-passwor-area">
                            <h4 class="title text-center">{{ __(('REPORT PRODUCT'))}}</h4>
                            <p class="text">{{ __('Please give the following details')}}</p>
                        </div>
                        <div class="login-form">

                            <form id="reportform" action="{{ route('product.report') }}" method="POST">

                              @include('includes.admin.form-login')

                                {{ csrf_field() }}
                                <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                                <input type="hidden" name="product_id" value="{{ $productt->id }}">
                                <div class="form-input">
                                    <input type="text" name="title" class="User Name form-control border" placeholder="{{ __('Enter Report Title') }}" required="">

                                </div>
                                <br>

                                <div class="form-input">
                                  <textarea name="note" class="User Name form-control border" placeholder="{{ __('Enter Report Note') }}" required=""></textarea>
                                </div>

                                <button type="submit" class="submit-btn">{{ __('SUBMIT') }}</button>
                            </form>
                        </div>
                    </div>
      </div>
    </div>
  </div>
</div>

{{-- REPORT MODAL SECTION ENDS --}}

@endif

@endif
@endsection

@section('script')

<script src="{{ asset('assets/front/js/jquery.elevatezoom.js') }}"></script>

<!-- Initializing the slider -->


<script type="text/javascript">
lazy();

    (function($) {
		"use strict";

         //initiate the plugin and pass the id of the div containing gallery images
      $("#single-image-zoom").elevateZoom({
         gallery: 'gallery_09',
         zoomType: "inner",
         cursor: "crosshair",
         galleryActiveClass: 'active',
         imageCrossfade: true,
         loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'
      });
      //pass the images to Fancybox
      $("#single-image-zoom").bind("click", function(e) {
         var ez = $('#single-image-zoom').data('elevateZoom');
         $.fancybox(ez.getGalleryList());
         return false;
      });

          $(document).on("submit", "#emailreply" , function(){
          var token = $(this).find('input[name=_token]').val();
          var subject = $(this).find('input[name=subject]').val();
          var message =  $(this).find('textarea[name=message]').val();
          var email = $(this).find('input[name=email]').val();
          var name = $(this).find('input[name=name]').val();
          var user_id = $(this).find('input[name=user_id]').val();
          $('#eml').prop('disabled', true);
          $('#subj').prop('disabled', true);
          $('#msg').prop('disabled', true);
          $('#emlsub').prop('disabled', true);
     $.ajax({
            type: 'post',
            url: "{{URL::to('/user/user/contact')}}",
            data: {
                '_token': token,
                'subject'   : subject,
                'message'  : message,
                'email'   : email,
                'name'  : name,
                'user_id'   : user_id
                  },
            success: function( data) {
          $('#eml').prop('disabled', false);
          $('#subj').prop('disabled', false);
          $('#msg').prop('disabled', false);
          $('#subj').val('');
          $('#msg').val('');
          $('#emlsub').prop('disabled', false);
        if(data == 0)
          toastr.error("Email Not Found");
        else
          toastr.success("Message Sent");
          $('#vendorform').modal('hide');
            }
        });
          return false;
        });

})(jQuery);



</script>
@endsection
