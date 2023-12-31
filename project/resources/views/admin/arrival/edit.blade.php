@extends('layouts.admin')

@section('content')

            <div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Edit Arrival') }} <a class="add-btn" href="{{route('admin-arrival-index')}}"><i class="fas fa-arrow-left"></i> {{ __('Back') }}</a></h4>
                      <ul class="links">
                        <li>
                          <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                          <a href="javascript:;">{{ __('Home Page Settings') }}</a>
                        </li>
                        <li>
                          <a href="{{ route('admin-arrival-index') }}">{{ __('Arrival') }}</a>
                        </li>

                          <li>
                            <a href="{{route('admin-arrival-edit',$data->id)}}">{{ __('Edit') }}</a>
                          </li>
                      </ul>
                  </div>
                </div>
              </div>
              <div class="add-product-content1 add-product-content2">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                      <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                      <form id="geniusform" action="{{route('admin-arrival-update',$data->id)}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}
                      @include('alerts.admin.form-both')
                                      {{-- Sub Title Section --}}
                                              <div class="form-group">
                                                  <div class="col-sm-12">
                                                    <label class="control-label" for="subtitle_text">{{ __('Text') }}*</label>
                                                  <input type="text" class="form-control" name="title" value="{{ $data->title }}" placeholder="Add title here">
                                                </div>
                                              </div>

                                              <div class="form-group">
                                                <div class="col-sm-12">
                                                  <label class="control-label" for="subtitle_text">{{ __('Header') }}*</label>
                                                <input type="text" class="form-control" name="header" value="{{ $data->header }}" placeholder="Add header here">
                                              </div>
                                            </div>
                                      {{-- Sub Title Section Ends--}}
                                      
                                             <div class="form-group">
                                                  <div class="col-sm-12">
                                                    <label class="control-label" for="details_text">{{ __('Description') }}*</label>

                                                  <textarea class="form-control" name="details_text" id="details_text" rows="5"  placeholder="Enter Description">{{$data->details_text}}</textarea>
                                                </div>
                                              </div>
                                              
                        <div class="row mt-5">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Current Featured Image') }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <div class="img-upload full-width-img">
                                <div id="image-preview" class="img-preview" style="background: url({{ $data->photo ? asset('assets/images/arrival/'.$data->photo):asset('assets/images/noimage.png') }});">
                                    <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                    <input type="file" name="photo" class="img-upload" id="image-upload">
                                  </div>
                                  <!-- <p class="text">{{ __('Prefered Size: (600x770) or Square Sized Image') }}</p> -->
                            </div>
                          </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Link') }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="link" placeholder="Link" required="" value="{{$data->link}}">

                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Arrival Position') }}*</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <select  name="position" required="">
                                  <option disabled selected>{{ __('Select Position') }}</option>
                                  <option value="1" {{ $data->position == '1' ? 'selected':'' }}>{{ __('Section 1') }}</option>
                                  <option value="2" {{ $data->position == '2' ? 'selected':'' }}>{{ __('Section 2') }}</option>
                                  <option value="3" {{ $data->position == '3' ? 'selected':'' }}>{{ __('Section 3') }}</option>
                                  <option value="4" {{ $data->position == '4' ? 'selected':'' }}>{{ __('Section 4') }}</option>
                                </select>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">

                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit">{{ __('Update Arrival') }}</button>
                          </div>
                        </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

@endsection
