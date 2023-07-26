@extends('layouts.admin')
@section('styles')
<link href="{{asset('assets/admin/css/menu/jquery.nestable.css')}}" rel="stylesheet" />
<link href="{{asset('assets/admin/css/menu/style.css')}}" rel="stylesheet" />
@endsection
@section('content')
<?php


function renderMenuItem($id, $label, $url)
{
    return '<li class="dd-item dd3-item" data-id="' . $id . '" data-label="' . $label . '" data-url="' . $url . '">' .
        '<div class="dd-handle dd3-handle" > Drag</div>' .
        '<div class="dd3-content"><span class="data-id-' . $id . '">' . $label . '</span>' .
        '<div class="item-edit">Edit</div>' .
        '</div>' .
        '<div class="item-settings d-none">' .
        '<p><label for="">Navigation Label<br><input type="text" name="navigation_label" value="' . $label . '"></label></p>' .
        '<p><label for="">Navigation Url<br><input type="text" name="navigation_url" value="' . $url . '"></label></p>' .
        '<p><a class="item-delete" href="javascript:;">Remove</a> |' .
        '<a class="item-close" href="javascript:;">Close</a></p>' .
        '</div>';

}
// dd(1);

function menuTree($parent_id = 0)
{
    
    $items = '';
	$datas= App\Models\Menu::where('parent_id',$parent_id)->orderBy('id', 'asc')->get();
    if (sizeof($datas)>0) {
        $items .= '<ol class="dd-list">';
        foreach ($datas as $row) {
            $items .= renderMenuItem($row->id, $row->label_menu, $row->url_menu);
            $items .= menuTree($row->id);
            $items .= '</li>';
        }
        $items .= '</ol>';
    }
    return $items;
}


?>
	<input type="hidden" id="headerdata" value="{{ __('MENU') }}">
	<input type="hidden" id="attribute_data" value="{{ __('ADD NEW MENU') }}">
	<div class="content-area">
		<div class="mr-breadcrumb">
			<div class="row">
				<div class="col-lg-12">
						<h4 class="heading">{{ __('All Menu') }}</h4>
						<ul class="links">
							<li>
								<a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
							</li>
							<li>
								<a href="#">{{ __('Menus') }}</a>
							</li>
						</ul>
				</div>
			</div>
		</div>
		<div class="order-table-wrap">
			<div class="row">
				<div class="col-lg-12 ">
					@include('alerts.admin.form-both')
					@include('alerts.form-success')
					<form id="add-item" class="m-3">
						<input type="text" name="name" placeholder="Name">
						<input type="text" name="url" placeholder="Url">
						<button type="submit">Add Item</button>
					</form>

					<hr />
					<div class="dd m-3" id="nestable">
						<?php
							$html_menu = menuTree();
							echo (empty($html_menu)) ? '<ol class="dd-list"></ol>' : $html_menu;
						?>
					</div>


					<hr />
					<form action="{{route('admin.menus.store')}}" method="post" class="m-3">
					{{csrf_field()}}
						<input type="hidden" id="nestable-output" name="menu">
						<button type="submit">Save Menu</button>
					</form>
				</div>
			</div>
		</div>
	</div>



@endsection


@section('scripts')
<!-- <script src="{{asset('assets/admin/js/menu/jquery-3.4.1.min.js')}}"></script> -->
<script src="{{asset('assets/admin/js/menu/jquery.nestable.js')}}"></script>
<script src="{{asset('assets/admin/js/menu/script.js')}}"></script>
{{-- DATA TABLE --}}

    

@endsection

