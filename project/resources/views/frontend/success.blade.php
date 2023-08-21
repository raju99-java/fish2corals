@extends('layouts.front')

@section('content')
@include('partials.global.common-header')



    <!-- Breadcrumb Section Start -->
    <section class="breadscrumb-section pt-0">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="breadscrumb-contain breadscrumb-order">
                        <div class="order-box">
                            <div class="order-image">
                                <div class="checkmark">
                                    <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                    </svg>
                                    <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                    </svg>
                                    <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                    </svg>
                                    <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                    </svg>
                                    <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                    </svg>
                                    <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                    </svg>
                                    <svg class="checkmark__check" height="36" viewBox="0 0 48 36" width="48"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M47.248 3.9L43.906.667a2.428 2.428 0 0 0-3.344 0l-23.63 23.09-9.554-9.338a2.432 2.432 0 0 0-3.345 0L.692 17.654a2.236 2.236 0 0 0 .002 3.233l14.567 14.175c.926.894 2.42.894 3.342.01L47.248 7.128c.922-.89.922-2.34 0-3.23">
                                        </path>
                                    </svg>
                                    <svg class="checkmark__background" height="115" viewBox="0 0 120 115" width="120"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M107.332 72.938c-1.798 5.557 4.564 15.334 1.21 19.96-3.387 4.674-14.646 1.605-19.298 5.003-4.61 3.368-5.163 15.074-10.695 16.878-5.344 1.743-12.628-7.35-18.545-7.35-5.922 0-13.206 9.088-18.543 7.345-5.538-1.804-6.09-13.515-10.696-16.877-4.657-3.398-15.91-.334-19.297-5.002-3.356-4.627 3.006-14.404 1.208-19.962C10.93 67.576 0 63.442 0 57.5c0-5.943 10.93-10.076 12.668-15.438 1.798-5.557-4.564-15.334-1.21-19.96 3.387-4.674 14.646-1.605 19.298-5.003C35.366 13.73 35.92 2.025 41.45.22c5.344-1.743 12.628 7.35 18.545 7.35 5.922 0 13.206-9.088 18.543-7.345 5.538 1.804 6.09 13.515 10.696 16.877 4.657 3.398 15.91.334 19.297 5.002 3.356 4.627-3.006 14.404-1.208 19.962C109.07 47.424 120 51.562 120 57.5c0 5.943-10.93 10.076-12.668 15.438z">
                                        </path>
                                    </svg>
                                </div>
                            </div>

                            <div class="order-contain">
                                <h3 class="theme-color">Order Success</h3>
                                <h5 class="text-content">Payment Is Successfull And Your Order Is On The Way</h5>
                                <h6>{{ __('Order ID') }} : {{$order->order_number}}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->


<section class="tempcart">

    @if(!empty($tempcart))

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <!-- Starting of Dashboard data-table area -->
                <div class="content-box section-padding add-product-1">
                    <div class="top-area">
                        <div class="content order-de">
                            <h4 class="heading">
                                {{ __('THANK YOU FOR YOUR PURCHASE.') }}
                            </h4>
                            <p class="text">
                                {{ __("We'll email you an order confirmation with details and tracking info.") }}
                            </p>
                            <a href="{{ route('front.index') }}" class="link">{{ __('Get Back To Our Homepage') }}</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="product__header">
                                <div class="row reorder-xs">
                                    <div class="col-lg-12">
                                        <div class="product-header-title">
                                            <h4>{{ __('Order#') }} {{$order->order_number}}</h4>
                                        </div>
                                    </div>
                                    @include('alerts.form-success')
                                    <div class="col-md-12" id="tempview">
                                        <div class="dashboard-content">
                                            <div class="view-order-page" id="print">
                                                <p class="order-date">{{ __('Order Date') }}
                                                    {{date('d-M-Y',strtotime($order->created_at))}}</p>


                                                @if($order->dp == 1)

                                                <div class="billing-add-area">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <h5>{{ __('Shipping Address') }}</h5>
                                                            <address>
                                                                {{ __('Name:') }} {{$order->customer_name}}<br>
                                                                {{ __('Email:') }} {{$order->customer_email}}<br>
                                                                {{ __('Phone:') }} {{$order->customer_phone}}<br>
                                                                {{ __('Address:') }} {{$order->customer_address}}<br>
                                                                {{$order->customer_city}}-{{$order->customer_zip}}
                                                            </address>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <h5>{{ __('Shipping Method') }}</h5>

                                                            <p>{{ __('Payment Status') }}
                                                                @if($order->payment_status == 'Pending')
                                                                    <span class='badge badge-danger'>{{ __('Unpaid') }}</span>
                                                                @else
                                                                    <span class='badge badge-success'>{{ __('Paid') }}</span>
                                                                @endif
                                                            </p>

                                                            <p>{{ __('Tax :') }}
                                                                {{ \PriceHelper::showOrderCurrencyPrice((($order->tax) / $order->currency_value),$order->currency_sign) }}
                                                            </p>

                                                            <p>{{ __('Paid Amount:') }}
                                                                {{ \PriceHelper::showOrderCurrencyPrice((($order->pay_amount + $order->wallet_price) * $order->currency_value),$order->currency_sign) }}
                                                            </p>
                                                            <p>{{ __('Payment Method:') }} {{$order->method}}</p>

                                                            @if($order->method != "Cash On Delivery")
                                                            @if($order->method=="Stripe")
                                                            {{ $order->method }} {{ __('Charge ID:') }} <p>{{$order->charge_id}}</p>
                                                            @endif
                                                            {{ $order->method }} {{ __('Transaction ID:') }} <p id="ttn">{{ $order->txnid }}</p>

                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>

                                                @else
                                                <div class="shipping-add-area">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            @if($order->shipping == "shipto")
                                                            <h5>{{ __('Shipping Address') }}</h5>
                                                            <address>
                                                                {{ __('Name:') }}
                                                                {{$order->shipping_name == null ? $order->customer_name : $order->shipping_name}}<br>
                                                                {{ __('Email:') }}
                                                                {{$order->shipping_email == null ? $order->customer_email : $order->shipping_email}}<br>
                                                                {{ __('Phone:') }}
                                                                {{$order->shipping_phone == null ? $order->customer_phone : $order->shipping_phone}}<br>
                                                                {{ __('Address:') }}
                                                                {{$order->shipping_address == null ? $order->customer_address : $order->shipping_address}}<br>
                                                                {{$order->shipping_city == null ? $order->customer_city : $order->shipping_city}}-{{$order->shipping_zip == null ? $order->customer_zip : $order->shipping_zip}}
                                                            </address>
                                                            @else
                                                            <h5>{{ __('PickUp Location') }}</h5>
                                                            <address>
                                                                {{ __('Address:') }} {{$order->pickup_location}}<br>
                                                            </address>
                                                            @endif

                                                        </div>
                                                        <div class="col-md-6">
                                                            <h5>{{ __('Shipping Method') }}</h5>
                                                            @if($order->shipping == "shipto")
                                                            <p>{{ __('Ship To Address') }}</p>
                                                            @else
                                                            <p>{{ __('Pick Up') }}</p>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="billing-add-area">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <h5>{{ __('Billing Address') }}</h5>
                                                            <address>
                                                                {{ __('Name:') }} {{$order->customer_name}}<br>
                                                                {{ __('Email:') }} {{$order->customer_email}}<br>
                                                                {{ __('Phone:') }} {{$order->customer_phone}}<br>
                                                                {{ __('Address:') }} {{$order->customer_address}}<br>
                                                                {{$order->customer_city}}-{{$order->customer_zip}}
                                                            </address>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <h5>{{ __('Payment Information') }}</h5>

                                                            @if($order->shipping_cost != 0)
                                                            <p>{{ $order->shipping_title }}:
                                                                {{ \PriceHelper::showOrderCurrencyPrice($order->shipping_cost,$order->currency_sign) }}
                                                            </p>
                                                            @endif


                                                            @if($order->packing_cost != 0)
                                                            <p>{{ $order->packing_title }}:
                                                                {{ \PriceHelper::showOrderCurrencyPrice($order->packing_cost,$order->currency_sign) }}
                                                            </p>
                                                            @endif

                                                            @if($order->wallet_price != 0)
                                                            <p>{{ __('Paid From Wallet') }}:
                                                                {{ \PriceHelper::showOrderCurrencyPrice(($order->wallet_price  * $order->currency_value),$order->currency_sign) }}
                                                            </p>

                                                                @if($order->method != "Wallet")

                                                                <p>{{$order->method}}:
                                                                    {{ \PriceHelper::showOrderCurrencyPrice(($order->pay_amount  * $order->currency_value),$order->currency_sign) }}
                                                                </p>

                                                                @endif

                                                            @endif

                                                            <p>{{ __('Tax :') }}
                                                                {{ \PriceHelper::showOrderCurrencyPrice((($order->tax) / $order->currency_value),$order->currency_sign) }}
                                                            </p>

                                                            <p>{{ __('Paid Amount:') }}

                                                                @if($order->method != "Wallet")
                                                                {{ \PriceHelper::showOrderCurrencyPrice((($order->pay_amount+$order->wallet_price) * $order->currency_value),$order->currency_sign) }}

                                                                @else
                                                                {{ \PriceHelper::showOrderCurrencyPrice(($order->wallet_price * $order->currency_value),$order->currency_sign) }}
                                                                @endif



                                                            </p>
                                                            <p>{{ __('Payment Method:') }} {{$order->method}}</p>

                                                            @if($order->method != "Cash On Delivery" && $order->method != "Wallet")
                                                                @if($order->method=="Stripe")
                                                                    {{$order->method}} {{ __('Charge ID:') }} <p>{{$order->charge_id}}</p>
                                                                @else
                                                                    {{$order->method}} {{ __('Transaction ID:') }} <p id="ttn">{{$order->txnid}}</p>
                                                                @endif

                                                            @endif

                                                        </div>
                                                    </div>
                                                </div>
                                                @endif
                                                <br>
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <h4 class="text-center">{{ __('Ordered Products:') }}</h4>
                                                        <thead>
                                                            <tr>
                                                                <th width="35%">{{ __('Name') }}</th>
                                                                <th width="20%">{{ __('Details') }}</th>
                                                                <th>{{ __('Price') }}</th>
                                                                <th>{{ __('Total') }}</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                            @foreach($tempcart->items as $product)
                                                            <tr>

                                                                <td>{{ $product['item']['name'] }}</td>
                                                                <td>
                                                                    <b>{{ __('Quantity') }}</b>: {{$product['qty']}}
                                                                    <br>
                                                                    @if(!empty($product['size']))
                                                                    <b>{{ __('Size') }}</b>:
                                                                    {{ $product['item']['measure'] }}{{str_replace('-',' ',$product['size'])}}
                                                                    <br>
                                                                    @endif
                                                                    @if(!empty($product['color']))
                                                                    <div class="d-flex mt-2">
                                                                        <b>{{ __('Color') }}</b>: <span
                                                                            id="color-bar"
                                                                            style="border: 10px solid #{{$product['color'] == "" ? "white" : $product['color']}};"></span>
                                                                    </div>
                                                                    @endif

                                                                    @if(!empty($product['keys']))

                                                                    @foreach( array_combine(explode(',',
                                                                    $product['keys']), explode(',', $product['values']))
                                                                    as $key => $value)

                                                                    <b>{{ ucwords(str_replace('_', ' ', $key))  }} :
                                                                    </b> {{ $value }} <br>
                                                                    @endforeach

                                                                    @endif

                                                                </td>

                                                                <td>{{ \PriceHelper::showCurrencyPrice(($product['item_price'] ) * $order->currency_value) }}
                                                                </td>

                                                                <td>{{ \PriceHelper::showCurrencyPrice($product['price'] * $order->currency_value)  }} <small>{{ $product['discount'] == 0 ? '' : '('.$product['discount'].'% '.__('Off').')' }}</small>
                                                                </td>

                                                            </tr>
                                                            @endforeach

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- Ending of Dashboard data-table area -->
            </div>

            @endif

</section>





@include('partials.global.common-footer')
@endsection

@section('script')


@endsection
