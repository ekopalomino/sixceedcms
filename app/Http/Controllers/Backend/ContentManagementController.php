<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Alaouy\Youtube\Facades\Youtube;
use Sixceed\Models\Video;
use Sixceed\Models\Album; 
use Sixceed\Models\Image;
use Sixceed\Models\FrontBanner;
use Sixceed\Models\Publication; 
use File;

class ContentManagementController extends Controller
{
    public function videoIndex(Request $request)
    {
    	$data = Video::orderBy('title', 'ASC')
                            ->get();
      
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
            'title' => $data->snippet->title,
            'description' => $request->input('description'),
            'thumbnail' => $data->snippet->thumbnails->standard->url,
            'thumbnail_small' => $data->snippet->thumbnails->high->url,
            'player' => $data->player->embedHtml,
            'created_by' => auth()->user()->id,
            'updated_by' => auth()->user()->id
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
            'created_by' => auth()->user()->id,
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
        $data = FrontBanner::orderBy('updated_at','DESC')->get();

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
            'type' => $request->input('type'),
            'position' => $request->input('position'),
            'image' => $filename,
            'link'	=> $request->input('link'),
            'ukuran' => $size,
            'ekstensi' => $ext,
            'description' => $request->input('description'),
            'created_by' => auth()->user()->id,
            'updated_by' => auth()->user()->id,
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
        $data = Publication::orderBy('updated_at','DESC')->get();

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

    	$input = [
            'cover_image' => $request->input('cover'),
            'link' => $request->input('link')
        ];
 
        if ($request->hasFile('cover')) {
            $file = $request->file('cover'); 
            $random_name = str_random(8);
            $destinationPath = 'public/publikasi';
            $extension = $file->getClientOriginalExtension();
            $filename=$random_name.'.'.$extension;
            $uploadSuccess = $request->file('cover')->move($destinationPath, $filename);

            $input = [
                'cover_image' => $filename,
                'link' => $request->input('link')
            ];
        } else {
            $input = [
                'link' => $request->input('link')
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
        FrontBanner::find($id)->delete();
        
        return redirect()->route('fnban.index')->with($notification);
    }
}
