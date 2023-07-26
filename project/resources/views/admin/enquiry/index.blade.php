@extends('layouts.admin') 

@section('content')  

					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading">{{ __("Enquiries") }}</h4>
										<ul class="links">
											<li>
												<a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
											</li>
											<li>
												<a href="{{ route('admin-enquiries-index') }}">{{ __("Enquiries") }}</a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">
                        @include('alerts.admin.form-both')  
										<div class="table-responsive">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
									                        <th>{{ __("#Sl") }}</th>
									                        <th>{{ __("Name") }}</th>
									                        <th>{{ __("Phone") }}</th>
									                        <th>{{ __("Email") }}</th>
									                        <th>{{ __("Address") }}</th>
									                        <th>{{ __("Message") }}</th>
														</tr>
													</thead>
												</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



@endsection    



@section('scripts')

    <script type="text/javascript">

(function($) {
		"use strict";

		$('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-enquiries-datatables') }}',
               columns: [
                        { data: 'id', name: 'id' },
                        { data: 'name', name: 'name' },
                        { data: 'phone', name: 'phone' },
                        { data: 'email', name: 'email' },
                        { data: 'message', name: 'message' },
                        { data: 'message', name: 'message' },
                     ],
                language : {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                }
            });								
					
      	$(function() {
        $(".btn-area").append('<div class="col-sm-4 table-contents">'+
        	'<a class="add-btn" href="{{route('admin-enquiries-download')}}">'+
          '<i class="fa fa-download"></i> {{ __("Download") }}'+
          '</a>'+
          '</div>');
      });	

})(jQuery);

    </script>
@endsection   