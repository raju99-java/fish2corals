@extends('layouts.front')
@section('content')
@include('partials.global.common-header')

      <!-- Breadcrumb Section Start -->
      <section class="breadscrumb-section pt-0">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="breadscrumb-contain">
                        <h2>User Dashboard</h2>
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="{{ route('front.index') }}">
                                        <i class="fa-solid fa-house"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">User Dashboard</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
      </section>
      <!-- Breadcrumb Section End -->

      <!-- User Dashboard Section Start -->
      <section class="user-dashboard-section section-b-space">
        <div class="container-fluid-lg">
            <div class="row">

                <div class="col-xxl-4 col-lg-4">
                  @include('partials.user.dashboard-sidebar')
                </div>

                <div class="col-xxl-8 col-lg-8">
                    <button class="btn left-dashboard-show btn-animation btn-md fw-bold d-block mb-4 d-lg-none">Show
                        Menu</button>
                    <div class="dashboard-right-sidebar">
                        <div class="tab-content" id="pills-tabContent">

                            <div class="tab-pane fade show active" id="pills-dashboard" role="tabpanel"
                                aria-labelledby="pills-dashboard-tab">
                                <div class="dashboard-home">
                                    <div class="title">
                                        <h2>My Dashboard</h2>
                                    </div>

                                    <!-- <div class="dashboard-user-name">
                                        <h6 class="text-content">Hello, <b class="text-title">Vicki E. Pope</b></h6>
                                        <p class="text-content">From your My Account Dashboard you have the ability to
                                            view a snapshot of your recent account activity and update your account
                                            information. Select a link below to view or edit information.</p>
                                    </div> -->

                                    <div class="total-box">
                                        <div class="row g-sm-4 g-3">
                                            <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                <div class="totle-contain">
                                                    <img src="{{asset('assets/front-end/assets/images/svg/order.svg')}}"
                                                        class="img-1 blur-up lazyload" alt="">
                                                    <img src="{{asset('assets/front-end/assets/images/svg/order.svg')}}" class="blur-up lazyload"
                                                        alt="">
                                                    <div class="totle-detail">
                                                        <h5>Total Order</h5>
                                                        <h3>{{ Auth::user()->orders()->count() }}</h3>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                <div class="totle-contain">
                                                    <img src="{{asset('assets/front-end/assets/images/svg/pending.svg')}}"
                                                        class="img-1 blur-up lazyload" alt="">
                                                    <img src="{{asset('assets/front-end/assets/images/svg/pending.svg')}}" class="blur-up lazyload"
                                                        alt="">
                                                    <div class="totle-detail">
                                                        <h5>My Profile</h5>
                                                        <h3>{{ $user->name }}</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade show" id="pills-order" role="tabpanel"
                                aria-labelledby="pills-order-tab">
                                <div class="dashboard-order">
                                    <div class="title">
                                        <h2>My Orders History</h2>
                                    </div>

                                    <div class="order-tab dashboard-bg-box">
                                        <div class="table-responsive">
                                            <table class="table order-table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Order ID</th>
                                                        <th scope="col">Date</th>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                   @forelse($orders as $order)
                                                      <?php  
                                                         $carts = json_decode($order->cart, true);
                                                      ?>

                                                      <tr>
                                                         <td class="product-image">{{$order->order_number}}</td>
                                                         <td>{{date('d M Y',strtotime($order->created_at))}}</td>

                                                         <td>
                                                               @forelse($carts['items'] as $cart_items_key => $cart_items)
                                                            
                                                                  @forelse($carts['items'][$cart_items_key] as $cart_item_key => $cart_item)

                                                                     
                                                                     @if($cart_item_key == 'item')

                                                                        
                                                                        <h6><?= $carts['items'][$cart_items_key][$cart_item_key]['name'] ?></h6> 

                                                                     @endif

                                                                     

                                                                  @empty
                                                                  @endforelse
                                                                  

                                                               @empty
                                                               @endforelse
                                                         </td>

                                                         <td>
                                                               @if($order->status == 'pending')
                                                                  <label class="danger">Pending</label>
                                                               @elseif($order->status == 'processing')
                                                                  <label class="danger">Processing</label>
                                                               @elseif($order->status == 'completed')
                                                                  <label class="success">Completed</label>
                                                               @elseif($order->status == 'declined')
                                                                  <label class="danger">Declined</label>
                                                               @else
                                                                  <label class="success">Delivered</label>
                                                               @endif

                                                         </td>
                                                         <td>
                                                               <h6>{{ \PriceHelper::showAdminCurrencyPrice(($order->pay_amount  * $order->currency_value),$order->currency_sign) }}</h6>
                                                         </td>
                                                      </tr>
                                                   @empty
                                                         <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td>No Order Found !</td>
                                                            <td></td>
                                                            <td></td>
                                                         </tr>
                                                   @endforelse

                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                        <nav class="custome-pagination text-center">
                                            <ul class="pagination justify-content-center">
                                                {{ $orders->links() }}
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade show" id="pills-profile" role="tabpanel"
                                aria-labelledby="pills-profile-tab">
                                <div class="dashboard-profile">
                                    <div class="title">
                                        <h2>My Profile</h2>
                                    </div>

                                    <div class="profile-detail dashboard-bg-box">
                                        <div class="dashboard-title">
                                            <h3>Profile</h3>
                                        </div>
                                        <div class="profile-name-detail">
                                            <a href="javascript:void(0)" data-bs-toggle="modal"
                                                data-bs-target="#editProfile">Edit</a>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>Full Name :</td>
                                                        <td>{{ $user->name }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email Address :</td>
                                                        <td>{{ $user->email }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Phone Number :</td>
                                                        <td>{{ $user->phone }}</a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Address :</td>
                                                        <td>{{ $user->address }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>City :</td>
                                                        <td>{{ $user->city }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Pin :</td>
                                                        <td>{{ $user->zip }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>State :</td>
                                                        <td>{{ $user->state }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Country :</td>
                                                        <td>{{ $user->country }}</td>
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="profile-about dashboard-bg-box">
                                        <div class="row">
                                            <div class="col-xxl-7">
                                                <div class="dashboard-title mb-3">
                                                    <h3>Change Password</h3>
                                                </div>
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <tbody>
                                                            <tr>
                                                                <td>Current Password :</td>
                                                                <td>
                                                                    <a href="javascript:void(0)">●●●●●●
                                                                        <span data-bs-toggle="modal"
                                                                            data-bs-target="#passwordEdit">Edit</span></a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>New Password :</td>
                                                                <td>
                                                                    <a href="javascript:void(0)">●●●●●●</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Confirm Password :</td>
                                                                <td>
                                                                    <a href="javascript:void(0)">●●●●●●</a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div class="col-xxl-5">
                                                <div class="profile-image">
                                                    <img src="{{asset('assets/front-end/images/inner-page/dashboard-profile.png')}}"
                                                        class="img-fluid blur-up lazyload" alt="">
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
        </div>
      </section>
      <!-- User Dashboard Section End -->

      <!-- modals are start -->

      <!-- Edit Profile Start -->
      <div class="modal fade theme-modal" id="editProfile" tabindex="-1" aria-labelledby="exampleModalLabel2"
         aria-hidden="true">
         <div class="modal-dialog modal-lg modal-dialog-centered modal-fullscreen-sm-down">
               <div class="modal-content">
                  <form id="userform" action="{{route('user-profile-update')}}" method="POST" enctype="multipart/form-data">
                      @csrf
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel2">Edit Profile</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                              <i class="fa-solid fa-xmark"></i>
                        </button>
                     </div>
                     <div class="modal-body">
                        <div class="row g-4">

                              <div class="col-xxl-12">
                                 
                                <div class="form-floating theme-form-floating">
                                    <img src="{{!empty($user->photo) ? asset('assets/images/users/'.$user->photo) : asset('assets/front-end/assets/images/inner-page/user/1.jpg')}}" class="blur-up lazyload update_img" width="100" height="100" alt="">
                                    <div class="cover-icon">
                                        <i class="fa-solid fa-pen">
                                            <input type="file" name="photo" onchange="readURL(this,0)"  required>
                                        </i>
                                    </div>
                                    <label for="pname">Profile Image</label>
                                </div>
                              
                              </div>

                              <div class="col-xxl-12">
                                 
                                    <div class="form-floating theme-form-floating">
                                          <input type="text" class="form-control" id="pname" name="name" value="{{ $user->name }}"  required>
                                          <label for="pname">Full Name</label>
                                    </div>
                                 
                              </div>

                              <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                          <input type="email" class="form-control" id="email1" name="email" value="{{ $user->email }}" readonly>
                                          <label for="email1">Email address</label>
                                    </div>
                              </div>

                              <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                          <input class="form-control" type="text" value="{{ $user->phone }}" name="phone" id="mobile"
                                             maxlength="10" oninput="javascript: if (this.value.length > this.maxLength) this.value =
                                                this.value.slice(0, this.maxLength);" required>
                                          <label for="mobile">Phone Number</label>
                                    </div>
                              </div>

                              <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                          <input type="text" class="form-control" id="address" name="address" value="{{ $user->address }}" required>
                                          <label for="address">Address</label>
                                    </div>
                              </div>

                              <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                          <input type="text" class="form-control" id="city" name="city" value="{{ $user->city }}" required>
                                          <label for="city">City</label>
                                    </div>
                              </div>

                              <div class="col-xxl-4">
                                    <div class="form-floating theme-form-floating">
                                          <input type="text" class="form-control" id="state" name="state" value="{{ $user->state }}" required>
                                          <label for="state">State</label>
                                    </div>
                              </div>

                              <div class="col-xxl-4">
                                    <div class="form-floating theme-form-floating">
                                          <input type="text" class="form-control" id="pin" name="zip" value="{{ $user->zip }}" required>
                                          <label for="pin">Pin Code</label>
                                    </div>
                              </div>

                              <div class="col-xxl-4">
                                    <div class="form-floating theme-form-floating">
                                          <input type="text" class="form-control" id="country" name="country" value="{{ $user->country }}" required>
                                          <label for="country">Country</label>
                                    </div>
                              </div>

                        </div>
                     </div>

                     <div class="modal-footer">
                        <button type="button" class="btn btn-animation btn-md fw-bold" data-bs-dismiss="modal">Close</button>
                        <button type="submit" data-bs-dismiss="modal" class="submit-btn btn theme-bg-color btn-md fw-bold text-light">Save changes</button>
                     </div>

                  </form>
               </div>
         </div>
      </div>
      <!-- Edit Profile End -->

      <!-- Edit Password -->
      <div class="modal fade theme-modal" id="passwordEdit" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
         <div class="modal-dialog modal-lg modal-dialog-centered modal-fullscreen-sm-down">
               <div class="modal-content">

                  <form id="userform" action="{{route('user-reset-submit')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel8">Password Change</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    @include('alerts.admin.form-both')
                    <div class="modal-body">
                        <div class="row g-4">
                            <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                        <input type="password" class="form-control" id="current_password" name="cpass" value="" required>
                                        <label for="current_password">Current Password</label>
                                    </div>
                            </div>

                            <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                        <input type="password" class="form-control" id="new_password" name="newpass" value="" required>
                                        <label for="new_password">New Password</label>
                                    </div>
                            </div>

                            <div class="col-xxl-6">
                                    <div class="form-floating theme-form-floating">
                                        <input type="password" class="form-control" id="confirm_password" name="renewpass" value="" required>
                                        <label for="confirm_password">Confirm Password</label>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-animation btn-md fw-bold"
                            data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="submit-btn btn theme-bg-color btn-md fw-bold text-light">Update Password</button>
                    </div>
                  </form>

               </div>
         </div>
      </div>
      <!-- Edit Password End -->

      <!-- modals are end -->

@includeIf('partials.global.common-footer')
@endsection
