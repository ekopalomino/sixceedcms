@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Dokumentasi Kegiatan
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Dokumentasi Kegiatan</h1>
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
									<h4 class="modal-title">Berita Video Baru</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									{!! Form::open(array('route' => ['eventDocs.store', $data->id],'method'=>'POST', 'class' => 'form-horizontal', 'file' => 'true')) !!}
									@csrf
									<div class="form-group row">
										<label for="inputVideo" class="col-sm-2 col-form-label">ID Video</label>
										<div class="input-group">
											{!! Form::text('video_id', null, array('placeholder' => 'ID Video','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputVideo" class="col-sm-2 col-form-label">Judul Lampiran</label>
										<div class="input-group">
											{!! Form::text('title_file', null, array('placeholder' => 'Judul Lampiran','class' => 'form-control')) !!}
										</div>
									</div>
									<div class="form-group row">
										<label for="inputDescription" class="col-sm-2 col-form-label">Lampiran</label>
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
								<th>Judul Dokumentasi</th>
								<th>Dokumentasi</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@foreach($data->Child as $key=>$docs)
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $docs->title }}</td>
								<td></td>
								<td>
									{!! Form::open(['method' => 'POST','route' => ['eventDocs.destroy', $docs->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
									{!! Form::button('<i class="fas fa-trash-alt"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger','title'=>'Hapus Data']) !!}
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
<script>
    function ConfirmDelete()
    {
    var x = confirm("Dokumentasi Akan Dihapus?");
    if (x)
        return true;
    else
        return false;
    }
</script>
<script type="text/javascript">
$(document).ready(function () {
  bsCustomFileInput.init();
});
</script>
@endsection