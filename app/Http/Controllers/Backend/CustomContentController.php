<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\Oiml;
use Sixceed\Models\RegulasiDagri;
use Sixceed\Models\MainDuty;
use File;
use Carbon\Carbon;

class CustomContentController extends Controller
{
    /*Controller For Main Site Custom Content*/
    public function dutyIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $duties = MainDuty::withTranslation()->get();
        } else {
            $duties = MainDuty::withTranslation()->where('site_id',auth()->user()->site_id)->get();
        }
        
        return view('backend.pages.mainDuty',compact('duties'));
    }

    public function dutyCreate()
    {
        $categories = DutyCategoryTranslation::where('locale','id')->pluck('category_name','duty_category_id')->toArray();
        
        return view('backend.input.mainDuty',compact('categories'));
    }

    public function dutyStore(Request $request)
    {
        $request->validate([
    		'category' => 'required',
    		'id_position' => 'required',
    		'en_position' => 'required',
    		'id_duties' => 'required',
    		'en_duties' => 'required',
    		'id_function' => 'required',
    		'en_function' => 'required'
    	]);
    	
        $idfnc = $request->input('id_function');
        $enfnc = $request->input('en_function');

        $dom = new\DomDocument();
        $dom->loadHtml($idfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/public/mainduties" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $id_function = $dom->saveHtml();

        $dom = new\DomDocument();
        $dom->loadHtml($enfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/public/mainduties" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $en_function = $dom->saveHtml();
        $id_slug = DutyCategoryTranslation::where('duty_category_id',$request->input('category'))->where('locale','id')->first();
        $en_slug = DutyCategoryTranslation::where('duty_category_id',$request->input('category'))->where('locale','en')->first();
    	$data = [
    		'id' => [
                'slug'     => $request->input('id_slug'),
    			'position' => $request->input('id_position'),
    			'mainduty' => $request->input('id_duties'),
    			'function' => $id_function
    		],
    		'en' => [
                'slug'     => $request->input('en_slug'),
    			'position' => $request->input('en_position'),
    			'mainduty' => $request->input('en_duties'),
    			'function' => $en_function
    		],
            'created_by' => auth()->user()->id,
            'site_id' => auth()->user()->site_id
    	];

        $mainduties = Mainduty::create($data);
        $data = 'Tugas dan Fungsi '.($data['id']['position']).' dan '.($data['en']['position']). 'berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Tugas dan Fungsi berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('duty.index')->with($notification);
    }

    public function dutyEdit($id)
    {
        $duties = MainDuty::withTranslation()->where('main_duties.id',$id)->first();
        $categories = DutyCategoryTranslation::where('locale','id')->pluck('category_name','duty_category_id')->toArray();
        
    	return view('backend.edit.mainDuty',compact('duties','categories'));
    }

    public function dutyUpdate(Request $request,$id)
    {
        $request->validate([
    		'category' => 'required',
    		'id_position' => 'required',
    		'en_position' => 'required',
    		'id_duties' => 'required',
    		'en_duties' => 'required',
    		'id_function' => 'required',
    		'en_function' => 'required'
    	]);
    	
        $idfnc = $request->input('id_function');
        $enfnc = $request->input('en_function');

        $dom = new\DomDocument();
        $dom->loadHtml($idfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/public/mainduties" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $id_function = $dom->saveHtml();

        $dom = new\DomDocument();
        $dom->loadHtml($enfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/public/mainduties" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $en_function = $dom->saveHtml();
        $id_slug = DutyCategoryTranslation::where('duty_category_id',$request->input('category'))->where('locale','id')->first();
        $en_slug = DutyCategoryTranslation::where('duty_category_id',$request->input('category'))->where('locale','en')->first();
    	$data = [
    		'id' => [
                'slug'     => $request->input('id_slug'),
    			'position' => $request->input('id_position'),
    			'mainduty' => $request->input('id_duties'),
    			'function' => $id_function
    		],
    		'en' => [
                'slug'     => $request->input('en_slug'),
    			'position' => $request->input('en_position'),
    			'mainduty' => $request->input('en_duties'),
    			'function' => $en_function
    		],
            'updated_by' => auth()->user()->id
    	];

        $mainduties = Mainduty::withTranslation()->where('main_duties.id',$id)->first();
        $mainduties->update($data);
        $log = 'Tugas dan Fungsi Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Tugas dan Fungsi Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('duty.index')->with($notification);
    }

    public function dutyDestroy($id)
    {
        $duties = MainDuty::withTranslation()->where('main_duties.id',$id)->first();
        $logs = 'Tugas dan Fungsi berhasil dihapus';
        $duties->destroy($id);
        
         \LogActivity::addToLog($logs);
        $notification = array (
            'message' => 'Tugas dan Fungsi berhasil dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('duty.index')->with($notification);
    }

    /*Controller For PPSDK Custom Content*/
    public function oimlIndex()
    {
        $data = Oiml::orderBy('updated_at','DESC')->get();

        return view('backend.pages.oiml',compact('data'));
    }

    public function oimlStore(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'category' => 'required',
            'reference_no' => 'required',
            'link' => 'required',
        ]);

        $input = [
            'title' => $request->input('title'),
            'category' => $request->input('category'),
            'reference_no' => $request->input('reference_no'),
            'link' => $request->input('link'),
        ];

        $data = Oiml::create($input);

        $log = 'OIML '.($data->title).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'OIML '.($data->title).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('oiml.index')->with($notification);
    }

    public function oimlEdit($id)
    {
        $data = Oiml::find($id);

        return view('backend.edit.oiml',compact('data'))->renderSections()['content'];
    }

    public function oimlUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'title' => 'required',
            'category' => 'required',
            'reference_no' => 'required',
            'link' => 'required',
        ]);

        $input = [
            'title' => $request->input('title'),
            'category' => $request->input('category'),
            'reference_no' => $request->input('reference_no'),
            'link' => $request->input('link'),
        ];

        $data = Oiml::find($id);
        $data->update($input);

        $log = 'OIML '.($data->title).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'OIML '.($data->title).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('oiml.index')->with($notification);
    }

    public function oimlDestroy($id)
    {
        $data = Oiml::find($id);
        $log = 'OIML '.($data->title).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'OIML '.($data->title).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete($id);

        return redirect()->route('oiml.index')->with($notification);
    }

    /*Controller For DITJENPDN Custom Content*/
    public function regDagriIndex()
    {
        $data = RegulasiDagri::orderBy('updated_at','DESC')->get();

        return view('backend.pages.regDagri',compact('data'));
    }

    public function regDagriStore(Request $request)
    {
        $this->validate($request, [
            'tahun' => 'required|numeric',
            'judul' => 'required',
            'no_regulasi' => 'required',
            'lampiran' => 'required|file',
        ]);

        $uploadedFile = $request->file('lampiran');
        $path = $uploadedFile->store('public/ditjenpdn/regulasi');
        $input = [
            'tahun' => $request->input('tahun'),
            'judul' => $request->input('judul'),
            'no_regulasi' => $request->input('no_regulasi'),
            'file' => $path,
            'created_by' => auth()->user()->id,
        ];

        $data = RegulasiDagri::create($input);

        $log = 'Regulasi '.($data->title).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Regulasi '.($data->title).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('regDagri.index')->with($notification);
    }

    public function regDagriEdit($id)
    {
        $data = RegulasiDagri::find($id);

        return view('backend.edit.regDagri',compact('data'))->renderSections()['content'];
    }

    public function regDagriUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'tahun' => 'required|numeric',
            'judul' => 'required',
            'no_regulasi' => 'required',
        ]);
        if($request->hasFile('lampiran')) {
            $uploadedFile = $request->file('lampiran');
            $path = $uploadedFile->store('public/ditjenpdn/regulasi');
            $input = [
                'tahun' => $request->input('tahun'),
                'judul' => $request->input('judul'),
                'no_regulasi' => $request->input('no_regulasi'),
                'file' => $path,
                'updated_by' => auth()->user()->id,
            ];

            $data = RegulasiDagri::find($id);
            $data->update($input);

            $log = 'Regulasi '.($data->title).' Berhasil Diubah';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Regulasi '.($data->title).' Berhasil Diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('regDagri.index')->with($notification);
        } else {
            $input = [
                'tahun' => $request->input('tahun'),
                'judul' => $request->input('judul'),
                'no_regulasi' => $request->input('no_regulasi'),
                'updated_by' => auth()->user()->id,
            ];

            $data = RegulasiDagri::find($id);
            $data->update($input);

            $log = 'Regulasi '.($data->title).' Berhasil Diubah';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Regulasi '.($data->title).' Berhasil Diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('regDagri.index')->with($notification);
        }
    }

    public function regDagriDestroy($id)
    {
        $data = RegulasiDagri::find($id);
        $log = 'Regulasi '.($data->title).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Regulasi '.($data->title).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $file = File::delete($data->file);
        $data->delete($id);

        return redirect()->route('regDagri.index')->with($notification);
    }
}
