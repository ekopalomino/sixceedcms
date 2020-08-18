@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | User Menu
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>User Menu</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-6">
			<div class="card card-info card-outline">
				<div class="card-header">
					<h3 class="card-title">Ubah Password</h3>
				</div>
				{!! Form::open(array('route' => 'myPassword.update','method'=>'POST', 'class' => 'form-horizontal')) !!}
				@csrf
				<div class="card-body">
					@if (count($errors) > 0) 
					<div class="alert alert-danger alert-dismissible">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<h5><i class="icon fas fa-ban"></i> Alert!</h5>
						<ul>
							@foreach ($errors->all() as $error)
							<li>{{ $error }}</li>
							@endforeach
						</ul>
					</div>
					@endif
					<div class="form-group row">
                    	<label for="password">Password Baru</label>
                    	{!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
                  	</div>
              		<div class="form-group row">
                    	<label for="confirm-password">Ulang Password Baru</label>
                    	{!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
                  	</div>
            	</div>
            	<div class="card-footer">
                	<button type="submit" class="btn btn-sm btn-success">Simpan</button>
                	<a button type="button" class="btn btn-sm btn-danger" href="{{ route('ppsdk.index') }}">Batal</a>
                </div>
            	{!! Form::close() !!}
            </div>
        </div>
        <div class="col-6">
			<div class="card card-info card-outline">
				<div class="card-header">
					<h3 class="card-title">Unggah Foto</h3>
				</div>
				{!! Form::open(array('route' => 'myAvatar.update','method'=>'POST', 'class' => 'form-horizontal', 'files'=>'true')) !!}
				@csrf
				<div class="card-body">
					@if (count($errors) > 0) 
					<div class="alert alert-danger alert-dismissible">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<h5><i class="icon fas fa-ban"></i> Alert!</h5>
						<ul>
							@foreach ($errors->all() as $error)
							<li>{{ $error }}</li>
							@endforeach
						</ul>
					</div>
					@endif
					<div class="form-group row">
                    	<label for="confirm-password">Unggah Foto Diri</label>
                    	<div class="col-sm-10">
                    		{!! Form::file('avatar', null, array('placeholder' => 'Image','class' => 'form-control')) !!}
                    	</div>
                  	</div>
            	</div>
            	<div class="card-footer">
                	<button type="submit" class="btn btn-sm btn-success">Simpan</button>
                	<a button type="button" class="btn btn-sm btn-danger" href="{{ route('ppsdk.index') }}">Batal</a>
                </div>
            	{!! Form::close() !!}
            </div>
        </div>
    </div>
</section>
@endsection