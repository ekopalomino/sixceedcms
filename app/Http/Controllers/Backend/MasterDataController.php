<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\Country;
use Sixceed\Models\Region;
use Sixceed\Models\City;
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
        
        $data = 'Negara '.($country->country_name).' berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Negara '.($country->country_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

    	return redirect()->route('country.index')->with($notification);
    }

    public function countryEdit($id)
    {
        $data = Country::find($id);
        
        return view('backend.edit.country',compact('data'))->renderSections()['content'];
    }

    public function countryUpdate(Request $request,$id)
    {
        $input = [
            'country_name' => $request->input('country_name'),
            'updated_by' => auth()->user()->id
        ];
        
        $country = Country::find($id);
        $country->update($input);
        $data = 'Negara '.($country->country_name).' berhasil diubah';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Negara '.($country->country_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('country.index')->with($notification);
    }

    public function countryDestroy($id)
    {
        $country = Country::find($id);
        $logs = 'Negara '.($country->country_name).' berhasil dihapus';
        $country->destroy($id);
        
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Negara '.($country->country_name).' berhasil dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('country.index')->with($notification);
    }

    public function regionIndex()
    {
        $data = Region::orderBy('country_id','ASC')->get();
        $countries = Country::pluck('country_name','id')->toArray();

        return view('backend.pages.region',compact('data','countries'));
    }

    public function regionStore(Request $request)
    {
        $request->validate([
            'country_id' => 'required',
            'region_name' => 'required',
        ]); 
        
        $input = [
            'country_id' => $request->input('country_id'),
            'region_name' => $request->input('region_name'),
            'created_by' => auth()->user()->id,
        ];

        $saves = Region::create($input);
        
        $data = 'Provinsi '.($saves->region_name).' Berhasil Disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Provinsi '.($saves->region_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

    	return redirect()->route('region.index')->with($notification);
    }

    public function regionEdit($id)
    {
        $data = Region::find($id);
        $countries = Country::pluck('country_name','id')->toArray();
        
        return view('backend.edit.region',compact('data','countries'))->renderSections()['content'];
    }

    public function regionUpdate(Request $request,$id)
    {
        $input = [
            'country_id' => $request->input('country_id'),
            'region_name' => $request->input('region_name'),
            'updated_by' => auth()->user()->id
        ];
        
        $saves = Region::find($id);
        $saves->update($input);
        $data = 'Provinsi '.($saves->region_name).' Berhasil Diubah';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Provinsi '.($saves->region_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('region.index')->with($notification);
    }

    public function regionDestroy($id)
    {
        $data = Region::find($id);
        $logs = 'Provinsi '.($data->region_name).' Berhasil Dihapus';
        $data->destroy($id);
        
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Provinsi '.($data->region_name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('region.index')->with($notification);
    }

    public function cityIndex()
    {
        $data = City::orderBy('country_id','ASC')->get();
        $countries = Country::pluck('country_name','id')->toArray();
        $regions = Region::pluck('region_name','id')->toArray();

        return view('backend.pages.city',compact('data','countries','regions'));
    }

    public function cityStore(Request $request)
    {
        $request->validate([
            'country_id' => 'required',
            'region_id' => 'required',
            'city_name' => 'required',
        ]); 
        
        $input = [
            'country_id' => $request->input('country_id'),
            'region_id' => $request->input('region_id'),
            'city_name' => $request->input('city_name'),
            'created_by' => auth()->user()->id,
        ];

        $saves = City::create($input);
        
        $logs = 'Kota '.($saves->city_name).' Berhasil Disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Kota '.($saves->city_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

    	return redirect()->route('city.index')->with($notification);
    }

    public function cityEdit($id)
    {
        $data = City::find($id);
        $countries = Country::pluck('country_name','id')->toArray();
        $regions = Region::pluck('region_name','id')->toArray();
        
        return view('backend.edit.city',compact('data','countries','regions'))->renderSections()['content'];
    }

    public function cityUpdate(Request $request,$id)
    {
        $input = [
            'country_id' => $request->input('country_id'),
            'region_id' => $request->input('region_id'),
            'city_name' => $request->input('city_name'),
            'updated_by' => auth()->user()->id
        ];
        
        $saves = City::find($id);
        $saves->update($input);
        $logs = 'Kota '.($saves->city_name).' Berhasil Diubah';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Kota '.($saves->city_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('city.index')->with($notification);
    }

    public function cityDestroy($id)
    {
        $data = City::find($id);
        $logs = 'Kota '.($data->city_name).' Berhasil Dihapus';
        $data->destroy($id);
        
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Kota '.($data->city_name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('city.index')->with($notification);
    }
}
