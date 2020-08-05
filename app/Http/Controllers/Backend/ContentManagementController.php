<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Alaouy\Youtube\Facades\Youtube;
use Sixceed\Models\User;
use Sixceed\Models\Video;
use Sixceed\Models\Album; 
use Sixceed\Models\Image;
use Sixceed\Models\FrontBanner;
use Sixceed\Models\Publication; 
use Sixceed\Models\AboutUs;
use Sixceed\Models\AboutUsTranslation;
use Sixceed\Models\DutyCategoryTranslation;
use Sixceed\Models\MainDuty;
use Sixceed\Models\Post;
use Sixceed\Models\ArticleCategory;
use Sixceed\Models\Faq;
use Sixceed\Models\FaqCategory;
use File;
use Carbon\Carbon;

class ContentManagementController extends Controller
{
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
        $album = Album::with('Photos')->find($id);
        return view('backend.show.album', compact('album'));
    }
    
    public function albumCreate()
    {
        return view('backend.form.albums');
    }

    public function albumStore(Request $request)
    {
        $this->validate($request, [
                'name' => 'required',
                'cover_image'=>'required|image|dimensions:min_width=848,min_length=429',
                'description' => 'required'
            ]);

        $file = $request->file('cover_image');
        $random_name = str_random(8);
        $destinationPath = 'albums/';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'_cover.'.$extension;
        $uploadSuccess = $request->file('cover_image')
        ->move($destinationPath, $filename);
        $album = Album::create(array(
        'name' => $request->name,
        'description' => $request->description,
        'cover_image' => $filename,
        ));
        $data = 'Album '.($album->name).' berhasil disimpan';
            \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Album '.($album->name).' berhasil disimpan',
                'alert-type' => 'success'
            );

        return redirect()->route('beritafoto')->with($notification);
    }

    public function albumDelete($id)
    {
        $album = Album::find($id);
        $file = $album->cover_image;
        $album->delete();
        \File::delete(public_path('albums/' . $file));
        $data = 'Album '.($album->name).' berhasil dihapus';
            \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Album '.($album->name).' berhasil dihapus',
                'alert-type' => 'success'
            );
        return redirect()->route('beritafoto')
                        ->with($notification);
    }

    public function imageCreate($id)
    {
        $album = Album::find($id);
        return view('backend.form.addimage', compact('album'));
    }

    public function imageStore(Request $request)
    {
        $this->validate($request, [
                'album_id' => 'required|numeric|exists:albums,id',
                'image'=>'required|image|dimensions:min_width=848,min_length=429',
                'description' => 'required'
            ]);
    
        $file = $request->file('image');
        $random_name = str_random(8);
        $destinationPath = 'albums/';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'_album_image.'.$extension;
        $uploadSuccess = $request->file('image')->move($destinationPath, $filename);
        $images = Image::create(array(
        'description' => $request->description,
        'image' => $filename,
        'album_id'=> $request->album_id
        ));
        $data = 'Gambar '.($images->image).' berhasil disimpan';
        \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Gambar '.($images->image).' berhasil disimpan',
                'alert-type' => 'success'
            );
        return redirect()->route('show_album',array('id'=>$request->album_id))
                        ->with($notification);
    }

    public function imageDelete($id)
    {
        $image = Image::find($id);
        $berkas = Image::where('id', $id)
                ->get('image');
        $file = File::delete($berkas);
        $image->delete();
        $data = 'Gambar '.($image->image).' berhasil dihapus';
        \LogActivity::addToLog($data);
            $notification = array (
                'message' => 'Gambar '.($image->image).' berhasil dihapus',
                'alert-type' => 'success'
            );
        return redirect()->route('show_album',array('id'=>$image->album_id))
                        ->with($notification);
    }

    public function frontBannerIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = FrontBanner::orderBy('updated_at','DESC')->get();
        } else {
            $data = FrontBanner::where('site_id',auth()->user()->site_id)->orderBy('updated_at','DESC')->get();
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
	    $file_name = $file->getClientOriginalName();
        $size = $file->getSize();
        $ext = $file->getClientOriginalExtension();
	    $destinationPath = 'public/banner';
	    $extension = $file->getClientOriginalExtension();
	    $filename=$file_name.'_banner.'.$extension;
	    $uploadSuccess = $request->file('image')
	    ->move($destinationPath, $filename);

        $input = [
            'title' => $request->input('title'),
            'site_id' => auth()->user()->site_id,
            'type' => $request->input('type'),
            'position' => $request->input('position'),
            'image' => $filename,
            'link'	=> $request->input('link'),
            'ukuran' => $size,
            'ekstensi' => $ext,
            'description' => $request->input('description'),
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
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();
            $size = $file->getSize();
            $ext = $file->getClientOriginalExtension();
            $destinationPath = 'public/banner';
            $extension = $file->getClientOriginalExtension();
            $filename=$file_name.'_banner.'.$extension;
            $uploadSuccess = $request->file('image')
            ->move($destinationPath, $filename);

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
        $images = File::delete(public_path('public/banner/' . $file));
        FrontBanner::find($id)->delete();
        
        return redirect()->route('fnban.index')->with($notification);
    }

    public function frontPubIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $data = Publication::orderBy('updated_at','DESC')->get();
        } else {
            $data = Publication::where('site_id',auth()->user()->site_id)->orderBy('updated_at','DESC')->get();
        }

        return view('backend.pages.publication',compact('data'));
    }

    public function frontPubStore(Request $request)
    {
        $request->validate([
            'cover' => 'required|image|dimensions:width=125,length=160',
            'link' => 'required',
        ]);

        $file = $request->file('cover'); 
        $random_name = str_random(8);
        $destinationPath = 'public/publikasi';
        $extension = $file->getClientOriginalExtension();
        $filename=$random_name.'.'.$extension;
        $uploadSuccess = $request->file('cover')->move($destinationPath, $filename);

        $input = [
            'cover_image' => $filename,
            'link' => $request->input('link'),
            'site_id' => auth()->user()->site_id,
            'created_by' => auth()->user()->id
        ];
        $storage = PublikasiPerdagangan::create($input);
        $log = 'Publikasi Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Publikasi Berhasil Disimpan',
            'alert-type' => 'success'
        );
        return redirect()->route('fnpub.index')->with($notification);
    }

    public function frontPubEdit($id)
    {
        $source = Publication::find($id);

        return view('backend.edit.publication',compact('source'))->renderSections()['content'];
    }

    public function frontPubUpdate(Request $request,$id)
    {
        $request->validate([
            'cover' => 'image|dimensions:max_width=125,max_length=180',
            'link' => 'required',
        ]);

    	if ($request->hasFile('cover')) {
            $file = $request->file('cover'); 
            $random_name = str_random(8);
            $destinationPath = 'public/publikasi';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'.'.$extension;
            $uploadSuccess = $request->file('cover')->move($destinationPath, $filename);

            $input = [
                'cover_image' => $filename,
                'link' => $request->input('link'),
                'updated_by' => auth()->user()->id
            ];
        } else {
            $input = [
                'link' => $request->input('link'),
                'updated_by' => auth()->user()->id
            ];
        }

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

    public function frontPubDestroy($id)
    {
        $data = Publication::find($id)->first();
        $file = $data->cover_image;
        $log = 'Publikasi Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Publikasi Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $images = File::delete(public_path('public/publikasi/' . $file));
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
            $image_name = "/public/aboutus" . time().$k.'.png';
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
            $image_name = "/public/aboutus" . time().$k.'.png';
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
            $image_name = "/public/aboutus" . time().$k.'.png';
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
            $image_name = "/public/aboutus" . time().$k.'.png';
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
            $image_name = "/public/faq" . time().$k.'.png';
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
            $image_name = "/public/faq" . time().$k.'.png';
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
            $image_name = "/public/faq" . time().$k.'.png';
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
            $image_name = "/public/faq" . time().$k.'.png';
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
        $data = Faq::dinf($id);
        $log = 'FAQ '.($data->pertanyaan).' Berhasil Dihapus';
        $data->delete();

        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'FAQ '.($faqs->pertanyaan).' Berhasil Dihapus',
            'alert-type' => 'success'
        );

        return redirect()->route('faq.index')->with($notification);


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
        $categories = ArticleCategory::where('site_id',auth()->user()->site_id)->pluck('category_name','id')->toArray();
        $reporter = User::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();
        
        return view('backend.input.write',compact('categories','reporter'));
    }

    public function uploadCreate()
    {
        $categories = ArticleCategory::where('site_id',auth()->user()->site_id)->pluck('category_name','id')->toArray();
        $reporter = User::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();
        
        return view('backend.input.upload',compact('categories','reporter'));
    }

    public function postStore(Request $request)
    {
        if($request->input('type') == 'write') {
            $this->validate($request, [
                'id_title' => 'required',
                'en_title' => 'required',
                'id_content' => 'required',
                'en_content' => 'required',
                'category_id' => 'required',
            ]);
    
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
                $image_name = "/upload" . time().$k.'.png';
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
                $image_name = "/upload" . time().$k.'.png';
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
                'type' => $request->input('type'),
                'category_id' => $request->input('category_id'),
                'reporter_id' => $request->input('reporter_id'),
                'source' => $request->input('source'),
                'created_by' => auth()->user()->id,
                'site_id' => auth()->user()->site_id,
                'status_id' => '3bc97e4a-5e86-4d7c-86d5-7ee450a247ee'
            ];
    
            $posts = Post::create($data);
            $log = 'Artikel '.($posts->title).' Berhasil Disimpan';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Artikel '.($posts->title).' Berhasil Disimpan',
                'alert-type' => 'success'
            );

            return redirect()->route('post.index')->with($notification);
            
        } else {
            $this->validate($request, [
                'id_title' => 'required',
                'en_title' => 'required',
                'id_content' => 'required',
                'en_content' => 'required',
                'file' => 'required|file|mimes:pdf,PDF',
                'category_id' => 'required',
                'reporter_id' => 'required'
            ]);
    
            $uploadedFile = $request->file('file');
            $path = $uploadedFile->store('public/files');
            $data = [
                'en' => [
                    'title' => $request->input('en_title'),
                    'content' => $request->input('en_content')
                ],
                'id' => [
                    'title' => $request->input('id_title'),
                    'content' => $request->input('id_content')
                ],
                'category_id' => $request->input('category_id'),
                'reporter_id' => $request->input('reporter_id'),
                'file' => $path,
                'created_by' => auth()->user()->id,
                'type' => $request->input('type'),
                'site_id' => auth()->user()->site_id,
                'status_id' => '3bc97e4a-5e86-4d7c-86d5-7ee450a247ee'
            ];
    
            $articleupload = Post::create($data);
            $log = 'Artikel '.($data->title).' berhasil disimpan';
             \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Artikel '.($data->title).' berhasil disimpan',
                'alert-type' => 'success'
            );

            return redirect()->route('post.index')->with($notification);
        }
        
    }

    public function postEdit($id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();
        $categories = ArticleCategory::where('site_id',auth()->user()->site_id)->pluck('category_name','id')->toArray();
        $reporter = User::where('site_id',auth()->user()->site_id)->pluck('name','id')->toArray();

        return view('backend.edit.post',compact('data','categories','reporter'));
    }

    public function postUpdate(Request $request,$id)
    {
        if($request->input('type') == 'write') {
            $this->validate($request, [
                'id_title' => 'required',
                'en_title' => 'required',
                'id_content' => 'required',
                'en_content' => 'required',
            ]);
    
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
                $image_name = "/upload" . time().$k.'.png';
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
                $image_name = "/upload" . time().$k.'.png';
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
                'type' => $request->input('type'),
                'category_id' => $request->input('category_id'),
                'reporter_id' => $request->input('reporter_id'),
                'source' => $request->input('source'),
                'updated_by' => auth()->user()->id,
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
            $this->validate($request, [
                'id_title' => 'required',
                'en_title' => 'required',
            ]);
    
            $uploadedFile = $request->file('file');
            $path = $uploadedFile->store('public/files');
            $data = [
                'en' => [
                    'title' => $request->input('en_title'),
                    'content' => $request->input('en_content')
                ],
                'id' => [
                    'title' => $request->input('id_title'),
                    'content' => $request->input('id_content')
                ],
                'category_id' => $request->input('category_id'),
                'reporter_id' => $request->input('reporter_id'),
                'file' => $path,
                'created_by' => auth()->user()->id,
                'type' => $request->input('type'),
                'site_id' => auth()->user()->site_id,
                'status_id' => '3bc97e4a-5e86-4d7c-86d5-7ee450a247ee'
            ];
            
            $changes = Post::withTranslation()->where('posts.id',$id)->first();
            $changes->update($data);
            $log = 'Artikel '.($changes->title).' berhasil diubah';
             \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Artikel '.($changes->title).' berhasil diubah',
                'alert-type' => 'success'
            );

            return redirect()->route('post.index')->with($notification);
        }
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

    public function postDestroy($id)
    {
        $data = Post::withTranslation()->where('posts.id',$id)->first();
        $log = 'Artikel '.($data->title).' berhasil dihapus';
        $data->delete();

        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Artikel '.($data->title).' berhasil dipublish',
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
                                        ->orWhere('published_at','>=',$startDate)
                                        ->orWhere('published_at','<=',$endDate)
                                        ->orWhere('reporter_id',$request->input('reporter_id'))
                                        ->get();
        
        return view('backend.pages.postResult',compact('data'));
    }
}
