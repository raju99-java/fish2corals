<!-- Product Left Sidebar Start -->
<section class="product-section">
  <div class="container-fluid-lg">
    <div class="row">
      <div class="col-xxl-12 col-xl-12 col-lg-12 wow fadeInUp">
        <div class="row g-4">

            <div class="col-xl-6 wow fadeInUp">
            <div class="product-left-box">
                <div class="row g-2">

                    <div class="col-12">
                        <div class="product-main-1 no-arrow">

                            @foreach($productt->galleries as $gal)
                                <div>
                                    <div class="slider-image">
                                        <img src="{{asset('assets/images/galleries/'.$gal->photo)}}" id="img-1"
                                            data-zoom-image="{{asset('assets/images/galleries/'.$gal->photo)}}"
                                            class="img-fluid image_zoom_cls-0 blur-up lazyload" alt="">
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>

                    <div class="col-12">
                        <div class="bottom-slider-image left-slider no-arrow slick-top">

                            @foreach($productt->galleries as $gal)
                                <div>
                                    <div class="sidebar-image">
                                        <img src="{{asset('assets/images/galleries/'.$gal->photo)}}"
                                            class="img-fluid blur-up lazyload" alt="">
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>

                </div>
            </div>
            </div>

                <input type="hidden" id="product_price" value="{{ round($productt->vendorPrice() * $curr->value,2) }}">
                <input type="hidden" id="curr_pos" value="{{ $gs->currency_format }}">
                <input type="hidden" id="curr_sign" value="{{ $curr->sign }}">
                <input type="hidden" id="product_prv_price" value="{{ round($productt->vendorPreviousPrice() * $curr->value,2) }}">

            <div class="col-xl-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="right-box-contain">

                @if (!empty($productt->attributes))
                    @php
                    $attrArr = json_decode($productt->attributes, true);
                    @endphp
                @endif


                @if (!empty($attrArr))
                    
                    <?php 
                    
                        $previous_price = 0;
                        $discount = 0;
                    
                    ?>
                
                        @foreach ($attrArr as $attrKey => $attrVal)
                        @if (array_key_exists("details_status",$attrVal) && $attrVal['details_status'] == 1)
                            @foreach ($attrVal['values'] as $optionKey => $optionVal)
                                
                                @if($optionKey == 0)
                                    <?php  
                                        
                                        $previous_price += $attrVal['previous_prices'][$optionKey] * $curr->value;
                                        $discount += $attrVal['discounts'][$optionKey];
                                        
                                    ?>
                                @endif
                            
                            @endforeach
                        @endif
                        @endforeach
                
                
                    <!--<h6 class="offer-top" id="off-h">({{ round($discount )}}% off)</h6>-->
                    <h2 class="name">{{ $productt->name }}</h2>
                    <div class="price-rating">
                        <h3 class="theme-color price">
                            <span class="sizeprice">{{ $productt->showPrice() }}</span>  
                            
                            <del class="sizeprvprice text-content"  > {{ $curr->sign."".$previous_price }} </del> 
                            <span class="off offer theme-color">({{ round($discount )}}% off)</span>
                            
                        </h3>
                    </div>
                    
                @else

                    <!-- <h6 class="offer-top">{{ round($productt->offPercentage() )}}% Off</h6> -->
                    <h2 class="name">{{ $productt->name }}</h2>
                    <div class="price-rating">
                        <h3 class="theme-color price">
                            <span class="sizeprice">{{ $productt->showPrice() }}</span>  
                            <del class="sizeprvprice text-content"  > {{ $productt->showPreviousPrice() }} </del> 
                            <span class="off offer theme-color">({{ round($productt->offPercentage() )}}% off)</span>
                        </h3>
                    </div>

                @endif

                    @if (!empty($attrArr))
                        <div class="product-attributes my-4">
                          <div class="row gy-4">
                          @foreach ($attrArr as $attrKey => $attrVal)
                            @if (array_key_exists("details_status",$attrVal) && $attrVal['details_status'] == 1)

                          <div class="col-lg-6">
                              <div class="form-group">
                                <strong class="text-capitalize mb-2 d-block">{{ str_replace("_", " ", $attrKey) }} :</strong>
                                <div class="">
                                @foreach ($attrVal['values'] as $optionKey => $optionVal)
                                  <div class="custom-control custom-radio form-check">
                                    <input type="hidden" class="keys" value="">
                                    <input type="hidden" class="values" value="">
                                    <input type="radio" id="{{$attrKey}}{{ $optionKey }}" name="{{ $attrKey }}" class="form-check-input custom-control-input product-attr"  data-key="{{ $attrKey }}" data-price = "{{ $attrVal['prices'][$optionKey] * $curr->value }}" data-previous_price = "{{ $attrVal['previous_prices'][$optionKey] * $curr->value }}" data-discount = "{{ $attrVal['discounts'][$optionKey] }}" value="{{ $optionVal }}" {{ $loop->first ? 'checked' : '' }}>
                                    <label class="form-check-label" for="{{$attrKey}}{{ $optionKey }}">{{ $optionVal }}

                                    @if (!empty($attrVal['prices'][$optionKey]))
                                      <!--+ {{$curr->sign}} {{$attrVal['prices'][$optionKey] * $curr->value}}-->
                                    @endif
                                    </label>
                                  </div>
                                @endforeach
                                </div>
                              </div>
                          </div>
                            @endif
                          @endforeach
                          </div>
                        </div>
                    @endif

                <div class="procuct-contain">
                    {!! $productt->short_desc !!}
                </div>

                <div class="note-box product-packege">

                    @if($productt->emptyStock())
                        <button onclick="location.href = '#';" class="btn btn-md bg-dark cart-button text-white w-100">
                        {{ __('Out Of Stock') }}
                        </button>
                    @else

                        @if(!empty($productt->size))
                        <input type="hidden" id="stock" value="{{ $productt->size_qty[0] }}">
                        @elseif(!$productt->emptyStock())
                            <input type="hidden" id="stock" value="{{ $productt->stock }}">
                        @elseif($productt->type != 'Physical')
                            <input type="hidden" id="stock" value="0">
                        @else
                            <input type="hidden" id="stock" value="">
                        @endif

                        <div class="cart_qty qty-box product-qty">
                            <div class="input-group">
                                <button type="button" class="qty-right-plus qtplus" >
                                    <i class="fa fa-plus" aria-hidden="true"></i>
                                </button>

                                <!-- <input class="form-control input-number qty-input" type="text" name="quantity" value="0"> -->

                                <input class="form-control qttotal" type="text" id="order-qty" value="{{ $productt->minimum_qty == null ? '1' : (int)$productt->minimum_qty }}">
                                
                                <input type="hidden" id="affilate_user" value="{{ $affilate_user }}">
                                <input type="hidden" id="product_minimum_qty" value="{{ $productt->minimum_qty == null ? '0' : $productt->minimum_qty }}">

                                <button type="button" class="qty-left-minus qtminus" >
                                    <i class="fa fa-minus" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>

                        
                        <input type="hidden" id="product_id" value="{{ $productt->id }}">

                        <a href="javascript:;" id="addcrt" class="btn btn-md bg-dark cart-button text-white w-100">
                        Add To Cart
                        </a>

                    @endif

                </div>

                <div class="table-details">
                    <div class="table-heading bg-brand-color-primary p-2">
                        <h3 class="h5 mb-0 text-white">Care Facts</h3>
                    </div>
                    <div class="table-body p-0">
                        <table class="table table-sm care-facts mb-0">
                            <tbody>
                                <tr>
                                    <th class="bg-brand-color-primary-light w-50">Care Level:</th>
                                    <td class="bg-brand-color-secondary-light">Easy</td>
                                </tr>
                                <tr>
                                    <th class="bg-brand-color-primary-light w-50">Temperament:</th>
                                    <td class="bg-brand-color-secondary-light">Semi-aggressive</td>
                                </tr>
                                <tr>
                                    <th class="bg-brand-color-primary-light w-50">Diet:</th>
                                    <td class="bg-brand-color-secondary-light">Omnivore</td>
                                </tr>
                                <tr>
                                    <th class="bg-brand-color-primary-light w-50">Reef Safe:</th>
                                    <td class="bg-brand-color-secondary-light">Yes</td>
                                </tr>
                                <tr>
                                    <th class="bg-brand-color-primary-light w-50">Minimum Tank Size:
                                    </th>
                                    <td class="bg-brand-color-secondary-light">30 gallons</td>
                                </tr>
                                <tr>
                                    <th class="bg-brand-color-primary-light w-50">Max Size:</th>
                                    <td class="bg-brand-color-secondary-light">3 inches</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="pickup-box">
                    <div class="pickup-detail">
                        <!-- <h4 class="text-content">Lollipop cake chocolate chocolate cake dessert jujubes.
                            Shortbread sugar plum dessert powder cookie sweet brownie.</h4> -->
                    </div>

                    <div class="product-info">
                        <ul class="product-info-list product-info-list-2">
                            <li>Category : <a href="{{route('front.category',$productt->category->slug)}}">{{$productt->category->name}}</a></li>
                            <!-- <li>Brand : <a href="javascript:void(0)">Cake,</a> <a
                                    href="javascript:void(0)">Backery</a></li> -->
                        </ul>
                    </div>
                </div>

                <div class="paymnet-option">
                    <div class="product-title">
                        <h4>Guaranteed Safe Checkout</h4>
                    </div>
                    <ul>
                        <li>
                            <a href="javascript:void(0)">
                                <img src="{{asset('assets/front-end/assets/images/product/payment/1.svg')}}"
                                    class="blur-up lazyload" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <img src="{{asset('assets/front-end/assets/images/product/payment/2.svg')}}"
                                    class="blur-up lazyload" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <img src="{{asset('assets/front-end/assets/images/product/payment/3.svg')}}"
                                    class="blur-up lazyload" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <img src="{{asset('assets/front-end/assets/images/product/payment/4.svg')}}"
                                    class="blur-up lazyload" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <img src="{{asset('assets/front-end/assets/images/product/payment/5.svg')}}"
                                    class="blur-up lazyload" alt="">
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- AddToAny BEGIN -->
                <div class="a2a_kit a2a_kit_size_32 a2a_default_style mt-3">
                    <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                    <a class="a2a_button_facebook"></a>
                    <a class="a2a_button_twitter"></a>
                    <a class="a2a_button_email"></a>
                </div>
                <script async src="https://static.addtoany.com/menu/page.js"></script>
                <!-- AddToAny END -->
            </div>
            </div>

            <div class="col-12">
                <div class="product-section-box">
                    <ul class="nav nav-tabs custom-nav" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="description-tab" data-bs-toggle="tab"
                                data-bs-target="#description" type="button" role="tab"
                                aria-controls="description" aria-selected="true">Description</button>
                        </li>
                    </ul>

                    <div class="tab-content custom-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="description" role="tabpanel"
                            aria-labelledby="description-tab">
                            <div class="product-description">
                                <div class="nav-desh">
                                    {!! $productt->details !!}
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
<!-- Product Left Sidebar End -->