<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\Country;
use Sixceed\Models\Region;
use Sixceed\Models\City;
use Sixceed\Models\DutyCategory;
use Sixceed\Models\DutyCategoryTranslation;
use Sixceed\Models\ArticleCategory;
use Sixceed\Models\FaqCategory;
use Sixceed\Models\Unit;
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

    public function dutyCatIndex()
    {
        $categories = DutyCategory::withTranslation()->where('site_id',auth()->user()->site_id)->get();
        
    	return view('backend.pages.dutyCategory',compact('categories'));
    }

    public function dutyCatStore(Request $request)
    {
        $request->validate([
    		'en_category' => 'required',
    		'id_category' => 'required',
    	]);
    	
    	$data = [
    		'en' => [
    			'category_name' => $request->input('en_category')
    		],
    		'id' => [
    			'category_name' => $request->input('id_category')
    		],
            'created_by' => auth()->user()->id,
            'site_id' => auth()->user()->site_id
    	];

        $categories = DutyCategory::create($data);
        $data = 'Kategori berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Kategori berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('dutycat.index')->with($notification);
    }

    public function dutyCatEdit($id)
    {
        $categories = DutyCategory::withTranslation()->where('duty_categories.id',$id)->first();
        
        return view('backend.edit.dutyCategory',compact('categories'))->renderSections()['content'];
    }

    public function dutyCatUpdate(Request $request,$id)
    {
        $data = ([
    		'en' => [
    			'category_name' => $request->input('en_category')
    		],
    		'id' => [
    			'category_name' => $request->input('id_category')
    		],
            'updated_by' => auth()->user()->id,
        ]);
        
        $categories = DutyCategory::withTranslation()->where('duty_categories.id',$id)->first();
        $categories->update($data);
         
        $log = 'Kategori berhasil diubah';
         \LogActivity::addToLog($log);
        
        $notification = array (
            'message' => 'Kategori Tugas dan Fungsi berhasil diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('dutycat.index')
                            ->with($notification);
    }

    public function dutyCatDestroy($id)
    {
        $categories = DutyCategory::withTranslation()->where('duty_categories.id',$id)->first();
        $logs = 'Kategori Tugas dan Fungsi berhasil dihapus';
        $categories->destroy($id);
        
         \LogActivity::addToLog($logs);
        $notification = array (
            'message' => 'Kategori Tugas dan Fungsi berhasil dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('dutycat.index')->with($notification);
    }

    public function articleCategoryIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $source = ArticleCategory::orderBy('id','ASC')->get();
        } else {
            $source = ArticleCategory::where('site_id',auth()->user()->site_id)->orderBy('id','ASC')->get();
        }
        
        return view('backend.pages.articleCategory',compact('source'));
    }

    public function articleCategoryStore(Request $request)
    {
        $request->validate([
    		'category_name' => 'required'
        ]); 
        
        $input = [
            'category_name' => $request->input('category_name'),
            'site_id' => auth()->user()->site_id,
            'created_by' => auth()->user()->id,
        ];

        $data = ArticleCategory::create($input);
        
        $log = 'Kategori Artikel '.($data->category_name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori Artikel '.($data->category_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

    	return redirect()->route('articlecat.index')->with($notification);
    }

    public function articleCategoryEdit($id)
    {
        $source = ArticleCategory::find($id);
        
        return view('backend.edit.articleCategory',compact('source'))->renderSections()['content'];
    }

    public function articleCategoryUpdate(Request $request,$id)
    {
        $input = [
            'category_name' => $request->input('category_name'),
            'updated_by' => auth()->user()->id
        ];
        
        $data = ArticleCategory::find($id);
        $data->update($input);
        $log = 'Kategori Artikel '.($data->category_name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori Artikel '.($data->category_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('articlecat.index')->with($notification);
    }

    public function articleCategoryDelete($id)
    {
        $source = ArticleCategory::find($id);
        $log = 'Kategori Artikel '.($source->category_name).' Berhasil Dihapus';
        $source->destroy($id);
        
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori Artikel '.($source->category_name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('articlecat.index')->with($notification);
    }

    public function faqCategoryIndex()
    {
        $source = FaqCategory::where('site_id',auth()->user()->site_id)->orderBy('id','ASC')->get();

        return view('backend.pages.faqCategory',compact('source'));
    }

    public function faqCategoryStore(Request $request)
    {
        $request->validate([
    		'category_name' => 'required'
        ]); 
        
        $input = [
            'category_name' => $request->input('category_name'),
            'site_id' => auth()->user()->site_id,
            'created_by' => auth()->user()->id,
        ];

        $data = FaqCategory::create($input);
        
        $log = 'Kategori FAQ '.($data->category_name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori FAQ '.($data->category_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

    	return redirect()->route('faqcat.index')->with($notification);
    }

    public function faqCategoryEdit($id)
    {
        $source = FaqCategory::find($id);
        
        return view('backend.edit.faqCategory',compact('source'))->renderSections()['content'];
    }

    public function faqCategoryUpdate(Request $request,$id)
    {
        $input = [
            'category_name' => $request->input('category_name'),
            'updated_by' => auth()->user()->id
        ];
        
        $data = FaqCategory::find($id);
        $data->update($input);
        $log = 'Kategori FAQ '.($data->category_name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori FAQ '.($data->category_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('faqcat.index')->with($notification);
    }

    public function faqCategoryDelete($id)
    {
        $source = FaqCategory::find($id);
        $log = 'Kategori FAQ '.($source->category_name).' Berhasil Dihapus';
        $source->destroy($id);
        
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori FAQ '.($source->category_name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('faqcat.index')->with($notification);
    }

    public function unitIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Unit::orderBy('id','ASC')->get();

            return view('backend.pages.unit',compact('data'));
        } else {
            $data = Unit::where('site_id',auth()->user()->site_id)->orderBy('id','ASC')->get();

            return view('backend.pages.unit',compact('data'));
        }
    }

    public function unitStore(Request $request)
    {
        $request->validate([
    		'unit_name' => 'required'
        ]);

        $input = [
            'site_id' => auth()->user()->site_id,
            'unit_name' => $request->input('unit_name'),
            'created_by' => auth()->user()->id,
        ];

        $data = Unit::create($input);

        $log = 'Unit Kerja '.($data->unit_name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Unit Kerja '.($data->unit_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('unit.index')->with($notification);
    }

    public function unitEdit($id)
    {
        $data = Unit::find($id);

        return view('backend.edit.unit',compact('data'))->renderSections()['content'];
    }

    public function unitUpdate(Request $request,$id)
    {
        $request->validate([
    		'unit_name' => 'required'
        ]);

        $input = [
            'unit_name' => $request->input('unit_name'),
            'updated_by' => auth()->user()->id,
        ];

        $data = Unit::find($id);
        $data->update($input);

        $log = 'Unit Kerja '.($data->unit_name).' Berhasil Diubah';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Unit Kerja '.($data->unit_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('unit.index')->with($notification);
    }

    public function unitDestroy($id)
    {
        $data = Unit::find($id);
        $log = 'Unit Kerja '.($data->unit_name).' Berhasil Dihapus';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Unit Kerja '.($data->unit_name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->destroy($id);

        return redirect()->route('unit.index')->with($notification);
    }
}
