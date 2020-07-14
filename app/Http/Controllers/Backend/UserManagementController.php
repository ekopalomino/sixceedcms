<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\User;
use Sixceed\Models\Site;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserManagementController extends Controller
{
    public function userIndex()
    {
        $roles = Role::pluck('name','name')->all();
        $sites = Site::pluck('site_name','id')->toArray();
        $data = User::where('status_id','f13c7f2e-4723-47a7-b75c-fbec0aaca411')->get();

        return view('backend.pages.users',compact('data','roles','sites'));
    }

    public function userStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles' => 'required',
        ]);


        $input = $request->all();
        $input['password'] = Hash::make($input['password']);

        
        $user = User::create($input);
        
        $user->assignRole($request->input('roles'));
        $data = 'User '.($user->name).' berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'User '.($user->name).' berhasil disimpan',
            'alert-type' => 'success'
        ); 
        return redirect()->route('users.index')
                        ->with($notification);
    }

    public function userEdit($id)
    {
        $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRole = $user->roles->pluck('name','name')->all();
        $bagian = Bagian::pluck('name','id')->toArray();
        $reporter = Reporter::pluck('name','id')->toArray();
        $status = Status::where('function','all')->pluck('name','id')->toArray();
       
        
        return view('backend.edit.users',compact('user','roles','userRole','bagian','reporter','status'))->renderSections()['content'];
    }

    public function userUpdate(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'same:confirm-password',
            'roles' => 'required',
            'bagian_id' => 'required',
            'reporter_id' => 'required'
        ]);


        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));    
        }

        $user = User::find($id);
        $user->update($input);
        DB::table('model_has_roles')->where('model_id',$id)->delete();
        
        $user->assignRole($request->input('roles'));

        $data = 'User '.($user->name).' berhasil diubah';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'User '.($user->name).' berhasil diubah',
            'alert-type' => 'success'
        );
        return redirect()->route('users.index')
                        ->with($notification);
    }

    public function updateAvatar(Request $request){

        $request->validate([
            'avatar' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg|dimensions:min_width=150,min_length=150',
        ]);

        $user = Auth::user();

        $avatarName = $user->id.'_avatar'.time().'.'.request()->avatar->getClientOriginalExtension();

        $request->avatar->storeAs('public/avatars',$avatarName);

        $user->avatar = $avatarName;
        $user->save(); 

        $data = 'User Picture '.($user->name).' berhasil disimpan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'User Picture '.($user->name).' berhasil disimpan',
            'alert-type' => 'success'
        );
        return back()
            ->with($notification);

    }

    public function updatePassword(Request $request)
    {
        $request->validate([
            'password' => 'same:confirm-password',
        ]);

        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));    
        }

        $user = Auth::user();
        $user->update($input);

        $data = 'User '.($user->name).' berhasil merubah password';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'User '.($user->name).' berhasil merubah password',
            'alert-type' => 'success'
        );
        return back()
            ->with($notification);
    }

    public function userDestroy($id)
    {
        $input = ['active' => '01386b22-8b0e-4aec-8ad2-cf87792f8315'];
        $user = User::find($id);
        $user->update($input);
        
        $data = 'User '.($user->name).' berhasil dinonaktifkan';
         \LogActivity::addToLog($data);
        $notification = array (
            'message' => 'User '.($user->name).' berhasil dinonaktifkan',
            'alert-type' => 'success'
        );
        return redirect()->route('users.index')
                        ->with($notification);
    }

    public function rolesIndex()
    {
        $data = Role::orderBy('id','ASC')->get();

        return view('backend.pages.roles',compact('data'));
    }

    public function roleCreate()
    {
        return view('backend.input.roles');
    }

    public function roleStore()
    {

    }

    public function roleEdit()
    {

    }

    public function roleUpdate()
    {

    }

    public function roleDestroy()
    {

    }
}
