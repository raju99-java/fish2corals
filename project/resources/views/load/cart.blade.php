
<!-- new -->

<div class="onhover-div cart-popup">
    <ul class="cart-list cart_list product_list_widget">
        @if (Session::has('cart'))
                <li></li>
            @foreach(Session::get('cart')->items as $product)
                
                <li class="">
                    <div class="drop-cart mini-cart-item">

                        <a href="{{ route('front.product', $product['item']['slug']) }}" class="drop-image product-image">
                            <img src="{{ $product['item']['photo'] ? filter_var($product['item']['photo'], FILTER_VALIDATE_URL) ?$product['item']['photo']:asset('assets/images/products/'.$product['item']['photo']):asset('assets/images/noimage.png') }}"
                                class="blur-up lazyload attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="Cart product">
                        </a>

                        <div class="drop-contain cart-item-quantity">
                            <a href="{{ route('front.product',$product['item']['slug']) }}" >
                                <h5 class="product-name">{{ mb_strlen($product['item']['name'],'UTF-8') > 45 ? mb_substr($product['item']['name'],0,45,'UTF-8').'...' : $product['item']['name'] }}</h5>
                            </a>

                            <span class="cart-product-qty" id="cqt{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">{{$product['qty']}}</span><span>{{ $product['item']['measure'] }}</span>
                            x
                            <span id="prct{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">{{ App\Models\Product::convertPrice($product['item_price']) }} {{ $product['discount'] == 0 ? '' : '('.$product['discount'].'% '.__('Off').')' }}</span>
                            
                        </div>

                        <div class="close-button cart-remove remove" data-class="cremove{{ $product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values']) }}" data-href="{{ route('product.cart.remove',$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])) }}" title="Remove this item" >
                            <i class="fa-solid fa-xmark"></i>
                        </div>
                        
                    </div>
                </li>

            @endforeach
        @else

            <div class="drop-cart">
                <div class="drop-contain">
                    <h4 class="text-center">{{ __('Cart is Empty!! Add some products in your Cart') }}</h4>
                </div>
            </div>

        @endif

    </ul>

    <div class="price-box total-cart">
        <h5>Total :</h5>
        <div class="price">
            <h4 class="theme-color fw-bold cart-total">{{ Session::has('cart') ? App\Models\Product::convertPrice(Session::get('cart')->totalPrice) : '0.00' }}</h4>
        </div>
    </div>


    <div class="button-group">
        <a href="{{ route('front.cart') }}" class="btn btn-sm cart-button">View Cart</a>
        <a href="{{ route('front.checkout') }}" class="btn btn-sm cart-button theme-bg-color
            text-white">Checkout</a>
    </div>

</div>
