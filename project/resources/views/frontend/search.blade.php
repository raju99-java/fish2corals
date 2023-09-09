@extends('layouts.front')
@section('content')
@include('partials.global.common-header')


    <!-- Breadcrumb Section Start -->
    <section class="breadscrumb-section pt-0">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="breadscrumb-contain">
                        <h2>{{ __('Search') }}</h2>
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="{{ route('front.index') }}">
                                        <i class="fa-solid fa-house"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">{{ __('Search') }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Search Bar Section Start -->
    <section class="search-section section-b-space">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-xxl-6 col-xl-8 mx-auto">
                    <div class="title d-block text-center">
                        <h2>Search for products</h2>
                    </div>

                    <form id="searchForm" class="search-form form-inline search-pill-shape" action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}" method="GET">
                        <div class="middle-box">
                            <div class="search-box">
                                <div class="input-group">
                                    <input type="text" id="prod_name" class="form-control" name="search" placeholder="Search Product For" value="{{ request()->input('search') }}">
                                    <button class="btn theme-bg-color text-white m-0" type="submit" name="submit" id="button-addon1">Search</button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </section>
    <!-- Search Bar Section End -->

@includeIf('partials.global.common-footer')
@endsection


