@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Buat Kantor Perwakilan Dagang Regional
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/daterangepicker/daterangepicker.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>Buat Data Kantor Perwakilan Dagang Regional</h1>
			</div>
		</div>
	</div>
</section>
<section class="content">
	<div class="row">
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
		<div class="col-12">
			<div class="card card-danger card-outline">
				<div class="card-body">
					{!! Form::open(array('route' => 'regionalOffice.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
					@csrf
					<div class="row">
						<div class="col-4">
							<label for="employeeID">Kota</label>
							<div class="input-group">
								{!! Form::select('city_id', [null=>'Please Select'] + $cities,[], array('class' => 'form-control','id'=>'category_id')) !!}
							</div>
						</div>
						<div class="col-4">
							<label for="employeeID">Latitude</label>
							<div class="input-group">
								{!! Form::text('latitude', null, array('placeholder' => 'Latitude Peta','class' => 'form-control')) !!}
							</div>
						</div>
						<div class="col-4">
							<label for="employeeID">Longitude</label>
							<div class="input-group">
								{!! Form::text('longitude', null, array('placeholder' => 'Longitude Peta','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-6">
							<label for="employeeID">Pejabat Satu</label>
							<div class="input-group">
								{!! Form::select('official_one', [null=>'Please Select'] + $official,[], array('class' => 'form-control','id'=>'category_id')) !!}
							</div>
						</div>
						<div class="col-6">
							<label for="employeeID">Pejabat Dua</label>
							<div class="input-group">
								{!! Form::select('official_two', [null=>'Please Select'] + $official,[], array('class' => 'form-control','id'=>'category_id')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-12">
							<label for="employeeID">Alamat</label>
							<div class="input-group">
								{!! Form::textarea('address', null, array('placeholder' => 'Judul','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-4">
							<label for="employeeID">Website</label>
							<div class="input-group">
								{!! Form::text('website', null, array('placeholder' => 'Website','class' => 'form-control')) !!}
							</div>
						</div>
						<div class="col-4">
							<label for="employeeID">Email</label>
							<div class="input-group">
								{!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
							</div>
						</div>
						<div class="col-4">
							<label for="employeeID">Phone</label>
							<div class="input-group">
								{!! Form::text('phone', null, array('placeholder' => 'Telepon','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-3">
							<button type="submit" class="btn btn-sm btn-primary">Save</button>
							<a button type="button" class="btn btn-sm btn-danger" href="{{ route('regionalOffice.index') }}">Cancel</a>
						</div>
					</div>
					{!! Form::close() !!}
				</div>
			</div>
		</div>
	</div>
</section>
@endsection
@section('footer.scripts')
<script src="{{ asset('bower_components/admin-lte/plugins/datatables/jquery.dataTables.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/js/dataTables.bootstrap4.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/moment/moment.min.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/daterangepicker/daterangepicker.js') }}"></script>
<script>
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
    $('#reservation').daterangepicker()
  });
</script>
@endsection