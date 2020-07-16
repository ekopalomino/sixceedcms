<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\Video;

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
        return redirect()->route('beritavideo.index')
                            ->with($notification);
    }

    public function videoShow($id)
    {
        $videos = Video::find($id);
        
        return view('backend.show.videos',compact('videos'))->renderSections()['content'];
    }

    public function videoEdit($id)
    {
        $videos = Video::find($id);
        return view('backend.edit.video',compact('videos'))->renderSections()['content'];
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
        
        return redirect()->route('beritavideo.index')
                            ->with($notification);
    }

    public function videoDestroy($id)
    {
        $input = ['active' => '01386b22-8b0e-4aec-8ad2-cf87792f8315'];
        $videos = Video::find($id);
        $videos->update($input);
        $data = 'Video '.($videos->title).' berhasil dihapus';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'Video '.($videos->title).' berhasil dihapus',
            'alert-type' => 'success'
        );
        return redirect()->route('beritavideo.index')
                            ->with($notification);
    }
}
