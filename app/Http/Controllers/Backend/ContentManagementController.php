<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Alaouy\Youtube\Facades\Youtube;
use Sixceed\Models\User;
use Sixceed\Models\Country;
use Sixceed\Models\City;
use Sixceed\Models\Unit;
use Sixceed\Models\Status;
use Sixceed\Models\Video;
use Sixceed\Models\Album; 
use Sixceed\Models\Image;
use Sixceed\Models\FrontBanner;
use Sixceed\Models\Publication; 
use Sixceed\Models\AboutUs;
use Sixceed\Models\AboutUsTranslation;
use Sixceed\Models\DutyCategory;
use Sixceed\Models\DutyCategoryTranslation;
use Sixceed\Models\MainDuty;
use Sixceed\Models\Post;
use Sixceed\Models\ArticleCategory;
use Sixceed\Models\Faq;
use Sixceed\Models\FaqCategory;
use Sixceed\Models\Event;
use Sixceed\Models\EventDocumentation;
use Sixceed\Models\Official;
use Sixceed\Models\OrganizationChart;
use Sixceed\Models\ContactUs;
use Sixceed\Models\ContactUsProcess;
use Sixceed\Models\PublicationCategory;
use Sixceed\Models\Oiml;
use Sixceed\Models\RegionalTradeOffice;
use Sixceed\Models\Defina;
use File;
use Carbon\Carbon;

class ContentManagementController extends Controller
{
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
        $categories = DutyCategory::join('duty_category_translations','duty_category_translations.duty_category_id','duty_categories.id')
                                    ->where('duty_categories.site_id',auth()->user()->site_id)
                                    ->pluck('duty_category_translations.category_name','duty_category_translations.category_name')->toArray();
        
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
            $image_name = "/database/mainduty/" . time().$k.'.png';
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
            $image_name = "/database/mainduty/" . time().$k.'.png';
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
            $image_name = "/database/mainduty/" . time().$k.'.png';
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
            $image_name = "/database/mainduty/" . time().$k.'.png';
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

    public function videoIndex(Request $request)
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Video::orderBy('updated_at','ASC')->get();
        } else {
            $data = Video::where('site_id',auth()->user()->site_id)->orderBy('updated_at','ASC')->get();
        }
        
    	return view('backend.pages.videos',compact('data'));
    }

    public function videoStore(Request $request)
    {
        $this->validate($request, [
            'video_id' => 'required',
            'description' => 'required'
        ]);
    	
        $video_id = $request->input('video_id');

        $data = Youtube::getVideoInfo($video_id);
        
        $input = [
            'video_id' => $data->id,
            'site_id' => auth()->user()->site_id,
            'title' => $data->snippet->title,
            'description' => $request->input('description'),
            'thumbnail' => $data->snippet->thumbnails->standard->url,
            'thumbnail_small' => $data->snippet->thumbnails->high->url,
            'player' => $data->player->embedHtml,
            'created_by' => auth()->user()->id
        ];


        $video = Video::create($input);
        $data = 'Video '.($video->title).' berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Video '.($video->title).' berhasil disimpan',
            'alert-type' => 'success'
        );
        return redirect()->route('video.index')->with($notification);
    }

    public function videoShow($id)
    {
        $videos = Video::find($id);
        
        return view('backend.show.videos',compact('videos'))->renderSections()['content'];
    }

    public function videoEdit($id)
    {
        $data = Video::find($id);

        return view('backend.edit.video',compact('data'))->renderSections()['content'];
    }

    public function videoUpdate(Request $request, $id)
    {
        $this->validate($request, [
            'video_id' => 'required',
            'description' => 'required'
        ]);

        $video_id = $request->input('video_id');

        $data = Youtube::getVideoInfo($video_id);
        $input = [
            'video_id' => $data->id,
            'title' => $data->snippet->title,
            'description' => $request->input('description'),
            'thumbnail' => $data->snippet->thumbnails->standard->url,
            'thumbnail_small' => $data->snippet->thumbnails->high->url,
            'player' => $data->player->embedHtml,
            'updated_by' => auth()->user()->id
        ];
        
        $videos = Video::find($id);
        $videos->update($input);
        $data = 'Video '.($videos->title).' berhasil diubah';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Video '.($videos->title).' berhasil diubah',
            'alert-type' => 'success'
        );
        
        return redirect()->route('video.index')->with($notification);
    }

    public function videoDestroy($id)
    {
        $videos = Video::find($id);
        $data = 'Video '.($videos->title).' berhasil dihapus';
        $videos->destroy($id);
        
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Video '.($videos->title).' berhasil dihapus',
            'alert-type' => 'success'
        );
        return redirect()->route('video.index')->with($notification);
    }

    public function albumIndex(Request $request)
  	{
    	$albums = Album::with('Photos')->orderBy('updated_at','DESC')->paginate(4);
    	return view('backend.pages.albums', compact('albums'))
              ->with('i', ($request->input('page', 1) - 1) * 4);
  	}

    public function albumShow($id)
    {
        $albums = Album::with('Photos')->find($id);
        
        return view('backend.preview.album', compact('albums'));
    }
    
    public function albumCreate()
    {
        return view('backend.form.albums');
    }

    public function albumStore(Request $request)
    {
        $this->validate($request, [
                'name' => 'required',
                'cover_image'=>'required|image',
            ]);
        $file = $request->file('cover_image');
        $random_name = str_random(8);
        $destinationPath = 'database/berita_foto/';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'_cover.'.$extension;
        $uploadSuccess = $request->file('cover_image')->move($destinationPath, $filename);
        $album = Album::create(array(
            'name' => $request->name,
            'description' => $request->description,
            'cover_image' => $filename,
            'site_id' => auth()->user()->site_id,
            'created_by' => auth()->user()->id,
        ));
        $data = 'Berita Foto '.($album->name).' Berhasil Disimpan';
            \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Berita Foto '.($album->name).' Berhasil Disimpan',
                'alert-type' => 'success'
            );

        return redirect()->route('image.create',$album->id)->with($notification);
    }

    public function albumDelete($id)
    {
        $album = Album::find($id);
        $file = $album->cover_image;
        $images = Image::where('album_id',$id)->get('image');
        
        \File::delete(public_path('database/berita_foto/' . $file));
        foreach($images as $image) {
            \File::delete(public_path('database/berita_foto/' . $image->image));
        }
        $album->delete();
        $data = 'Berita Foto '.($album->name).' Berhasil Dihapus';
            \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Berita Foto '.($album->name).' Berhasil Dihapus',
                'alert-type' => 'success'
            );
        return redirect()->route('foto.index')->with($notification);
    }

    public function imageCreate($id)
    {
        $album = Album::with('Photos')->find($id);
        $details = Album::with('Photos')->find($id);
        
        return view('backend.input.image', compact('album','details'));
    }

    public function imageStore(Request $request)
    {
        $this->validate($request, [
                'album_id' => 'required|numeric|exists:albums,id',
                'image'=>'required|image',
                'description' => 'required'
            ]);
    
        $file = $request->file('image');
        $random_name = str_random(8);
        $destinationPath = 'database/berita_foto/';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'_foto_content.'.$extension;
        $uploadSuccess = $request->file('image')->move($destinationPath, $filename);
        $images = Image::create(array(
        'description' => $request->description,
        'image' => $filename,
        'album_id'=> $request->album_id
        ));
        $data = 'Foto '.($images->image).' Berhasil Disimpan';
        \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Foto '.($images->image).' Berhasil Disimpan',
                'alert-type' => 'success'
            );
        return redirect()->route('image.create',array('id'=>$request->album_id))->with($notification);
    }

    public function imageDelete($id)
    {
        $image = Image::find($id);
        $berkas = Image::where('id', $id)
                ->get('image');
        \File::delete(public_path('database/berita_foto/' . $image->image));
        $image->delete();
        $data = 'Foto '.($image->image).' Berhasil Dihapus';
        \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Foto '.($image->image).' Berhasil Dihapus',
                'alert-type' => 'success'
            );
        return redirect()->route('image.create',array('id'=>$image->album_id))->with($notification);
    }

    public function frontBannerIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = FrontBanner::where('status_id','f13c7f2e-4723-47a7-b75c-fbec0aaca411')->orderBy('updated_at','DESC')->get();
        } else {
            $data = FrontBanner::where('site_id',auth()->user()->site_id)->where('status_id','f13c7f2e-4723-47a7-b75c-fbec0aaca411')->orderBy('updated_at','DESC')->get();
        }
        
        return view('backend.pages.frontBanner',compact('data'));
    }

    public function frontBannerStore(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'type' => 'required',
            'position' => 'required|numeric',
            'image' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg',
            'link' => 'required',
        ]);
        
        $file = $request->file('image');
        $random_name = str_random(8);
        $destinationPath = 'database/banner/';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'banner.'.$extension;
        $uploadSuccess = $request->file('image')->move($destinationPath, $filename);

        $input = [
            'title' => $request->input('title'),
            'site_id' => auth()->user()->site_id,
            'type' => $request->input('type'),
            'position' => $request->input('position'),
            'image' => $filename,
            'link'	=> $request->input('link'),
            'description' => $request->input('description'),
            'status_id' => 'f13c7f2e-4723-47a7-b75c-fbec0aaca411',
            'created_by' => auth()->user()->id,
        ];

        $saves = FrontBanner::create($input);

        $log = 'Banner '.($saves->title).' berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Banner '.($saves->title).' berhasil disimpan',
            'alert-type' => 'success'
        );
        return redirect()->route('fnban.index')->with($notification);
    }

    public function frontBannerEdit($id)
    {
        $source = FrontBanner::find($id);
        
        return view('backend.edit.frontBanner',compact('source'))->renderSections()['content'];
    }

    public function frontBannerUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'title' => 'required',
            'type' => 'required',
            'position' => 'required|numeric',
            'link' => 'required'
        ]);

        if ($request->hasFile('image')) {
            $old = FrontBanner::find($id);
            \File::delete(public_path('database/banner/' . $old->image));

            $file = $request->file('image');
            $random_name = str_random(8);
            $destinationPath = 'database/banner/';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'banner.'.$extension;
            $uploadSuccess = $request->file('image')->move($destinationPath, $filename);

            $input = [
            'title' => $request->input('title'),
            'type' => $request->input('type'),
            'position' => $request->input('position'),
            'image' => $filename,
            'link'  => $request->input('link'),
            'description' => $request->input('description'),
            'updated_by' => auth()->user()->id,
        ];

        } else {
            $input = [
            'title' => $request->input('title'),
            'type' => $request->input('type'),
            'position' => $request->input('position'),
            'link'  => $request->input('link'),
            'description' => $request->input('description'),
            'updated_by' => auth()->user()->id
        ];
        }
		
        $blocks = FrontBanner::find($id);
        $blocks->update($input);
        
        $log = 'Banner '.($blocks->title).' berhasil diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Banner '.($blocks->title).' berhasil diubah',
            'alert-type' => 'success'
        );
        return redirect()->route('fnban.index')->with($notification);
    }

    public function frontBannerDeactivate(Request $request,$id)
    {
        $input = [
            'status_id' => '504330a1-63d5-478d-921b-f692cfb19b6f',
        ];

        $source = FrontBanner::find($id);
        $source->update($input);

        $log = 'Banner '.($source->title).' Berhasil Di Nonaktifkan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Banner '.($source->title).' Berhasil Di Nonaktifkan',
            'alert-type' => 'success'
        );
        return redirect()->route('fnban.index')->with($notification);
    }

    public function frontBannerDestroy($id)
    {
        $data = FrontBanner::find($id)->first();
        $file = $data->image;
        $log = 'Banner '.($data->title).' berhasil dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Banner '.($data->title).' berhasil dihapus',
            'alert-type' => 'success'
        );
        $images = File::delete(public_path('database/banner/' . $file));
        FrontBanner::find($id)->delete();
        
        return redirect()->route('fnban.index')->with($notification);
    }

    public function frontPubIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Publication::orderBy('updated_at','DESC')->get();
            $category = PublicationCategory::orderBy('category_name','ASC')->pluck('category_name','id')->toArray();
        } else {
            $data = Publication::where('site_id',auth()->user()->site_id)->orderBy('updated_at','DESC')->get();
            $category = PublicationCategory::where('site_id',auth()->user()->site_id)->orderBy('category_name','ASC')->pluck('category_name','id')->toArray();
        }

        $yearArray = range(1990, 2100);

        return view('backend.pages.publication',compact('data','category','yearArray'));
    }

    public function frontPubStore(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'file' => 'file|mimes:pdf,PDF',
            'publish_year' => 'required',
        ]);
        
        $file = $request->file('cover');
        $random_name = str_random(8);
        $destinationPath = 'database/publikasi/cover/';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'publication.'.$extension;
        $uploadSuccess = $request->file('cover')->move($destinationPath, $filename);

        if($request->hasFile('file')) {
            $file = $request->file('file');
            $random_name = str_random(8);
            $destinationPath = 'database/publikasi/';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'lampiran.'.$extension;
            $uploadSuccess = $request->file('file')->move($destinationPath, $filename);

            $input = [
                'title' => $request->input('title'),
                'cover_image' => $filename,
                'ref_code' => $request->input('ref_code'),
                'link' => $request->input('link'),
                'category_id' => $request->input('category_id'),
                'section_id' => $request->input('section_id'),
                'file' => $filename,
                'publish_year' => $request->input('publish_year'),
                'site_id' => auth()->user()->site_id,
                'created_by' => auth()->user()->id
            ];
            $storage = Publication::create($input);
            $log = 'Publikasi Berhasil Disimpan';
             \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Publikasi Berhasil Disimpan',
                'alert-type' => 'success'
            );
            return redirect()->route('fnpub.index')->with($notification);
        } else {
            $input = [
                'title' => $request->input('title'),
                'cover_image' => $filename,
                'link' => $request->input('link'),
                'ref_code' => $request->input('ref_code'),
                'category_id' => $request->input('category_id'),
                'section_id' => $request->input('section_id'),
                'publish_year' => $request->input('publish_year'),
                'site_id' => auth()->user()->site_id,
                'created_by' => auth()->user()->id
            ];
            
            $storage = Publication::create($input);
            $log = 'Publikasi Berhasil Disimpan';
             \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Publikasi Berhasil Disimpan',
                'alert-type' => 'success'
            );
            return redirect()->route('fnpub.index')->with($notification);
        }
    }

    public function frontPubEdit($id)
    {
        $source = Publication::find($id);

        return view('backend.edit.publication',compact('source'))->renderSections()['content'];
    }

    public function frontPubUpdate(Request $request,$id)
    {
        $request->validate([
            'title' => 'required',
            'cover' => 'image',
            'link' => 'required',
        ]);

    	if ($request->hasFile('cover')) {
            if ($request->hasFile('file')) {
                $old_data = Publication::find($id);
                \File::delete(public_path('database/publikasi/cover/' . $old_data->cover_image));
                \File::delete(public_path('database/publikasi/' . $old_data->file));

                $file = $request->file('cover');
                $random_name = str_random(8);
                $destinationPath = 'database/publikasi/cover/';
                $extension = $file->getClientOriginalExtension();
                $cover=$random_name.'publication.'.$extension;
                $uploadSuccess = $request->file('cover')->move($destinationPath, $cover);

                $file = $request->file('file');
                $random_name = str_random(8);
                $destinationPath = 'database/publikasi/';
                $extension = $file->getClientOriginalExtension();
                $filename=$random_name.'lampiran.'.$extension;
                $uploadSuccess = $request->file('file')->move($destinationPath, $filename);

                $input = [
                    'title' => $request->input('title'),
                    'cover_image' => $cover,
                    'file' => $filename,
                    'category_id' => $request->input('category_id'),
                    'section_id' => $request->input('section_id'),
                    'updated_by' => auth()->user()->id
                ];

                $pubs = Publication::find($id);
                $pubs->update($input);
                $log = 'Publikasi Berhasil Diubah';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Publikasi Berhasil Diubah',
                    'alert-type' => 'success'
                );

                return redirect()->route('fnpub.index')->with($notification);
            } else {
                $old_data = Publication::find($id);
                \File::delete(public_path('database/publikasi/cover/' . $old_data->cover_image));

                $file = $request->file('cover');
                $random_name = str_random(8);
                $destinationPath = 'database/publikasi/cover/';
                $extension = $file->getClientOriginalExtension();
                $cover=$random_name.'publication.'.$extension;
                $uploadSuccess = $request->file('cover')->move($destinationPath, $cover);

                $input = [
                    'title' => $request->input('title'),
                    'cover_image' => $cover,
                    'category_id' => $request->input('category_id'),
                    'section_id' => $request->input('section_id'),
                    'updated_by' => auth()->user()->id
                ];

                $pubs = Publication::find($id);
                $pubs->update($input);
                $log = 'Publikasi Berhasil Diubah';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Publikasi Berhasil Diubah',
                    'alert-type' => 'success'
                );

                return redirect()->route('fnpub.index')->with($notification);
            }
        } else {
            if ($request->hasFile('file')) {
                $old_data = Publication::find($id);
                \File::delete(public_path('database/publikasi/' . $old_data->file));

                $file = $request->file('file');
                $random_name = str_random(8);
                $destinationPath = 'database/publikasi/';
                $extension = $file->getClientOriginalExtension();
                $filename=$random_name.'lampiran.'.$extension;
                $uploadSuccess = $request->file('file')->move($destinationPath, $filename);

                $input = [
                    'title' => $request->input('title'),
                    'file' => $filename,
                    'category_id' => $request->input('category_id'),
                    'updated_by' => auth()->user()->id
                ];

                $pubs = Publication::find($id);
                $pubs->update($input);
                $log = 'Publikasi Berhasil Diubah';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Publikasi Berhasil Diubah',
                    'alert-type' => 'success'
                );

                return redirect()->route('fnpub.index')->with($notification);
            } else {
                $input = [
                    'title' => $request->input('title'),
                    'category_id' => $request->input('category_id'),
                    'updated_by' => auth()->user()->id
                ];

                $pubs = Publication::find($id);
                $pubs->update($input);
                $log = 'Publikasi Berhasil Diubah';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Publikasi Berhasil Diubah',
                    'alert-type' => 'success'
                );

                return redirect()->route('fnpub.index')->with($notification);
            }
        }
    }

    public function frontPubDestroy($id)
    {
        $data = Publication::find($id)->first();
        $log = 'Publikasi Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Publikasi Berhasil Dihapus',
            'alert-type' => 'success'
        );
        \File::delete(public_path('database/publikasi/' . $data->file));
        \File::delete(public_path('database/publikasi/cover/' . $data->cover_image));
        Publication::find($id)->delete();
        
        return redirect()->route('fnpub.index')->with($notification);
    }

    public function aboutIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $about = AboutUs::withTranslation()->get();
        } else {
            $about = AboutUs::withTranslation()->where('site_id',auth()->user()->site_id)->get();
        }
        
    	return view('backend.pages.aboutUs',compact('about'));
    }

    public function aboutCreate()
    {
        return view('backend.input.aboutUs');
    }

    public function aboutStore(Request $request)
    {
        $request->validate([
    		'id_konten' => 'required',
    		'en_konten' => 'required',
    	]);
    	
        $idfnc = $request->input('id_konten');
        $enfnc = $request->input('en_konten');

        $dom = new\DomDocument();
        $dom->loadHtml($idfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/about_us/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $id_welcome = $dom->saveHtml();

        $dom = new\DomDocument();
        $dom->loadHtml($enfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/about_us/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $en_welcome = $dom->saveHtml();

    	$data = [
    		'id' => [
                'welcome_message'     => $id_welcome
    		],
    		'en' => [
                'welcome_message'     => $en_welcome
    		],
            'created_by' => auth()->user()->id,
            'status_id' => '3bc97e4a-5e86-4d7c-86d5-7ee450a247ee',
            'site_id' => auth()->user()->site_id
        ];

        $data = AboutUs::create($data);
         \LogActivity::addToLog('Pesan Tentang Kami berhasil disimpan');
        $notification = array (
            'message' => 'Pesan Tentang Kami berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('about.index')->with($notification);
    }

    public function aboutEdit($id)
    {
        $about = AboutUs::withTranslation()->where('about_us.id',$id)->first();
        
    	return view('backend.edit.aboutUs',compact('about'));
    }

    public function aboutUpdate(Request $request,$id)
    {
        $idfnc = $request->input('id_konten');
        $enfnc = $request->input('en_konten');

        $dom = new\DomDocument();
        $dom->loadHtml($idfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/about_us/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $id_welcome = $dom->saveHtml();

        $dom = new\DomDocument();
        $dom->loadHtml($enfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/about_us/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $en_welcome = $dom->saveHtml();

    	$data = [
    		'id' => [
                'welcome_message'     => $id_welcome
    		],
    		'en' => [
                'welcome_message'     => $en_welcome
    		],
            'updated_by' => auth()->user()->id,
        ];

        $about = AboutUs::withTranslation()->where('about_us.id',$id)->first();
        $about->update($data);

        $log = 'Tentang Kami berhasil diubah';
         \LogActivity::addToLog($log);
        
        $notification = array (
            'message' => 'Tentang Kami berhasil diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('about.index')->with($notification);
    }

    public function aboutPublished(Request $request,$id)
    {
        $publish = ['status_id' => '2872ac69-2f76-438b-8b83-31c52787027d'];
        $about = AboutUs::withTranslation()->where('about_us.id',$id)->first();
        $about->update($publish);

        $log = 'Tentang Kami berhasil dipublish';
         \LogActivity::addToLog($log);
        
        $notification = array (
            'message' => 'Tentang Kami berhasil dipublish',
            'alert-type' => 'success'
        );

        return redirect()->route('about.index')->with($notification);
    }

    public function aboutDestroy($id)
    {
        $about = AboutUs::withTranslation()->where('about_us.id',$id)->first();
        $logs = 'Tentang Kami berhasil dihapus';
        $about->destroy($id);
        
         \LogActivity::addToLog($logs);
        $notification = array (
            'message' => 'Tentang Kami berhasil dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('about.index')->with($notification);
    }

    public function faqIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Faq::orderBy('id','ASC')->get();
        } else {
            $data = Faq::where('site_id',auth()->user()->site_id)->orderBy('id','ASC')->get();
        }
        
        return view('backend.pages.faq',compact('data'));
    }

    public function faqCreate()
    {
        $categories = FaqCategory::where('site_id',auth()->user()->site_id)->pluck('category_name','id')->toArray();

        return view('backend.input.faq',compact('categories'));
    }

    public function faqStore(Request $request)
    {
        $request->validate([
    		'faq_category_id' => 'required',
    		'pertanyaan' => 'required',
    		'jawaban' => 'required',
    	]);
    	
        $pertanyaan = $request->input('pertanyaan');
        $jawaban = $request->input('jawaban');

        $dom = new\DomDocument();
        $dom->loadHtml($idfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/faq/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $question = $dom->saveHtml();

        $dom = new\DomDocument();
        $dom->loadHtml($enfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/faq/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $answer = $dom->saveHtml();
        
        $data = [
            'faq_category_id' => $request->input('faq_category_id'),
            'pertanyaan' => $question,
            'jawaban' => $answer,
            'site_id' => auth()->user()->site_id,
            'created_by' => auth()->user()->id
    	];

        $faqs = Faq::create($data);
        
        $log = 'FAQ '.($faqs->pertanyaan).' Berhasil DIsimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'FAQ '.($faqs->pertanyaan).' Berhasil DIsimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('faq.index')->with($notification);
    }

    public function faqEdit($id)
    {
        $data = Faq::find($id);

        return view('backend.edit.faq',compact('data'));
    }

    public function faqUpdate(Request $request,$id)
    {
        $request->validate([
    		'pertanyaan' => 'required',
    		'jawaban' => 'required',
    	]);
    	
        $pertanyaan = $request->input('pertanyaan');
        $jawaban = $request->input('jawaban');

        $dom = new\DomDocument();
        $dom->loadHtml($idfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/faq/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $question = $dom->saveHtml();

        $dom = new\DomDocument();
        $dom->loadHtml($enfnc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        $images = $dom->getElementsByTagName('img');
        foreach($images as $k => $img){
            $isi = $img->getAttribute('src');
            list($type, $data) = explode(';', $isi);
            list(, $isi) = explode(',', $isi);
            $isi = base64_decode($isi);
            $image_name = "/database/faq/" . time().$k.'.png';
            $path = public_path() . $image_name;
            file_put_contents($path, $isi);
            $img->removeAttribute('src');
            $img->setAttribute('src', $image_name);
        }
        $answer = $dom->saveHtml();
        
        $data = [
            'faq_category_id' => $request->input('faq_category_id'),
            'pertanyaan' => $question,
            'jawaban' => $answer,
            'updated_by' => auth()->user()->id
    	];

        $faqs = Faq::find($id);
        $faqs->update($data);
        
        $log = 'FAQ '.($faqs->pertanyaan).' Berhasil Diubah';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'FAQ '.($faqs->pertanyaan).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('faq.index')->with($notification);
    }

    public function faqDestroy($id)
    {
        $data = Faq::find($id);
        $log = 'FAQ '.($data->pertanyaan).' Berhasil Dihapus';
        $data->delete();

        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'FAQ '.($faqs->pertanyaan).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('faq.index')->with($notification);
    }

    public function eventIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Event::withTranslation()->orderBy('date_from','ASC')->get();
        } else {
            $data = Event::withTranslation()->where('site_id',auth()->user()->site_id)->orderBy('date_from','ASC')->get();
        }
        
        return view('backend.pages.event',compact('data'));
    }

    public function eventCreate()
    {
        $countries = Country::pluck('country_name','id')->toArray();

        return view('backend.input.event',compact('countries'));
    }

    public function eventStore(Request $request)
    {
        $request->validate([
    		'id_title' => 'required',
            'en_title' => 'required',
            'id_content' => 'required',
            'en_content' => 'required',
            'event_type' => 'required',
            'country_id' => 'required',
            'location' => 'required',
            'event_date' => 'required'
        ]);

        if($request->hasFile('lampiran')) {
            $dates = explode('-',$request->input('event_date'));
            
            $file = $request->file('lampiran');
            $file_name = $file->getClientOriginalName();
            $size = $file->getSize();
            $ext = $file->getClientOriginalExtension();
            $destinationPath = 'public/event';
            $extension = $file->getClientOriginalExtension();
            $filename=$file_name.'_event.'.$extension;
            $uploadSuccess = $request->file('lampiran')
            ->move($destinationPath, $filename);

            $id_content = $request->input('id_content');
            $en_content = $request->input('en_content');

            $dom = new\DomDocument();
            $dom->loadHtml($id_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $id_content = $dom->saveHtml();

            $dom = new\DomDocument();
            $dom->loadHtml($en_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $en_content = $dom->saveHtml();

            $input = [
                'en' => [
                    'title' => $request->input('en_title'),
                    'description' => $en_content
                ],
                'id' => [
                    'title' => $request->input('id_title'),
                    'description' => $id_content
                ],
                'site_id' => auth()->user()->site_id,
                'event_type' => $request->input('event_type'),
                'date_from' => $dates[0],
                'date_to' => $dates[1],
                'country_id' => $request->input('country_id'),
                'location' => $request->input('location'),
                'brocure' => $filename,
                'link' => $request->input('link'),
                'status_id' => '2872ac69-2f76-438b-8b83-31c52787027d',
                'created_by' => auth()->user()->id,
            ];

            $data = Event::create($input);
            $log = 'Kegiatan '.($data->title).' Berhasil Disimpan';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Kegiatan '.($data->title).' Berhasil Disimpan',
                'alert-type' => 'success'
            );

            return redirect()->route('event.index')->with($notification);
        } else {
            $dates = explode('-',$request->input('event_date'));

            $id_content = $request->input('id_content');
            $en_content = $request->input('en_content');

            $dom = new\DomDocument();
            $dom->loadHtml($id_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $id_content = $dom->saveHtml();

            $dom = new\DomDocument();
            $dom->loadHtml($en_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $en_content = $dom->saveHtml();

            $input = [
                'en' => [
                    'title' => $request->input('en_title'),
                    'description' => $en_content
                ],
                'id' => [
                    'title' => $request->input('id_title'),
                    'description' => $id_content
                ],
                'site_id' => auth()->user()->site_id,
                'event_type' => $request->input('event_type'),
                'date_from' => $dates[0],
                'date_to' => $dates[1],
                'country_id' => $request->input('country_id'),
                'location' => $request->input('location'),
                'link' => $request->input('link'),
                'status_id' => '2872ac69-2f76-438b-8b83-31c52787027d',
                'created_by' => auth()->user()->id,
            ];

            $data = Event::create($input);
            $log = 'Kegiatan '.($data->title).' Berhasil Disimpan';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Kegiatan '.($data->title).' Berhasil Disimpan',
                'alert-type' => 'success'
            );

            return redirect()->route('event.index')->with($notification);
        }
    }

    public function eventEdit($id)
    {
        $countries = Country::pluck('country_name','id')->toArray();
        $data = Event::withTranslation()->where('events.id',$id)->first();
        $status = Status::pluck('status_name','id')->toArray();
        
        return view('backend.edit.event',compact('countries','data','status'));
    }

    public function eventUpdate(Request $request,$id)
    {
        $request->validate([
    		'id_title' => 'required',
            'en_title' => 'required',
            'id_content' => 'required',
            'en_content' => 'required',
            'event_type' => 'required',
            'country_id' => 'required',
            'location' => 'required',
            'event_date' => 'required'
        ]);
        
        if($request->hasFile('lampiran')) {
            $dates = explode('-',$request->input('event_date'));
            $amount = date_diff(date_create($dates[0]),date_create($dates[1]));
            $diff = $amount->format('%d.%h');

            $file = $request->file('lampiran');
            $file_name = $file->getClientOriginalName();
            $size = $file->getSize();
            $ext = $file->getClientOriginalExtension();
            $destinationPath = 'public/event';
            $extension = $file->getClientOriginalExtension();
            $filename=$file_name.'_event.'.$extension;
            $uploadSuccess = $request->file('lampiran')
            ->move($destinationPath, $filename);

            $id_content = $request->input('id_content');
            $en_content = $request->input('en_content');

            $dom = new\DomDocument();
            $dom->loadHtml($id_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $id_content = $dom->saveHtml();

            $dom = new\DomDocument();
            $dom->loadHtml($en_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $en_content = $dom->saveHtml();

            $input = [
                'en' => [
                    'title' => $request->input('en_title'),
                    'description' => $en_content
                ],
                'id' => [
                    'title' => $request->input('id_title'),
                    'description' => $id_content
                ],
                'site_id' => auth()->user()->site_id,
                'event_type' => $request->input('event_type'),
                'date_from' => Carbon::parse($dates[0]),
                'date_to' => Carbon::parse($dates[1]),
                'country_id' => $request->input('country_id'),
                'location' => $request->input('location'),
                'brocure' => $filename,
                'link' => $request->input('link'),
                'status_id' => $request->input('status_id'),
                'updated_by' => auth()->user()->id,
            ];

            $data = Event::withTranslation()->where('events.id',$id)->first();
            $data->update($input);
            $log = 'Kegiatan '.($data->title).' Berhasil Diubah';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Kegiatan '.($data->title).' Berhasil Diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('event.index')->with($notification);
        } else {
            $dates = explode('-',$request->input('event_date'));
            $amount = date_diff(date_create($dates[0]),date_create($dates[1]));
            $diff = $amount->format('%d.%h');
            
            $id_content = $request->input('id_content');
            $en_content = $request->input('en_content');

            $dom = new\DomDocument();
            $dom->loadHtml($id_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $id_content = $dom->saveHtml();

            $dom = new\DomDocument();
            $dom->loadHtml($en_content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
            $images = $dom->getElementsByTagName('img');
            foreach($images as $k => $img){
                $isi = $img->getAttribute('src');
                list($type, $data) = explode(';', $isi);
                list(, $isi) = explode(',', $isi);
                $isi = base64_decode($isi);
                $image_name = "/database/events/" . time().$k.'.png';
                $path = public_path() . $image_name;
                file_put_contents($path, $isi);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $en_content = $dom->saveHtml();

            $input = [
                'en' => [
                    'title' => $request->input('en_title'),
                    'description' => $en_content
                ],
                'id' => [
                    'title' => $request->input('id_title'),
                    'description' => $id_content
                ],
                'site_id' => auth()->user()->site_id,
                'event_type' => $request->input('event_type'),
                'date_from' => Carbon::parse($dates[0]),
                'date_to' => Carbon::parse($dates[1]),
                'country_id' => $request->input('country_id'),
                'location' => $request->input('location'),
                'link' => $request->input('link'),
                'status_id' => $request->input('status_id'),
                'updated_by' => auth()->user()->id,
            ];

            $data = Event::withTranslation()->where('events.id',$id)->first();
            $data->update($input);
            $log = 'Kegiatan '.($data->title).' Berhasil Diubah';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Kegiatan '.($data->title).' Berhasil Diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('event.index')->with($notification);
        }
    }

    public function eventDocumentation($id)
    {
        $data = Event::with('Child')->where('events.id',$id)->first();
        
        return view('backend.pages.eventDocumentation',compact('data'));
    }

    public function eventDocumentationStore(Request $request,$id)
    {
        $data = Event::withTranslation()->where('events.id',$id)->first();
        
        if($request->hasFile('lampiran')) {
            $uploadedFile = $request->file('lampiran');
            $path = $uploadedFile->store('public/database/konten_umum');
            $video_id = $request->input('video_id');
            $videos = Youtube::getVideoInfo($video_id);
            
            $documents = EventDocumentation::create ([
                'event_id' => $data->id,
                'file_title' => $request->input('file_title'),
                'file' => $path,
                'video_id' => $videos->id,
                'video_title' => $videos->snippet->title,
                'thumbnail' => $videos->snippet->thumbnails->standard->url,
                'thumbnail_small' => $videos->snippet->thumbnails->high->url,
                'player' => $videos->player->embedHtml,
            ]);
            
            $log = 'Dokumen Kegiatan '.($data[0]->title).' Berhasil Disimpan';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Dokumen Kegiatan '.($data[0]->title).' Berhasil Disimpan',
                'alert-type' => 'success'
            );
            return redirect()->back()->with($notification);
        } else {
            $video_id = $request->input('video_id');
            $videos = Youtube::getVideoInfo($video_id);
            
            $documents = EventDocumentation::create ([
                'event_id' => $data->id,
                'video_id' => $videos->id,
                'video_title' => $videos->snippet->title,
                'thumbnail' => $videos->snippet->thumbnails->standard->url,
                'thumbnail_small' => $videos->snippet->thumbnails->high->url,
                'player' => $videos->player->embedHtml,
            ]);
            
            $log = 'Dokumen Kegiatan '.($data[0]->title).' Berhasil Disimpan';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Dokumen Kegiatan '.($data[0]->title).' Berhasil Disimpan',
                'alert-type' => 'success'
            );
            return redirect()->back()->with($notification);
        }
    }

    public function eventDocumentationDestroy($id)
    {
        $data = Event::with('Child')->where('events.id',$id)->first();
        $log = 'Dokumen Kegiatan Berhasil Dihapus';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Dokumen Kegiatan Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->back()->with($notification);
    }

    public function eventDestroy($id)
    {
        $data = Event::withTranslation()->where('events.id',$id)->first();
        $log = 'Kegiatan '.($data->title).' Berhasil Dihapus';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kegiatan '.($data->title).' Berhasil Diubah',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->route('event.index')->with($notification);
    }

    public function postIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Post::withTranslation()->orderBy('updated_at','DESC')->get();  
        } else {
            $data = Post::withTranslation()->where('site_id',auth()->user()->site_id)->orderBy('updated_at','DESC')->get();
        }
        return view('backend.pages.post',compact('data'));
    }

    public function postCreate()
    {
        $categories = ArticleCategory::where('site_id',auth()->user()->site_id)->orWhere('site_id','48887f82-bea4-47b3-a9de-4c27fdc6b85a')->pluck('category_name','id')->toArray();
        $reporter = User::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();
        
        return view('backend.input.content',compact('categories','reporter'));
    }

    public function postStore(Request $request)
    {
        $this->validate($request, [
            'id_title' => 'required',
            'en_title' => 'required',
            'category_id' => 'required',
            'reporter_id' => 'required',
            'published_date' => 'required',
        ]);
        
        if($request->hasFile('lampiran')) {
            $file = $request->file('lampiran');
            $random_name = str_random(8);
            $destinationPath = 'database/general_content/lampiran/';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'lampiran.'.$extension;
            $uploadSuccess = $request->file('lampiran')->move($destinationPath, $filename);
            if(($request->input('id_content') && $request->input('en_content')) == null) {
                $data = [
                    'id' => [
                        'title'     => $request->input('id_title'),
                    ],
                    'en' => [
                        'title'     => $request->input('en_title'),
                    ],
                    'category_id' => $request->input('category_id'),
                    'reporter_id' => $request->input('reporter_id'),
                    'source' => $request->input('source'),
                    'file' => $filename,
                    'category_child_id' => $request->input('category_child_id'),
                    'years' => $request->input('years'),
                    'created_by' => auth()->user()->id,
                    'site_id' => auth()->user()->site_id,
                    'status_id' => '928ebe55-2520-491e-86e4-7498df664a32',
                    'published_date' => $request->input('published_date'),
                    'keywords' => $request->input('keywords'),
                    'description' => $request->input('description'),
                    'type_id' => '2',
                    'reference_custom' => $request->input('reference_custom'),
                    'publish_year' => $request->input('publish_year')
                ];
        
                $posts = Post::create($data);
                $log = 'Konten '.($posts->title).' Berhasil Disimpan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Konten '.($posts->title).' Berhasil Disimpan',
                    'alert-type' => 'success'
                );

                return redirect()->route('post.index')->with($notification);
            } else {
                $idcontent = $request->input('id_content');
                $encontent = $request->input('en_content');
        
                $dom = new\DomDocument();
                $dom->loadHtml($idcontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                $images = $dom->getElementsByTagName('img');
                foreach($images as $k => $img){
                    $isi = $img->getAttribute('src');
                    list($type, $data) = explode(';', $isi);
                    list(, $isi) = explode(',', $isi);
                    $isi = base64_decode($isi);
                    $image_name = "/database/general_content/" . time().$k.'.png';
                    $path = public_path() . $image_name;
                    file_put_contents($path, $isi);
                    $img->removeAttribute('src');
                    $img->setAttribute('src', $image_name);
                }
                $idcontent = $dom->saveHtml();
        
                $dom = new\DomDocument();
                $dom->loadHtml($encontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                $images = $dom->getElementsByTagName('img');
                foreach($images as $k => $img){
                    $isi = $img->getAttribute('src');
                    list($type, $data) = explode(';', $isi);
                    list(, $isi) = explode(',', $isi);
                    $isi = base64_decode($isi);
                    $image_name = "/database/general_content/" . time().$k.'.png';
                    $path = public_path() . $image_name;
                    file_put_contents($path, $isi);
                    $img->removeAttribute('src');
                    $img->setAttribute('src', $image_name);
                }
                $encontent = $dom->saveHtml();
        
                $data = [
                    'id' => [
                        'title'     => $request->input('id_title'),
                        'content' => $idcontent
                    ],
                    'en' => [
                        'title'     => $request->input('en_title'),
                        'content' => $encontent
                    ],
                    'category_id' => $request->input('category_id'),
                    'reporter_id' => $request->input('reporter_id'),
                    'source' => $request->input('source'),
                    'file' => $path,
                    'category_child_id' => $request->input('category_child_id'),
                    'years' => $request->input('years'),
                    'created_by' => auth()->user()->id,
                    'site_id' => auth()->user()->site_id,
                    'status_id' => '928ebe55-2520-491e-86e4-7498df664a32',
                    'published_date' => $request->input('published_date'),
                    'keywords' => $request->input('keywords'),
                    'description' => $request->input('description'),
                    'type_id' => '2',
                    'reference_custom' => $request->input('reference_custom'),
                    'publish_year' => $request->input('publish_year')
                ];
        
                $posts = Post::create($data);
                $log = 'Konten '.($posts->title).' Berhasil Disimpan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Konten '.($posts->title).' Berhasil Disimpan',
                    'alert-type' => 'success'
                );

                return redirect()->route('post.index')->with($notification);
            }
        } else {
            if(($request->input('id_content') && $request->input('en_content')) == null) {
                $data = [
                    'id' => [
                        'title'     => $request->input('id_title'),
                    ],
                    'en' => [
                        'title'     => $request->input('en_title'),
                    ],
                    'category_id' => $request->input('category_id'),
                    'reporter_id' => $request->input('reporter_id'),
                    'source' => $request->input('source'),
                    'category_child_id' => $request->input('category_child_id'),
                    'years' => $request->input('years'),
                    'created_by' => auth()->user()->id,
                    'site_id' => auth()->user()->site_id,
                    'status_id' => '928ebe55-2520-491e-86e4-7498df664a32',
                    'published_date' => $request->input('published_date'),
                    'keywords' => $request->input('keywords'),
                    'description' => $request->input('description'),
                    'type_id' => '1',
                    'reference_custom' => $request->input('reference_custom'),
                    'publish_year' => $request->input('publish_year')
                ];
        
                $posts = Post::create($data);
                $log = 'Konten '.($posts->title).' Berhasil Disimpan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Konten '.($posts->title).' Berhasil Disimpan',
                    'alert-type' => 'success'
                );

                return redirect()->route('post.index')->with($notification);
            } else {
                $idcontent = $request->input('id_content');
                $encontent = $request->input('en_content');
        
                $dom = new\DomDocument();
                $dom->loadHtml($idcontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                $images = $dom->getElementsByTagName('img');
                foreach($images as $k => $img){
                    $isi = $img->getAttribute('src');
                    list($type, $data) = explode(';', $isi);
                    list(, $isi) = explode(',', $isi);
                    $isi = base64_decode($isi);
                    $image_name = "/database/general_content/" . time().$k.'.png';
                    $path = public_path() . $image_name;
                    file_put_contents($path, $isi);
                    $img->removeAttribute('src');
                    $img->setAttribute('src', $image_name);
                }
                $idcontent = $dom->saveHtml();
        
                $dom = new\DomDocument();
                $dom->loadHtml($encontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                $images = $dom->getElementsByTagName('img');
                foreach($images as $k => $img){
                    $isi = $img->getAttribute('src');
                    list($type, $data) = explode(';', $isi);
                    list(, $isi) = explode(',', $isi);
                    $isi = base64_decode($isi);
                    $image_name = "/database/general_content/" . time().$k.'.png';
                    $path = public_path() . $image_name;
                    file_put_contents($path, $isi);
                    $img->removeAttribute('src');
                    $img->setAttribute('src', $image_name);
                }
                $encontent = $dom->saveHtml();
        
                $data = [
                    'id' => [
                        'title'     => $request->input('id_title'),
                        'content' => $idcontent
                    ],
                    'en' => [
                        'title'     => $request->input('en_title'),
                        'content' => $encontent
                    ],
                    'category_id' => $request->input('category_id'),
                    'reporter_id' => $request->input('reporter_id'),
                    'source' => $request->input('source'),
                    'category_child_id' => $request->input('category_child_id'),
                    'bppp_post_year' => $request->input('bppp_year'),
                    'created_by' => auth()->user()->id,
                    'site_id' => auth()->user()->site_id,
                    'status_id' => '928ebe55-2520-491e-86e4-7498df664a32',
                    'published_date' => $request->input('published_date'),
                    'keywords' => $request->input('keywords'),
                    'description' => $request->input('description'),
                    'type_id' => '1',
                    'oiml_ref' => $request->input('oiml_ref'),
                    'reg_dagri_year' => $request->input('reg_dagri_year'),
                    'publish_year' => $request->input('publish_year')
                ];
        
                $posts = Post::create($data);
                $log = 'Artikel '.($posts->title).' Berhasil Disimpan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Artikel '.($posts->title).' Berhasil Disimpan',
                    'alert-type' => 'success'
                );

                return redirect()->route('post.index')->with($notification);
            } 
        }
    }

    public function postEdit($id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();
        $categories = ArticleCategory::where('site_id',auth()->user()->site_id)->pluck('category_name','id')->toArray();
        $reporter = User::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();

        return view('backend.edit.content',compact('data','categories','reporter'));
    }

    public function postUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'id_title' => 'required',
            'en_title' => 'required',
            'category_id' => 'required',
            'reporter_id' => 'required',
        ]);

        if($request->hasFile('lampiran')) {
            $file = $request->file('lampiran');
            $random_name = str_random(8);
            $destinationPath = 'database/general_content/lampiran/';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'lampiran.'.$extension;
            $uploadSuccess = $request->file('lampiran')->move($destinationPath, $filename);
            if($request->input('published_date') == null) {
                if(($request->input('id_content') && $request->input('en_content')) == null) {
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'file' => $filename,
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                        
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );
    
                    return redirect()->route('post.index')->with($notification);
                } else {
                    $idcontent = $request->input('id_content');
                    $encontent = $request->input('en_content');
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($idcontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $idcontent = $dom->saveHtml();
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($encontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $encontent = $dom->saveHtml();
            
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                            'content'   => $idcontent,
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                            'content'   => $encontent,
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'file' => $path,
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );
    
                    return redirect()->route('post.index')->with($notification);
                }
            } else {
                if(($request->input('id_content') && $request->input('en_content')) == null) {
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'file' => $path,
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'published_date' => $request->input('published_date'),
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );
    
                    return redirect()->route('post.index')->with($notification);
                } else {
                    $idcontent = $request->input('id_content');
                    $encontent = $request->input('en_content');
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($idcontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $idcontent = $dom->saveHtml();
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($encontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $encontent = $dom->saveHtml();
            
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                            'content'   => $idcontent,
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                            'content'   => $encontent,
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'file' => $path,
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'published_date' => $request->input('published_date'),
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );
    
                    return redirect()->route('post.index')->with($notification);
                }
            }
            
        } else {
            if($request->input('published_date') == null) {
                if(($request->input('id_content') && $request->input('en_content')) == null) {
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );

                    return redirect()->route('post.index')->with($notification);
                } else {
                    $idcontent = $request->input('id_content');
                    $encontent = $request->input('en_content');
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($idcontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $idcontent = $dom->saveHtml();
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($encontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $encontent = $dom->saveHtml();
            
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                            'content'   => $idcontent,
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                            'content'   => $encontent,
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );

                    return redirect()->route('post.index')->with($notification);
                }
            } else {
                if(($request->input('id_content') && $request->input('en_content')) == null) {
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'published_date' => $request->input('published_date'),
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );

                    return redirect()->route('post.index')->with($notification);
                } else {
                    $idcontent = $request->input('id_content');
                    $encontent = $request->input('en_content');
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($idcontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $idcontent = $dom->saveHtml();
            
                    $dom = new\DomDocument();
                    $dom->loadHtml($encontent, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
                    $images = $dom->getElementsByTagName('img');
                    foreach($images as $k => $img){
                        $isi = $img->getAttribute('src');
                        list($type, $data) = explode(';', $isi);
                        list(, $isi) = explode(',', $isi);
                        $isi = base64_decode($isi);
                        $image_name = "/database/general_content/" . time().$k.'.png';
                        $path = public_path() . $image_name;
                        file_put_contents($path, $isi);
                        $img->removeAttribute('src');
                        $img->setAttribute('src', $image_name);
                    }
                    $encontent = $dom->saveHtml();
            
                    $data = [
                        'id' => [
                            'title'     => $request->input('id_title'),
                            'content'   => $idcontent,
                        ],
                        'en' => [
                            'title'     => $request->input('en_title'),
                            'content'   => $encontent,
                        ],
                        'category_id' => $request->input('category_id'),
                        'reporter_id' => $request->input('reporter_id'),
                        'source' => $request->input('source'),
                        'category_child_id' => $request->input('category_child_id'),
                        'bppp_post_year' => $request->input('bppp_year'),
                        'oiml_ref' => $request->input('oiml_ref'),
                        'reg_dagri_year' => $request->input('reg_dagri_year'),
                        'updated_by' => auth()->user()->id,
                        'site_id' => auth()->user()->site_id,
                        'status_id' => '7ed618b5-8e61-4483-91c7-0fa191a3a55a',
                        'published_date' => $request->input('published_date'),
                        'keywords' => $request->input('keywords'),
                        'description' => $request->input('description'),
                        'publish_year' => $request->input('publish_year')
                    ];
                    
                    $changes = Post::withTranslation()->where('posts.id',$id)->first();
                    $changes->update($data);
                    $log = 'Artikel '.($changes->title).' Berhasil diubah';
                    \LogActivity::addToLog($log);
                    $notification = array (
                        'message' => 'Artikel '.($changes->title).' Berhasil diubah',
                        'alert-type' => 'success'
                    );

                    return redirect()->route('post.index')->with($notification);
                }
            }
        }
    }

    public function postReview($id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();

        return view('backend.preview.post',compact('data'));
    }

    public function postPublish(Request $request,$id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();
        $data->update([
            'status_id'=> '2872ac69-2f76-438b-8b83-31c52787027d'
        ]);

        $log = 'Artikel '.($data->title).' berhasil dipublish';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Artikel '.($data->title).' berhasil dipublish',
            'alert-type' => 'success'
        );

        return redirect()->route('post.index')->with($notification);
    }

    public function postArchive(Request $request,$id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();
        $data->update([
            'status_id'=> '286ba307-7ea9-400b-8046-028238f03e86'
        ]);

        $log = 'Artikel '.($data->title).' berhasil dipublish';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Artikel '.($data->title).' berhasil dipublish',
            'alert-type' => 'success'
        );

        return redirect()->route('post.index')->with($notification);
    }

    public function postDestroy($id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();
        $log = 'Artikel '.($data->title).' berhasil dihapus';
        
        \File::delete(public_path('database/general_content/lampiran/' . $data->file));
        $data->delete();

        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Artikel '.($data->title).' berhasil dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('post.index')->with($notification);
    }

    public function postSearchForm()
    {
        $categories = ArticleCategory::where('site_id',auth()->user()->site_id)->pluck('category_name','id')->toArray();
        $user = User::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();

        return view('backend.input.postSearch',compact('categories','user'));
    }

    public function postQuery(Request $request)
    {
        $dates = $request->input('date_range');
        $dateRange = explode('-',$dates);
        $startDate = Carbon::parse($dateRange[0]);
        $endDate = Carbon::parse($dateRange[1]);
        $difference = $endDate->diff($startDate);
        $date_diff = $difference->format('%a');

        $data = Post::withTranslation()->where('category_id',$request->input('category_id'))
                                        ->orWhere('published_date','>=',$startDate)
                                        ->orWhere('published_date','<=',$endDate)
                                        ->orWhere('reporter_id',$request->input('reporter_id'))
                                        ->get();
        
        return view('backend.pages.postResult',compact('data'));
    }

    public function officialIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Official::withTranslation()->orderBy('name','ASC')->get();

            return view('backend.pages.official',compact('data'));
        } else {
            $data = Official::withTranslation()->where('site_id',auth()->user()->site_id)->orderBy('name','ASC')->get();

            return view('backend.pages.official',compact('data'));
        }
    }

    public function officialCreate()
    {
        $unit = Unit::where('site_id',auth()->user()->site_id)->pluck('unit_name','id')->toArray();

        return view('backend.input.official',compact('unit'));
    }

    public function officialStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'id_title' => 'required',
            'en_title' => 'required',
            'unit_id' => 'required',
            'address' => 'required',
            'userpic' => 'required|image|mimes:jpg,JPEG,png,PNG',
        ]);

        $file = $request->file('userpic');
	    $random_name = str_random(8);
	    $destinationPath = 'pejabat/';
	    $extension = $file->getClientOriginalExtension();
	    $filename=$random_name.'.'.$extension;
	    $uploadSuccess = $request->file('userpic')->move($destinationPath, $filename);

        $input = [
            'en' => [
    			'title' => $request->input('en_title')
    		],
    		'id' => [
    			'title' => $request->input('id_title')
    		],
    		'name' => $request->input('name'),
            'unit_id' => $request->input('unit_id'),
            'site_id' => auth()->user()->site_id,
            'address' => $request->input('address'),
            'userpic' => $filename,
            'created_by' => auth()->user()->id,
        ];

        $data = Official::create($input);

        $log = 'Pejabat '.($data->name).' Berhasil Disimpan';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pejabat '.($data->name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('official.index')->with($notification);
    }

    public function officialEdit($id)
    {
        $data = Official::withTranslation()->where('officials.id',$id)->first();
        $unit = Unit::where('site_id',auth()->user()->site_id)->pluck('unit_name','id')->toArray();

        return view('backend.edit.official',compact('data','unit'));
    }

    public function officialUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required',
            'id_title' => 'required',
            'en_title' => 'required',
            'unit_id' => 'required',
            'address' => 'required',
        ]);

        if($request->hasFile('userpic')) {
            $file = $request->file('userpic');
            $random_name = str_random(8);
            $destinationPath = 'pejabat/';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'.'.$extension;
            $uploadSuccess = $request->file('userpic')->move($destinationPath, $filename);

            $input = [
                'en' => [
                    'title' => $request->input('en_title')
                ],
                'id' => [
                    'title' => $request->input('id_title')
                ],
                'name' => $request->input('name'),
                'unit_id' => $request->input('unit_id'),
                'site_id' => auth()->user()->site_id,
                'address' => $request->input('address'),
                'userpic' => $filename,
                'updated_by' => auth()->user()->id,
            ];

            $data = Official::withTranslation()->where('officials.id',$id)->first();
            $data->update($input);
            $log = 'Pejabat '.($data->name).' Berhasil Diubah';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Pejabat '.($data->name).' Berhasil Diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('official.index')->with($notification); 
        } else {
            $input = [
                'en' => [
                    'title' => $request->input('en_title')
                ],
                'id' => [
                    'title' => $request->input('id_title')
                ],
                'name' => $request->input('name'),
                'unit_id' => $request->input('unit_id'),
                'site_id' => auth()->user()->site_id,
                'address' => $request->input('address'),
                'updated_by' => auth()->user()->id,
            ];

            $data = Official::withTranslation()->where('officials.id',$id)->first();
            $data->update($input);
            $log = 'Pejabat '.($data->name).' Berhasil Diubah';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Pejabat '.($data->name).' Berhasil Diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('official.index')->with($notification);
        }
    }

    public function officialDestroy($id)
    {
        $data = Official::withTranslation()->where('officials.id',$id)->first();
        $log = 'Pejabat '.($data->name).' Berhasil Dihapus';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pejabat '.($data->name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $file = File::delete($data->userpic);
        $data->delete();

        return redirect()->route('official.index')->with($notification);
    }

    public function messageIndex()
    {
        $data = ContactUs::where('site_id',auth()->user()->site_id)
                         ->where('status_id','9b984ef2-6524-4146-b1c7-b6eac9ad8a98')
                         ->get();
        
        return view('backend.pages.kontakKami',compact('data'));
    }

    public function regionalOffice()
    {
        $data = RegionalTradeOffice::orderBy('city_id','ASC')->get();

        return view('backend.pages.regionalOffice',compact('data'));
    }

    public function regionalOfficeCreate()
    {
        $official = Official::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();
        $cities = City::pluck('city_name','id')->toArray();

        return view('backend.input.regionalOffice',compact('official','cities'));
    }

    public function regionalOfficeStore(Request $request)
    {
        $request->validate([
            'city_id' => 'required',
            'address' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'official1' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
        ]);

        $input = $request->all();
        $office = RegionalTradeOffice::create($input);
        $log = 'Kantor Perwakilan '.($office->Cities->city_name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kantor Perwakilan '.($office->Cities->city_name).' Berhasil Disimpan',
            'alert-type' => 'success'
        ); 
        
        return redirect()->route('regionalOffice.index')->with($notification);
    }

    public function regionalOfficeEdit($id)
    {
        $data = RegionalTradeOffice::find($id);
        $official = Official::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();
        $cities = City::pluck('city_name','id')->toArray();

        return view('backend.edit.regionalOffice',compact('data','official','cities'));
    }

    public function regionalOfficeUpdate(Request $request,$id)
    {
        $request->validate([
            'city_id' => 'required',
            'address' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'official1' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
        ]);


        $input = $request->all();
        
        $location = RegionalTradeOffice::find($id);
        $location->update($input);
        $log = 'Kantor Perwakilan '.($location->Cities->city_name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kantor Perwakilan '.($location->Cities->city_name).' Berhasil Diubah',
            'alert-type' => 'success'
        );
        
        return redirect()->route('regionalOffice.index')->with($notification);
    }

    public function regionalOfficeDelete($id)
    {
        $data = RegionalTradeOffice::find($id);
        $log = 'Kantor Perwakilan '.($data->Cities->city_name).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kantor Perwakilan '.($data->Cities->city_name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        $delete = $data->delete();
        
        return redirect()->route('regionalOffice.index')->with($notification);
    }

    public function definaIndex()
    {
        $data = Defina::orderBy('country_id','ASC')->get();
        $countries = Country::pluck('country_name','id')->toArray();

        return view('backend.pages.defina',compact('data','countries'));
    }

    public function definaStore()
    {
        $request->validate([
            'country_id' => 'required',
            'hs_code' => 'required',
            'uraian' => 'required',
            'tarif' => 'required',
        ]);

        $input = $request->all();
        
        $data = Defina::create($input);
        $log = 'Data Defina '.($data->hs_code).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Data Defina '.($data->hs_code).' Berhasil Disimpan',
            'alert-type' => 'success'
        );
        
        return redirect()->route('defina.index')->with($notification);
    }

    public function definaEdit($id)
    {
        $data = Defina::find($id);
        $countries = Country::pluck('country_name','id')->toArray();

        return view('backend.edit.defina',compact('data','countries'));
    }

    public function definaUpdate(Request $request,$id)
    {
        $request->validate([
            'country_id' => 'required',
            'hs_code' => 'required',
            'uraian' => 'required',
            'tarif' => 'required',
        ]);

        $input = $request->all();
        
        $data = Defina::find($id);
        $data->update($input);
        $log = 'Data Defina '.($data->hs_code).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Data Defina '.($data->hs_code).' Berhasil Diubah',
            'alert-type' => 'success'
        );
        
        return redirect()->route('defina.index')->with($notification);
    }

    public function definaDelete($id)
    {
        $data = Defina::find($id);
        $log = 'Data Defina '.($data->hs_code).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Data Defina '.($data->hs_code).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        $delete = $data->delete();
        
        return redirect()->route('defina.index')->with($notification);
    }

    
}
