<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\Oiml;
use Sixceed\Models\RegulasiDagri;
use Sixceed\Models\MainDuty;
use Sixceed\Models\Post;
use File;
use Carbon\Carbon;

class CustomContentController extends Controller
{
    /*Controller For Main Site Custom Content*/
    

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
