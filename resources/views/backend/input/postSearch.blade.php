@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Cari Artikel
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
				<h1>Pencarian Artikel</h1>
			</div>
		</div>
	</div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-danger card-outline">
				<div class="card-body">
					{!! Form::open(array('route' => 'postQuery.index','method'=>'POST')) !!}
					@csrf
					<div class="row">
						<div class="col-3">
							<label for="employeeID">Kategori Artikel</label>
							<div class="input-group">
								{!! Form::select('category_id', [null=>'Please Select'] + $categories,[], array('class' => 'form-control')) !!}
							</div>
						</div>
						<div class="col-3">
							<label for="employeeID">Tanggal Publish</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">
										<i class="far fa-calendar-alt"></i>
									</span>
								</div>
								<input type="text" name="date_range" class="form-control float-right" id="reservation">
							</div>
						</div>
						<div class="col-3">
							<label for="employeeID">Jenis Artikel</label>
							<div class="input-group">
								<select name="tax_reference" class="form-control">
	                          		<option value="0">Please Select</option>
							        <option value="write">Artikel Tulisan</option>
							        <option value="upload">Artikel Unggahan</option>
						    	</select>
							</div>
						</div>
						<div class="col-3">
							<label for="employeeID">Nama Reporter</label>
							<div class="input-group">
								{!! Form::select('reporter_id', [null=>'Please Select'] + $user,[], array('class' => 'form-control')) !!}
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-3">
							<button type="submit" class="btn btn-sm btn-primary">Search</button>
							<a button type="button" class="btn btn-sm btn-danger" href="{{ route('postSearch.index') }}">Cancel</a>
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