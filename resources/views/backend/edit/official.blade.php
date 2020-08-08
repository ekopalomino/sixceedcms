@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit Pejabat
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
				<h1>Edit Data Pejabat</h1>
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
					{!! Form::model($data, ['method' => 'POST','route' => ['official.update', $data->id],'files'=>'true']) !!}
					@csrf
					<div class="row">
						<div class="col-3">
							<label for="employeeID">Nama Pejabat</label>
							<div class="input-group">
								{!! Form::text('name', null, array('placeholder' => 'Judul','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-3">
							<label for="employeeID">Jabatan (Indonesia)</label>
							<div class="input-group">
								{!! Form::text('id_title', old('title',$data->title), array('placeholder' => 'Judul','class' => 'form-control')) !!}
							</div>
						</div>
						<div class="col-3">
							<label for="employeeID">Jabatan (Inggris)</label>
							<div class="input-group">
								{!! Form::text('en_title', old('title',$data->translations[0]->title), array('placeholder' => 'Judul','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-3">
							<label for="employeeID">Divisi / Unit Kerja</label>
							<div class="input-group">
								{!! Form::select('unit_id', $unit,[], array('class' => 'form-control')) !!}
							</div>
						</div>
						<div class="col-3">
							<label for="employeeID">Foto</label>
							<div class="input-group">
								{!! Form::file('userpic', null, array('placeholder' => 'Image','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-6">
							<label for="employeeID">Alamat</label>
							<div class="input-group">
								{!! Form::textarea('address', null, array('placeholder' => 'Judul','class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-3">
							<button type="submit" class="btn btn-sm btn-primary">Save</button>
							<a button type="button" class="btn btn-sm btn-danger" href="{{ route('official.index') }}">Cancel</a>
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