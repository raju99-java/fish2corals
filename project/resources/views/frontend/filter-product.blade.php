<ul class="ul-search">
    @forelse($products as $product)
        <li> <a href="{{route('front.category',['search'=>$product->name])}}"><i class="iconly-Search icli"></i> {{$product->name}} </a></li>
    @empty
    <li> No Products Found !</li>
    @endforelse
</ul>