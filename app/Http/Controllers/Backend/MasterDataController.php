<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\Country;
use Auth;

class MasterDataController extends Controller
{
    public function countryIndex()
    {
        $data = Country::orderBy('id','ASC')->get();
        return view('backend.pages.country',compact('data'));
    }

    public function countryStore(Request $request)
    {
        $request->validate([
    		'country_name' => 'required'
        ]); 
        
        $input = [
            'country_name' => $request->input('country_name'),
            'created_by' => auth()->user()->id,
        ];

        $country = Country::create($input);
        
        $data = 'Negara '.($country->name).' berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Negara '.($country->name).' berhasil disimpan',
            'alert-type' => 'success'
        );

    	return redirect()->route('country.index')->with($notification);
    }

    public function countryEdit($id)
    {

    }

    public function countryUpdate()
    {

    }

    public function countryDestroy()
    {

    }
}
