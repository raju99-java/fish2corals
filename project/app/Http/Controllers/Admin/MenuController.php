<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Http\Request;
use Validator;
use Datatables;
use DB;

class MenuController extends AdminBaseController
{
  

    public function index(){
        return view('admin.menu.index');
    }


    public function store(Request $request){
        //--- Validation Section
        $rules = [
            // 'menu' => 'required',
                ];
        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        $menu = $request->menu;
        $array_menu = json_decode($menu, true);

        
        if (!empty($menu)) {
            // dd($array_menu);
            Menu::truncate();
            $parent = 0;
            $this->updateMenu($array_menu,$parent);
            
    
        }

        

        //--- Redirect Section     
        $msg = __('Menu Updated Successfully.');
        return redirect()->back()->with('success',$msg);     
        //--- Redirect Section Ends  
    }

    private function updateMenu($menu, $parent = 0){
        // dd($menu); 
        
        foreach ($menu as $value) {
                
            $label = $value['label'];
            $url = (empty($value['url'])) ? '#' : $value['url'];

            $id= DB::table('menus')->insertGetId(
                array(  'label_menu' => $label, 
                        'url_menu' => $url,
                        'parent_id' => $parent)
            );
            

            if (array_key_exists('children', $value))
                $this->updateMenu($value['children'],$id);
        }
        return true;

    }

    
}
