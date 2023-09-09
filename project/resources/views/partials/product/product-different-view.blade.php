
<div class="row g-sm-4 g-3 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2 product-list-section">
   @foreach($prods as $product)
   <div>
      <div class="product-box-3 h-100 wow fadeInUp" data-wow-delay="0.3s">
            
         

            <div class="product-header">
               <div class="product-image">
                     <a href="{{ route('front.product', $product->slug) }}">
                        <img src="{{ $product->photo ? asset('assets/images/products/'.$product->photo):asset('assets/images/noimage.png') }}"
                           class="img-fluid blur-up lazyload" alt="">
                     </a>

                     
               </div>
            </div>

            <div class="product-footer">
               <div class="product-detail">
                     <span class="span-name">{{ $product->category->name }}</span>
                     <a href="{{ route('front.product', $product->slug) }}">
                        <h5 class="name">{{ $product->showName() }}</h5>
                     </a>
                     <p class="text-content mt-1 mb-2 product-content">{!! $product->details !!}</p>
                     <h5 class="price"><span class="theme-color"> {{ $product->setCurrency() }}</span> <del>{{ $product->showPreviousPrice() }}</del>
                     </h5>
                     <div class="add-to-cart-box bg-white">

                        <!--@if($product->emptyStock())-->
                        <!--   <div class="closed">-->
                        <!--      <a class="cart-out-of-stock button add_to_cart_button" href="#" title="{{ __('Out Of Stock') }}" ><i class="flaticon-cancel flat-mini mx-auto"></i></a>-->
                        <!--   </div>-->
                        <!--@else-->
                        <!--   <a href="javascript:;" data-href="{{ route('product.cart.add',$product->id) }}"  class="btn btn-add-cart addcart-button add-cart button add_to_cart_button">Add to Cart-->
                        <!--      <span class="add-icon bg-light-gray">-->
                        <!--            <i class="fa-solid fa-plus"></i>-->
                        <!--      </span>-->
                        <!--   </a>-->
                        <!--@endif-->
                        
                           <a href="{{ route('front.product', $product->slug) }}" class="btn btn-add-cart addcart-button">Shop Now
                              <span class="add-icon bg-light-gray">
                                    <i class="fas fa-angle-right"></i>
                              </span>
                           </a>
                        
                     </div>
               </div>
            </div>

         
            

      </div>

         
   </div>
   @endforeach
</div>
