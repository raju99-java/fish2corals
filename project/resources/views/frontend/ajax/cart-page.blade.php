<!-- Cart Section Start -->

<div class="container-fluid-lg cartpage">
        <div class="row g-sm-5 g-3">

            @if(Session::has('cart'))

                <div class="col-xxl-12">
                    <div class="cart-table">
                        <div class="table-responsive-xl gocover">
                            <table class="table shop_table cart">
                                <tbody>

                                    <tr>
                                        <th class="product-name">{{ __('Product') }}</th>
                                        <th class="product-price">{{ __('Price') }}</th>
                                        <th class="product-quantity">{{ __('Quantity') }}</th>
                                        <th class="product-subtotal">{{ __('Subtotal') }}</th>
                                        <th class="product-remove">{{ __('Action') }}</th>
                                    </tr>

                                    @foreach ($products as $product)
                                        
                                        <tr class="product-box-contain woocommerce-cart-form__cart-item cart_item">
                                            <td class="product-detail">
                                                <div class="product border-0">
                                                    <a href="{{ route('front.product', $product['item']['slug']) }}" class="product-image">
                                                        <img src="{{ $product['item']['photo'] ? asset('assets/images/products/'.$product['item']['photo']) : asset('assets/images/noimage.png') }}"
                                                            class="img-fluid blur-up lazyload" alt="">
                                                    </a>
                                                    <div class="product-detail">
                                                        <ul>
                                                            <li class="name">
                                                                <a href="{{ route('front.product', $product['item']['slug']) }}">
                                                                {{ mb_strlen($product['item']['name'],'UTF-8') > 35 ? mb_substr($product['item']['name'],0,35,'UTF-8').'...' : $product['item']['name']}}
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="price">
                                                <h5>{{ App\Models\Product::convertPrice($product['item_price']) }} </h6>
                                            </td>

                                            <!-- <td class="quantity">

                                                <div class="quantity-price">
                                                    <div class="cart_qty">
                                                        <div class="input-group">
                                                            <button type="button" class="btn qty-left-minus"
                                                                data-type="minus" data-field="">
                                                                <i class="fa fa-minus ms-0" aria-hidden="true"></i>
                                                            </button>
                                                            <input class="form-control input-number qty-input" type="text"
                                                                name="quantity" value="0">
                                                            <button type="button" class="btn qty-right-plus"
                                                                data-type="plus" data-field="">
                                                                <i class="fa fa-plus ms-0" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </td> -->

                                            @if($product['item']['type'] == 'Physical' && $product['item']['type'] != 'affiliate')
                                                <td class="product-quantity">
                                                    <input type="hidden" class="prodid" value="{{$product['item']['id']}}">
                                                    <input type="hidden" class="itemid"
                                                        value="{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">
                                                    <input type="hidden" class="size_qty" value="{{$product['size_qty']}}">
                                                    <input type="hidden" class="size_price" value="{{$product['size_price']}}">
                                                    <input type="hidden" class="minimum_qty" value="{{ $product['item']['minimum_qty'] == null ? '0' : $product['item']['minimum_qty'] }}">
                                                    <div class="quantity">
                                                        <input id="qty{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}" class="qttotal1" type="number" name="quantity"  value="{{ $product['qty'] }}">
                                                    </div>
                                                </td>
                                            @else
                                                <td class="product-quantity">
                                                    1
                                                </td>
                                            @endif

                                            @if($product['size_qty'])
                                            <input type="hidden"
                                                id="stock{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}"
                                                value="{{$product['size_qty']}}">
                                            @elseif($product['item']['type'] != 'Physical')
                                            <input type="hidden"
                                                id="stock{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}"
                                                value="1">
                                            @else
                                            <input type="hidden"
                                                id="stock{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}"
                                                value="{{$product['stock']}}">
                                            @endif

                                            <td class="subtotal product-subtotal">
                                                <p class="d-inline-block" id="prc{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">
                                                    {{ App\Models\Product::convertPrice($product['price']) }}
                                                </p>
                                                @if ($product['discount'] != 0)
                                                <strong>{{$product['discount']}} %{{__('off')}}</strong>
                                                @endif
                                            </td>

                                            <td class="save-remove product-remove">
                                                <a href="#" class="remove cart-remove close_button" data-class="cremove{{ $product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values']) }}" data-href="{{ route('product.cart.remove',$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])) }}">Remove</a>
                                            </td>
                                        </tr>

                                    @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-12">
                    <div class="summery-box cart-collaterals">
                        <div class="summery-header cart_totals">
                            <h3>Cart Total</h3>
                        </div>

                        <div class="summery-contain">
                            <ul>
                                <li>
                                    <h4>Subtotal</h4>
                                    <h4 class="price cart-total">{{ Session::has('cart') ? App\Models\Product::convertPrice($totalPrice) : '0.00' }}</h4>
                                </li>

                                <li class="align-items-start">
                                    <h4>Discount</h4>
                                    <h4 class="price text-end discount">{{ App\Models\Product::convertPrice(0)}}</h4>
                                    <input type="hidden" id="d-val" value="{{ App\Models\Product::convertPrice(0)}}">
                                </li>
                            </ul>
                        </div>


                        <ul class="summery-total">
                            <li class="list-total border-top-0 order-total">
                                <h4>Total</h4>
                                <h4 class="price theme-color woocommerce-Price-amount amount main-total">{{ Session::has('cart') ? App\Models\Product::convertPrice($mainTotal) : '0.00' }}</h4>
                            </li>
                        </ul>

                        

                        <div class="button-group cart-button">
                            <ul>
                                <li class="wc-proceed-to-checkout">
                                    <a href="{{ route('front.checkout') }}" class="btn btn-animation proceed-btn fw-bold checkout-button">Process To Checkout</a>
                                </li>

                                <li>
                                    <button onclick="location.href = '{{ route('front.category') }}';"
                                        class="btn btn-light shopping-button text-dark">
                                        <i class="fa-solid fa-arrow-left-long"></i>Return To Shopping</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            @else

                <div class="col-xxl-12">
                    <div class="cart-table">
                        <div class="table-responsive-xl">
                            <h4 class="text-center">{{ __('Cart is Empty!! Add some products in your Cart') }}</h4>
                        </div>
                    </div>
                </div>

            @endif

        </div>
    </div>

<!-- Cart Section End -->

<script src="{{ asset('assets/front/js/custom.js') }}"></script>