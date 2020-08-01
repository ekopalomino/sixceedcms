@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Transparansi Kerja
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Data Transparansi Kerja</h1>
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
									<h4 class="modal-title">Tambah Data</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									{!! Form::open(array('route' => 'strat.store','method'=>'POST', 'class' => 'form-horizontal', 'files'=>'true')) !!}
									@csrf
									<div class="form-group row">
										<label for="inputIndo" class="col-sm-2 col-form-label">Judul</label>
										<div class="col-sm-10">
											{!! Form::text('id_title', null, array('placeholder' => 'Judul','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEnglish" class="col-sm-2 col-form-label">Title</label>
										<div class="col-sm-10">
											{!! Form::text('en_title', null, array('placeholder' => 'Title','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputFile" class="col-sm-2 col-form-label">Lampiran</label>
										<div class="col-sm-10">
											{!! Form::file('file', null, array('placeholder' => 'Lampiran','class' => 'form-control')) !!}
										</div>
									</div>
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
								<th>Judul</th>
								<th>Lampiran</th>
								<th>Tgl Input</th>
								<th>Tgl Ubah</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@foreach($data as $key=>$strat) 
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $strat->title }}</td>
								<td>{{ $strat->file }}</td>
								<td>{{date("d F Y H:i",strtotime($strat->created_at)) }}</td>
								<td>{{date("d F Y H:i",strtotime($strat->updated_at)) }}</td>
								<td>
									<a class="btn btn-xs btn-info modalLg" href="#" value="{{ action('Backend\ContentManagementController@stratEdit',['id'=>$strat->id]) }}" data-toggle="modal" data-target="#modalLg" title="Ubah Data"><i class="far fa-edit"></i></a>
									{!! Form::open(['method' => 'POST','route' => ['strat.destroy', $strat->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
									{!! Form::button('<i class="fas fa-trash-alt"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger']) !!}
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
    var x = confirm("Data Akan Dihapus ?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection