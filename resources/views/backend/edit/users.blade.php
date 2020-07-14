@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($user, ['method' => 'POST','route' => ['user.update', $user->id]]) !!}
			@csrf
			<label for="name" class="col-sm-12 col-form-label">Name</label>
                <div class="col-sm-12">
                    {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                </div>
            <label for="password" class="col-sm-12 col-form-label">Reset Password</label>
                <div class="col-sm-12">
                    {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
                </div>
            <label for="confirm-password" class="col-sm-12 col-form-label">Confirm Reset Password</label>
                <div class="col-sm-12">
                    {!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
                </div>
            <label for="email" class="col-sm-12 col-form-label">Email</label>
                <div class="col-sm-12">
                    {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
                </div>
            <label for="email" class="col-sm-12 col-form-label">Access Role</label>
                <div class="col-sm-12">
                    {!! Form::select('roles[]', $roles,$userRole, array('class' => 'form-control')) !!}
                </div>
            <label for="email" class="col-sm-12 col-form-label">Site Access</label>
                <div class="col-sm-12">
                    {!! Form::select('sites', $sites,old('site_id'), array('class' => 'form-control')) !!}
                </div>
            <div class="modal-footer">
                <button type="close" class="btn btn-default" data-dismiss="modal">Close</button>
                <button id="register" type="submit" class="btn btn-primary">Save changes</button>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</section>
@endsection
