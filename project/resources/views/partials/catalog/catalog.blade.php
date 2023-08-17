<div class="col-custome-3">
    <div class="left-box wow fadeInUp">
        <div class="shop-left-sidebar">
            <div class="back-button">
                <h3><i class="fa-solid fa-arrow-left"></i> Back</h3>
            </div>

            <!-- <div class="filter-category">
                <div class="filter-title">
                    <h2>Filters</h2>
                    <a href="javascript:void(0)">Clear All</a>
                </div>
                <ul>
                    <li>
                        <a href="javascript:void(0)">Vegetable</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">Fruit</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">Fresh</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">Milk</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">Meat</a>
                    </li>
                </ul>
            </div> -->

            <div class="accordion custome-accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseOne" aria-expanded="true"
                            aria-controls="collapseOne">
                            <span>Categories</span>
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show"
                        aria-labelledby="headingOne">
                        <div class="accordion-body">
                            <!-- <div class="form-floating theme-form-floating-2 search-box">
                                <input type="search" class="form-control" id="search"
                                    placeholder="Search ..">
                                <label for="search">Search</label>
                            </div> -->

                            <ul class="category-list custom-padding custom-height">

                                @foreach (App\Models\Category::where('language_id',$langg->id)->where('status',1)->get() as $category)

                                    <li>
                                        <div class="form-check ps-0 m-0 category-list-box">
                                            <span class="name">
                                            <a href="{{route('front.category', $category->slug)}}{{!empty(request()->input('search')) ? '?search='.request()->input('search') : ''}}" class="category-link" id="cat">
                                                {{ $category->name }} 
                                            </a>
                                            </span>
                                            <span class="number"> ( {{$category->products->count()}} )</span>
                                        </div>
                                    </li>
                                
                                @endforeach

                            </ul>
                        </div>
                    </div>
                </div>

                <!-- <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                            aria-expanded="false" aria-controls="collapseTwo">
                            <span>Food Preference</span>
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse show"
                        aria-labelledby="headingTwo">
                        <div class="accordion-body">
                            <ul class="category-list custom-padding">
                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox" id="veget">
                                        <label class="form-check-label" for="veget">
                                            <span class="name">Vegetarian</span>
                                            <span class="number">(08)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox" id="non">
                                        <label class="form-check-label" for="non">
                                            <span class="name">Non Vegetarian</span>
                                            <span class="number">(09)</span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> -->

                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseThree"
                            aria-expanded="false" aria-controls="collapseThree">
                            <span>Price</span>
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse show"
                        aria-labelledby="headingThree">
                        <div class="accordion-body">
                            
                            <div class="range-slider">
                                <input type="text" class="js-range-slider" id="range-value" value="">
                            </div>
                            <form id="catalogForm" action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}" method="GET">

                                <input type="hidden" name="min" value="0"  id="min-price"  />
                                <input type="hidden" name="max" value="10000"  id="max-price" />

                                <button class="btn btn-animation product-button btn-sm mt-2" type="submit">{{ __('Search') }}</button>
                            </form>
                        </div>
                    </div>
                </div>


                

                <!-- <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFour"
                            aria-expanded="false" aria-controls="collapseFour">
                            <span>Discount</span>
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse show"
                        aria-labelledby="headingFour">
                        <div class="accordion-body">
                            <ul class="category-list custom-padding">
                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <span class="name">upto 5%</span>
                                            <span class="number">(06)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault1">
                                        <label class="form-check-label" for="flexCheckDefault1">
                                            <span class="name">5% - 10%</span>
                                            <span class="number">(08)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault2">
                                        <label class="form-check-label" for="flexCheckDefault2">
                                            <span class="name">10% - 15%</span>
                                            <span class="number">(10)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault3">
                                        <label class="form-check-label" for="flexCheckDefault3">
                                            <span class="name">15% - 25%</span>
                                            <span class="number">(14)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault4">
                                        <label class="form-check-label" for="flexCheckDefault4">
                                            <span class="name">More than 25%</span>
                                            <span class="number">(13)</span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFive">
                        <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFive"
                            aria-expanded="false" aria-controls="collapseFive">
                            <span>Pack Size</span>
                        </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse collapse show"
                        aria-labelledby="headingFive">
                        <div class="accordion-body">
                            <ul class="category-list custom-padding custom-height">
                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault5">
                                        <label class="form-check-label" for="flexCheckDefault5">
                                            <span class="name">400 to 500 g</span>
                                            <span class="number">(05)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault6">
                                        <label class="form-check-label" for="flexCheckDefault6">
                                            <span class="name">500 to 700 g</span>
                                            <span class="number">(02)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault7">
                                        <label class="form-check-label" for="flexCheckDefault7">
                                            <span class="name">700 to 1 kg</span>
                                            <span class="number">(04)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault8">
                                        <label class="form-check-label" for="flexCheckDefault8">
                                            <span class="name">120 - 150 g each Vacuum 2 pcs</span>
                                            <span class="number">(06)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault9">
                                        <label class="form-check-label" for="flexCheckDefault9">
                                            <span class="name">1 pc</span>
                                            <span class="number">(09)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault10">
                                        <label class="form-check-label" for="flexCheckDefault10">
                                            <span class="name">1 to 1.2 kg</span>
                                            <span class="number">(06)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault11">
                                        <label class="form-check-label" for="flexCheckDefault11">
                                            <span class="name">2 x 24 pcs Multipack</span>
                                            <span class="number">(03)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault12">
                                        <label class="form-check-label" for="flexCheckDefault12">
                                            <span class="name">2x6 pcs Multipack</span>
                                            <span class="number">(04)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault13">
                                        <label class="form-check-label" for="flexCheckDefault13">
                                            <span class="name">4x6 pcs Multipack</span>
                                            <span class="number">(05)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault14">
                                        <label class="form-check-label" for="flexCheckDefault14">
                                            <span class="name">5x6 pcs Multipack</span>
                                            <span class="number">(09)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault15">
                                        <label class="form-check-label" for="flexCheckDefault15">
                                            <span class="name">Combo 2 Items</span>
                                            <span class="number">(10)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault16">
                                        <label class="form-check-label" for="flexCheckDefault16">
                                            <span class="name">Combo 3 Items</span>
                                            <span class="number">(14)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault17">
                                        <label class="form-check-label" for="flexCheckDefault17">
                                            <span class="name">2 pcs</span>
                                            <span class="number">(19)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault18">
                                        <label class="form-check-label" for="flexCheckDefault18">
                                            <span class="name">3 pcs</span>
                                            <span class="number">(14)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault19">
                                        <label class="form-check-label" for="flexCheckDefault19">
                                            <span class="name">2 pcs Vacuum (140 g to 180 g each
                                                )</span>
                                            <span class="number">(13)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault20">
                                        <label class="form-check-label" for="flexCheckDefault20">
                                            <span class="name">4 pcs</span>
                                            <span class="number">(18)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault21">
                                        <label class="form-check-label" for="flexCheckDefault21">
                                            <span class="name">4 pcs Vacuum (140 g to 180 g each
                                                )</span>
                                            <span class="number">(07)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault22">
                                        <label class="form-check-label" for="flexCheckDefault22">
                                            <span class="name">6 pcs</span>
                                            <span class="number">(09)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault23">
                                        <label class="form-check-label" for="flexCheckDefault23">
                                            <span class="name">6 pcs carton</span>
                                            <span class="number">(11)</span>
                                        </label>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-check ps-0 m-0 category-list-box">
                                        <input class="checkbox_animated" type="checkbox"
                                            id="flexCheckDefault24">
                                        <label class="form-check-label" for="flexCheckDefault24">
                                            <span class="name">6 pcs Pouch</span>
                                            <span class="number">(16)</span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> -->

                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseFour">
                            Recent Products
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingFour">
                        <div class="accordion-body">
                            
                            <ul class="product-list product-list-2 border-0 p-0">
                            @forelse(array_chunk($latest_products->toArray(),3) as $item)
                                @foreach ($item as $prod)
                                    <li>
                                            <div class="offer-product">
                                                <a href="{{ route('front.product', $prod['slug']) }}" class="offer-image">
                                                    <img src="{{ $prod['thumbnail'] ? asset('assets/images/thumbnails/'.$prod['thumbnail'] ):asset('assets/images/noimage.png') }}"
                                                        class="blur-up lazyload" alt="">
                                                </a>

                                                <div class="offer-detail">
                                                    <div>
                                                            <a href="{{ route('front.product', $prod['slug']) }}">
                                                                <h6 class="name">{{ App\Models\Product::whereId($prod['id'])->first()->showName() }}</h6>
                                                            </a>
                                                            <span></span>
                                                            <h6 class="price theme-color">{{ App\Models\Product::whereId($prod['id'])->first()->showPrice() }}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                    </li>
                                    
                                @endforeach
                                
                            @empty
                            @endforelse
                            </ul>
                            
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script src="{{ asset('assets/front-end/assets/js/jquery-3.6.0.min.js') }}"></script>

<script>

$( document ).ready(function() {
    $('#range-value').on('change', function(){
        var rangeValue = $('#range-value').val();
        var valuesArray = rangeValue.split(';');
        var minValue = parseInt(valuesArray[0]);
        var maxValue = parseInt(valuesArray[1]);
        // console.log('Min Value:', minValue);
        // console.log('Max Value:', maxValue);
        $('#min-price').val(minValue);
        $('#max-price').val(maxValue);
    });
});
</script>