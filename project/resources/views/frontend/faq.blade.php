@extends('layouts.front')
@section('content')
@include('partials.global.common-header')

   <!-- Breadcrumb Section Start -->
   <section class="breadscrumb-section pt-0">
      <div class="container-fluid-lg">
         <div class="row">
               <div class="col-12">
                  <div class="breadscrumb-contain">
                     <h2>{{ __('Faq') }}</h2>
                     <nav>
                           <ol class="breadcrumb mb-0">
                              <li class="breadcrumb-item">
                                 <a href="{{ route('front.index') }}">
                                       <i class="fa-solid fa-house"></i>
                                 </a>
                              </li>
                              <li class="breadcrumb-item active" aria-current="page">{{ __('Faq') }}</li>
                           </ol>
                     </nav>
                  </div>
               </div>
         </div>
      </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!-- Faq Section Start -->
   <section class="faq-box-contain section-b-space">
      <div class="container">
         <div class="row">
               <div class="col-xl-5">
                  <div class="faq-contain">
                     <h2>Frequently Asked Questions</h2>
                     <p>We are answering most frequent questions. No worries if you not find exact one. You can find
                           out more by searching or continuing clicking button below or directly <a
                              href="{{ route('front.contact') }}" class="theme-color text-decoration-underline">contact our
                              support.</a></p>
                  </div>
               </div>

               <div class="col-xl-7">
                  <div class="faq-accordion">
                     <div class="accordion" id="accordionExample">

                        @foreach($faqs as $faq)
                           <div class="accordion-item">
                              <h2 class="accordion-header" id="heading{{$faq->id}}">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                       data-bs-target="#collapse{{$faq->id}}" aria-expanded="true" aria-controls="collapse{{$faq->id}}">
                                       {{ $faq->title }} <i class="fa-solid fa-angle-down"></i>
                                    </button>
                              </h2>
                              <div id="collapse{{$faq->id}}" class="accordion-collapse collapse {{$loop->first ? 'show' : ''}}"
                                    aria-labelledby="heading{{$faq->id}}" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                       {!! clean($faq->details , array('Attr.EnableID' => true)) !!}
                                    </div>
                              </div>
                           </div>
                        @endforeach
                           
                     </div>
                  </div>
               </div>
         </div>
      </div>
   </section>
   <!-- Faq Section End -->

@include('partials.global.common-footer')
@endsection
@section('script')
@endsection
