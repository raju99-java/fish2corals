<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="Fish2 Corals">
    <meta name="author" content="Fish2 Corals">

    @if(isset($page->meta_tag) && isset($page->meta_description))

		<meta name="keywords" content="{{ $page->meta_tag }}">
		<meta name="description" content="{{ $page->meta_description }}">
		<title>{{$gs->title}}</title>

	@elseif(isset($blog->meta_tag) && isset($blog->meta_description))

		<meta property="og:title" content="{{$blog->title}}" />
		<meta property="og:description" content="{{ $blog->meta_description != null ? $blog->meta_description : strip_tags($blog->meta_description) }}" />
		<meta property="og:image" content="{{asset('assets/images/blogs/'.$blog->photo)}}" />
		<meta name="keywords" content="{{ $blog->meta_tag }}">
		<meta name="description" content="{{ $blog->meta_description }}">
		<title>{{$gs->title}}</title>

	@elseif(isset($productt))

		<meta name="keywords" content="{{ !empty($productt->meta_tag) ? implode(',', $productt->meta_tag ): '' }}">
		<meta name="description" content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}">
		<meta property="og:title" content="{{$productt->name}}" />
		<meta property="og:description" content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}" />
		<meta property="og:image" content="{{asset('assets/images/thumbnails/'.$productt->thumbnail)}}" />
		<meta name="author" content="GeniusOcean">
		<title>{{substr($productt->name, 0,11)."-"}}{{$gs->title}}</title>

	@else

		<meta property="og:title" content="{{$gs->title}}" />
		<meta property="og:image" content="{{asset('assets/images/'.$gs->logo)}}" />
		<meta name="keywords" content="{{ $seo->meta_keys }}">
		<meta name="author" content="GeniusOcean">
		<title>{{$gs->title}}</title>

	@endif

    <link rel="icon"  type="image/x-icon" href="{{asset('assets/images/'.$gs->favicon)}}"/>
    

     <!-- Google font -->
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">

    <!-- new fornt-end -->

        <!-- bootstrap css -->
        <!--<link id="rtl-link" rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/vendors/bootstrap.css')}}">-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
        
        
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">

        <!-- wow css -->
        <link rel="stylesheet" href="{{ asset('assets/front-end/assets/css/animate.min.css')}}" />

        <!-- font-awesome css -->
        <!--<link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/vendors/font-awesome.css')}}">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"  />
        

        <!-- feather icon css -->
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/vendors/feather-icon.css')}}">

        <!-- Plugin CSS file with desired skin css -->
        <!--<link rel="stylesheet" href="{{ asset('assets/front-end/assets/css/vendors/ion.rangeSlider.min.css')}}">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.css"  />

        <!-- slick css -->
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/vendors/slick/slick.css')}}">
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/vendors/slick/slick-theme.css')}}">

        <!-- animation css -->
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/font-style.css')}}">

        <!-- Template css -->
        <link id="color-link" rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/style.css')}}">
        
        <!--select-->
        
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/bootstrap-select.css')}}">
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/front-end/assets/css/select2.min.css')}}">

        <!--<link rel="stylesheet" href="{{ asset('assets/front/css/toastr.min.css') }}">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.3/toastr.css" />

    

    @if(!empty($seo->google_analytics))
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
				dataLayer.push(arguments);
		}
		gtag('js', new Date());
		gtag('config', '{{ $seo->google_analytics }}');
	</script>
	@endif
    @if(!empty($seo->facebook_pixel))
	    <script>
			!function(f,b,e,v,n,t,s)
			{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
			n.callMethod.apply(n,arguments):n.queue.push(arguments)};
			if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
			n.queue=[];t=b.createElement(e);t.async=!0;
			t.src=v;s=b.getElementsByTagName(e)[0];
			s.parentNode.insertBefore(t,s)}(window, document,'script',
			'https://connect.facebook.net/en_US/fbevents.js');
			fbq('init', '{{ $seo->facebook_pixel }}');
			fbq('track', 'PageView');
		</script>
		<noscript>
			<img height="1" width="1" style="display:none"
				 src="https://www.facebook.com/tr?id={{ $seo->facebook_pixel }}&ev=PageView&noscript=1"/>
		</noscript>
	@endif


    @yield('css')
</head>
<body class="theme-color-3 dark">

    <!-- Loader Start -->
    <div class="fullpage-loader">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
    <!-- Loader End -->


        @yield('content')

    <script>


        var mainurl = "{{ url('/') }}";
        var gs      = {!! json_encode(DB::table('generalsettings')->where('id','=',1)->first(['is_loader','decimal_separator','thousand_separator','is_cookie','is_talkto','talkto'])) !!};
        var ps_category = {{ $ps->category }};

        var lang = {
            'days': '{{ __('Days') }}',
            'hrs': '{{ __('Hrs') }}',
            'min': '{{ __('Min') }}',
            'sec': '{{ __('Sec') }}',
            'cart_already': '{{ __('Already Added To Card.') }}',
            'cart_out': '{{ __('Out Of Stock') }}',
            'cart_success': '{{ __('Successfully Added To Cart.') }}',
            'cart_empty': '{{ __('Cart is empty.') }}',
            'coupon_found': '{{ __('Coupon Found.') }}',
            'no_coupon': '{{ __('No Coupon Found.') }}',
            'already_coupon': '{{ __('Coupon Already Applied.') }}',
            'enter_coupon': '{{ __('Enter Coupon First') }}',
            'minimum_qty_error': '{{ __('Minimum Quantity is:') }}',
            'affiliate_link_copy': '{{ __('Affiliate Link Copied Successfully') }}'
        };

    </script>

    <!-- new front-end -->

    <!-- latest jquery-->
        <!--<script src="{{ asset('assets/front-end/assets/js/jquery-3.6.0.min.js')}}"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>

        <!-- jquery ui-->
        <!--<script src="{{ asset('assets/front-end/assets/js/jquery-ui.min.js')}}"></script>-->
        <script src="https://code.jquery.com/ui/1.11.3/jquery-ui.min.js"></script>
        

        <!-- Bootstrap js-->
        <!--<script src="{{ asset('assets/front-end/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
        
        <script src="{{ asset('assets/front-end/assets/js/bootstrap/bootstrap-notify.min.js')}}"></script>
        
        <!--<script src="{{ asset('assets/front-end/assets/js/bootstrap/popper.min.js')}}"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.5.4/umd/popper.min.js" ></script>

        <!-- feather icon js-->
        <script src="{{ asset('assets/front-end/assets/js/feather/feather.min.js')}}"></script>
        <script src="{{ asset('assets/front-end/assets/js/feather/feather-icon.js')}}"></script>

        <!-- Lazyload Js -->
        <!--<script src="{{ asset('assets/front-end/assets/js/lazysizes.min.js')}}"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/3.0.0-rc3/lazysizes.min.js" ></script>

        <!-- Slick js-->
        <script src="{{ asset('assets/front-end/assets/js/slick/slick.js')}}"></script>
        <script src="{{ asset('assets/front-end/assets/js/slick/slick-animation.min.js')}}"></script>
        <script src="{{ asset('assets/front-end/assets/js/custom-slick-animated.js')}}"></script>
        <script src="{{ asset('assets/front-end/assets/js/slick/custom_slick.js')}}"></script>

        <!-- Range slider js -->
        <!--<script src="{{ asset('assets/front-end/assets/js/ion.rangeSlider.min.js')}}"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.1.7/js/ion.rangeSlider.min.js" ></script>

        <!-- Auto Height Js -->
        <script src="{{ asset('assets/front-end/assets/js/auto-height.js')}}"></script>

        <!-- Owl Carousel -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>

        <!-- Lazyload Js -->
        <!--<script src="{{ asset('assets/front-end/assets/js/lazysizes.min.js')}}"></script>-->

        <!-- Quantity js -->
        <script src="{{ asset('assets/front-end/assets/js/quantity-2.js')}}"></script>
        
        <!-- sidebar open js -->
        <script src="{{ asset('assets/front-end/assets/js/filter-sidebar.js')}}"></script>

        <!-- Fly Cart Js -->
        <script src="{{ asset('assets/front-end/assets/js/fly-cart.js')}}"></script>

        <!-- Timer Js -->
        <!--<script src="{{ asset('assets/front-end/assets/js/timer1.js')}}"></script>-->
        <!--<script src="{{ asset('assets/front-end/assets/js/timer2.js')}}"></script>-->

        <!-- Copy clipboard Js -->
        <!--<script src="{{ asset('assets/front-end/assets/js/clipboard.min.js')}}"></script>-->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js" ></script>
        <script src="{{ asset('assets/front-end/assets/js/copy-clipboard.js')}}"></script>
        
       

        <!-- WOW js -->
        <!--<script src="{{ asset('assets/front-end/assets/js/wow.min.js')}}"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js" ></script>
        <script src="{{ asset('assets/front-end/assets/js/custom-wow.js')}}"></script>

        <!-- script js -->
        <script src="{{ asset('assets/front-end/assets/js/script.js')}}"></script>

    <!-- new front-end -->
    
     
     <!--select-->
     <script src="{{ asset('assets/front-end/assets/js/bootstrap-select.js')}}"></script>
     <script src="{{ asset('assets/front-end/assets/js/select2.full.min.js')}}"></script>

     @yield('zoom')
     <!--<script src="{{ asset('assets/front/js/toastr.min.js') }}"></script>-->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.3/toastr.min.js" ></script>
     <script src="{{ asset('assets/front/js/custom.js') }}"></script>
     <script src="{{ asset('assets/front/js/main.js') }}"></script>

    <script>
        // lazy();
        // function lazy (){
        //     $(".lazy").Lazy({
        //         scrollDirection: 'vertical',
        //         effect: "fadeIn",
        //         effectTime:1000,
        //         threshold: 0,
        //         visibleOnly: false,
        //         onError: function(element) {
        //             console.log('error loading ' + element.data('src'));
        //         }
        //     });
        // }

    </script>


    <script>
    
        $(document).ready(function(){
            
            // for top search
            $("#prod_name").on('input',function () {
                var prod_name = $('#prod_name').val();
    
                $.ajax({  
                    url : "{{route('search-product-list')}}",
                    type:"GET",
                    data: {"prod_name": prod_name},
                    success: function(res){
                        
                        var filter_products = res.content.filter_products;
                        $('#search_list').html(filter_products);
    
                    }     
                });
    
            });
            
            // for search page
            $("#prod_name_search").on('input',function () {
                var prod_name = $('#prod_name_search').val();
    
                $.ajax({  
                    url : "{{route('search-product-list')}}",
                    type:"GET",
                    data: {"prod_name": prod_name},
                    success: function(res){
                        
                        var filter_products = res.content.filter_products;
                        $('#search_list_search').html(filter_products);
    
                    }     
                });
    
            });
    
    
        }); 
        
    </script>

    


     @php
     echo Toastr::message();
     @endphp
     @yield('script')



</body>
</html>
