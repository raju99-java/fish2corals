<?php

namespace App\Http\Controllers\Admin;

use App\Models\Enquiry;

use Datatables;


class EnquiryController extends AdminBaseController
{
    //*** JSON Request
    public function datatables()
    {
         $datas = Enquiry::oldest('id')->get();
         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->addColumn('sl', function(Enquiry $data) {
                                $id = 1;
                                return $id++;
                            }) 
                            ->toJson();//--- Returning Json Data To Client Side
    }

    public function index(){
        return view('admin.enquiry.index');
    }

    //*** GET Request
    public function download()
    {
        //  Code for generating csv file
        header('Content-Type: text/csv; charset=utf-8');
        header('Content-Disposition: attachment; filename=enquiries.csv');
        $output = fopen('php://output', 'w');
        fputcsv($output, array('Sl No.','Name','Phone','Email','Address','Message','Enquiry Date'));
        $result = Enquiry::get();
        $result->makeHidden(['updated_at']);
        foreach ($result as $row){
            fputcsv($output, $row->toArray());
        }
        fclose($output);
    }
}
