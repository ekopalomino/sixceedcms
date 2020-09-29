@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Kategori Konten
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Kategori Konten</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">
				<div class="card-header">
					@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
					<button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modal-lg">
						Tambah
					</button>
					@endif
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
									{!! Form::open(array('route' => 'articlecat.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
									@csrf
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Nama Kategori</label>
										<div class="col-sm-10">
											{!! Form::text('category_name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
										</div>
									</div>
									@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Nama Kategori</label>
										<div class="col-sm-10">
											{!! Form::select('site_id', [null=>'Please Select'] + $sites,[], array('class' => 'form-control')) !!}
										</div>
									</div>
									@endif
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
								<th>Nama Kategori</th>
								<th>Situs</th>
								<th>Tgl Input</th>
								<th>Tgl Ubah</th>
								@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
								<th></th>
								@endif
							</tr>
						</thead>
						<tbody>
							@foreach($source as $key=>$data) 
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $data->category_name }}</td>
								<td>{{ $data->Sites->site_name }}</td>
								<td>{{date("d F Y H:i",strtotime($data->created_at)) }}</td>
								<td>
									@if(!empty($data->updated_at))
									{{date("d F Y H:i",strtotime($data->updated_at)) }}
									@endif
								</td>
								@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
								<td>
									<a class="btn btn-xs btn-info modalLg" href="#" value="{{ action('Backend\MasterDataController@articleCategoryEdit',['id'=>$data->id]) }}" data-toggle="modal" data-target="#modalLg" title="Ubah Data"><i class="far fa-edit"></i></a>
									{!! Form::open(['method' => 'POST','route' => ['articlecat.destroy', $data->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
									{!! Form::button('<i class="fas fa-trash-alt"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger']) !!}
									{!! Form::close() !!}
								</td>
								@endif
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