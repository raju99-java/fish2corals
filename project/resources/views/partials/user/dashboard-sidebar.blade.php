
<div class="dashboard-left-sidebar">
    <div class="close-button d-flex d-lg-none">
        <button class="close-sidebar">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>
    <div class="profile-box">
        <div class="cover-image">
            <img src="{{asset('assets/front-end/assets/images/inner-page/cover-img.jpg')}}" class="img-fluid blur-up lazyload"
                alt="">
        </div>
        
        <div class="profile-contain">
            <div class="profile-image">
                <div class="position-relative">
                    <img src="{{!empty($user->photo) ? asset('assets/images/users/'.$user->photo) : asset('assets/front-end/assets/images/inner-page/user/1.jpg')}}"
                        class="blur-up lazyload update_img" alt="">
                    
                </div>
            </div>

            <div class="profile-name">
                <h3>{{ $user->name }}</h3>
                <h6 class="text-content">{{ $user->email }}</h6>
            </div>
        </div>
    </div>

    <ul class="nav nav-pills user-nav-pills" id="pills-tab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="pills-dashboard-tab" data-bs-toggle="pill"
                data-bs-target="#pills-dashboard" type="button" role="tab"
                aria-controls="pills-dashboard" aria-selected="true"><i data-feather="home"></i>
                DashBoard</button>
        </li>

        <li class="nav-item" role="presentation">
            <button class="nav-link" id="pills-order-tab" data-bs-toggle="pill"
                data-bs-target="#pills-order" type="button" role="tab" aria-controls="pills-order"
                aria-selected="false"><i data-feather="shopping-bag"></i>Order</button>
        </li>


        <li class="nav-item" role="presentation">
            <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                data-bs-target="#pills-profile" type="button" role="tab"
                aria-controls="pills-profile" aria-selected="false"><i data-feather="user"></i>
                Profile</button>
        </li>

        <li class="nav-item" role="presentation">
            <button onclick="location.href = '{{ route('user-logout') }}';" class="nav-link" id="pills-security-tab" data-bs-toggle="pill"
                data-bs-target="#" type="button" role="tab"
                aria-controls="#" aria-selected="false"><i data-feather="shield"></i>
                Logout</button>
        </li>
    </ul>
</div>