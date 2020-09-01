@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Regulasi Perdagangan Dalam Negeri
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Regulasi Perdagangan Dalam Negeri</h1>
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
									{!! Form::open(array('route' => 'regDagri.store','method'=>'POST', 'class' => 'form-horizontal', 'files' => 'true')) !!}
									@csrf
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Tahun Regulasi</label>
										<div class="input-group">
											{!! Form::number('tahun', null, array('placeholder' => 'Tahun Regulasi','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Judul Regulasi</label>
										<div class="input-group">
											{!! Form::text('judul', null, array('placeholder' => 'Judul Regulasi','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">No Regulasi</label>
										<div class="input-group">
											{!! Form::text('no_regulasi', null, array('placeholder' => 'No Regulasi','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label><strong>Lampiran</strong></label>
										<div class="input-group">
                							<div class="custom-file">
                  								<input type="file" class="custom-file-input" id="lampiran" name="lampiran">
                  								<label class="custom-file-label" for="customFile">Choose file</label>
                							</div>
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
								<th>No Regulasi</th>
								<th>Judul</th>
								<th>Tahun</th>
								<th>Tgl Data</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@foreach($data as $key=>$pub) 
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $pub->no_regulasi }}</td>
								<td>{{ str_limit(strip_tags($pub->judul), 100) }}</td>
								<td>{{ $pub->tahun }}</td>
								<td>{{date("d F Y H:i",strtotime($pub->updated_at)) }}</td>
								<td>
									<a class="btn btn-xs btn-info modalLg" href="#" value="{{ action('Backend\ContentManagementController@regDagriEdit',['id'=>$pub->id]) }}" data-toggle="modal" data-target="#modalLg" title="Ubah Data"><i class="far fa-edit"></i></a>
									{!! Form::open(['method' => 'POST','route' => ['regDagri.destroy', $pub->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
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
<script src="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/js/dataTables.bootstrap4.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/bs-custom-file-input/bs-custom-file-input.min.js') }}"></script>
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
  });
</script>
<script type="text/javascript">
$(document).ready(function () {
  bsCustomFileInput.init();
});
</script>
<script>
    function ConfirmDelete()
    {
    var x = confirm("Data Akan Dihapus?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection