@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | User Database
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Data Pengguna</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">
				<div class="card-header">
					<button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modal-lg">
						Tambah
					</button>
					<div class="modal fade" id="modal-lg">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">Pengguna Baru</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									{!! Form::open(array('route' => 'user.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
									@csrf
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Name</label>
										<div class="col-sm-10">
											{!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Password</label>
										<div class="col-sm-10">
											{!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Confirm Password</label>
										<div class="col-sm-10">
											{!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
										<div class="col-sm-10">
											{!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Access Role</label>
										<div class="col-sm-10">
											{!! Form::select('roles[]', [null=>'Please Select'] + $roles,[], array('class' => 'form-control')) !!}
										</div>
									</div>
									@if((auth()->user()->site_id) == '48887f82-bea4-47b3-a9de-4c27fdc6b85a')
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Site Access</label>
										<div class="col-sm-10">
											{!! Form::select('site_id', [null=>'Please Select'] + $sites,[], array('class' => 'form-control')) !!}
										</div>
									</div>
									@else
									{!! Form::hidden('site_id', auth()->user()->site_id, array('class' => 'form-control','readonly')) !!}
									@endif
									{!! Form::hidden('status_id', '5d90784e-ecac-4baa-b7fc-b5a4f13c9a50', array('class' => 'form-control','readonly')) !!}
								</div>
				            	<div class="modal-footer ">
				              		<button type="close" class="btn btn-default" data-dismiss="modal">Close</button>
				              		<button id="register" type="submit" class="btn btn-primary">Save changes</button>
				            	</div>
				          	</div>
							{!! Form::close() !!}
				        </div>
				    </div>
				</div>
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
					<table id="example1" class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>No</th>
								<th>Username</th>
								<th>Email</th>
								<th>Hak Akses</th>
								<th>Akses Situs</th>
								<th>Status</th>
								<th>Login Terakhir</th>
								<th>Login Dari</th>
								<th>Dibuat Pada</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@foreach($data as $key=>$user)
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $user->name }}</td>
            					<td>{{ $user->email }}</td>
								<td>
									@if(!empty($user->getRoleNames()))
										@foreach($user->getRoleNames() as $v)
										<span class="badge badge-danger">{{ $v }}</span>
										@endforeach
									@endif 
								</td>
								<td>
								@if(!empty($user->site_id)) 
								{{ $user->Sites->site_name }}
								@endif
								</td>
            					<td>
									@if(($user->status_id) == '5d90784e-ecac-4baa-b7fc-b5a4f13c9a50' )
										<span class="badge badge-info">{{ $user->status->status_name }}</span>
									@else
										<span class="badge badge-danger">{{ $user->status->status_name }}</span>
									@endif
								</td>
								<td>
									@if(!empty($user->last_login_at)) 
										{{date("d F Y H:i",strtotime($user->last_login_at)) }}
									@endif
								</td>
								<td>
									@if(!empty($user->last_login_from)) 
										{{ $user->last_login_from }}
									@endif
								</td>
								<td>{{date("d F Y H:i",strtotime($user->created_at)) }}</td>
								<td>
									<a class="btn btn-xs btn-info modalLg" href="#" value="{{ action('Backend\UserManagementController@userEdit',['id'=>$user->id]) }}" data-toggle="modal" data-target="#modalLg" title="Edit Pengguna"><i class="fa fa-edit"></i></a>
									{!! Form::open(['method' => 'POST','route' => ['user.destroy', $user->id],'style'=>'display:inline','onsubmit' => 'return ConfirmSuspend()']) !!}
									{!! Form::button('<i class="fas fa-user-slash"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger']) !!}
									{!! Form::close() !!}
								</td>
            				</tr>
							@endforeach
            			</tbody>
            		</table>
            	</div>
            </div>
        </div>
    </div>
</section>
@endsection
@section('footer.scripts')
<script src="{{ asset('bower_components/admin-lte/plugins/datatables/jquery.dataTables.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/js/dataTables.bootstrap4.js') }}"></script><script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>
<script>
    function ConfirmSuspend()
    {
    var x = confirm("User Akan Di Suspend?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection