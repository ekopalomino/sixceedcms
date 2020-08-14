<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\User;
use Sixceed\Models\Site;
use Sixceed\Models\Status;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use DB;
use Auth;
use Hash;

class UserManagementController extends Controller
{
    public function userIndex()
    {
        if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            $roles = Role::pluck('name','name')->all();
            $sites = Site::pluck('site_name','id')->toArray();
            $data = User::where('status_id','f13c7f2e-4723-47a7-b75c-fbec0aaca411')->get();

            return view('backend.pages.users',compact('data','roles','sites'));
        } else {
            $roles = Role::pluck('name','name')->all();
            $sites = Site::pluck('site_name','id')->toArray();
            $data = User::where('site_id',auth()->user()->site_id)->get();

            return view('backend.pages.users',compact('data','roles','sites'));
        }
        
    }

    public function userStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles' => 'required',
            'site_id' => 'required',
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
        return redirect()->route('user.index')
                        ->with($notification);
    }

    public function userEdit($id)
    {
        $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRole = $user->roles->pluck('name','name')->all();
        $status = Status::pluck('status_name','id')->toArray();
        $sites = Site::pluck('site_name','id')->toArray();
       
        return view('backend.edit.users',compact('user','roles','userRole','status','sites'))->renderSections()['content'];
    }

    public function userUpdate(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'same:confirm-password',
            'roles' => 'required',
            'site_id' => 'required',
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
        return redirect()->route('user.index')
                        ->with($notification);
    }

    public function userMenu()
    {
        return view('backend.pages.userMenu'); 
    }

    public function updateAvatar(Request $request){

        $request->validate([
            'avatar' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg',
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
        return back()->with($notification);

    }

    public function updatePassword(Request $request)
    {
        $request->validate([
            'password' => 'required|same:confirm-password',
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
        return back()->with($notification);
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
        return redirect()->route('user.index')
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

    public function roleStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:roles,name',
            'permission' => 'required',
        ]);

        $role = Role::create(['name' => $request->input('name')]);
        $role->syncPermissions($request->input('permission'));
        $log = 'Access Role '.($role->name).' Created';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Access Role '.($role->name).' Created',
            'alert-type' => 'success'
        ); 

        return redirect()->route('roles.index')
                        ->with($notification);
    }

    public function roleEdit($id)
    {
        $data = Role::find($id);
        $permission = Permission::get();
        $roles = Role::join('role_has_permissions','role_has_permissions.role_id','=','roles.id')
                       ->where('roles.id',$id)
                       ->get();
        $rolePermissions = DB::table("role_has_permissions")->where("role_has_permissions.role_id",$id)
            /*->pluck('role_has_permissions.permission_id','role_has_permissions.permission_id')*/
            ->get();
        
        return view('backend.edit.roles',compact('data','rolePermissions','roles'));
    }

    public function roleUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required',
            'permission' => 'required',
        ]);


        $role = Role::find($id);
        $role->name = $request->input('name');
        $role->save();


        $role->syncPermissions($request->input('permission'));
        $log = 'Access Role '.($role->name).' Updated';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Access Role '.($role->name).' Updated',
            'alert-type' => 'success'
        ); 

        return redirect()->route('roles.index')
                        ->with($notification);
    }

    public function roleDestroy($id)
    {
        DB::table("roles")->where('id',$id)->delete();
        $log = 'Access Role '.($role->name).' Deleted';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Access Role '.($role->name).' Deleted',
            'alert-type' => 'success'
        ); 
        return redirect()->route('roles.index')
                        ->with($notification);
    }

    public function logActivities()
    {
        $logs = \LogActivity::logActivityLists();
        return view('backend.pages.logActivities',compact('logs'));
    }
}
