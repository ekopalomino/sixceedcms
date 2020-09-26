@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Kegiatan
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Data Kegiatan</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">
				<div class="card-header">
					<a class="btn btn-sm btn-danger" href="{{ route('event.create') }}">Tambah Data</a>
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
								@if(auth()->user()->site_id == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
								<th>Situs</th>
								@endif
								<th>Nama Acara</th>
								<th>Jenis Acara</th>
								<th>Negara</th>
								<th>Deskripsi</th>
								<th>Tgl Acara</th>
								<th>Tgl Data</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@foreach($data as $key=>$event) 
							<tr>
								<td>{{ $key+1 }}</td>
								@if(auth()->user()->site_id == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
								<td>{{ $event->Sites->site_name }}</td>
								@endif
								<td>{{ $event->title }}</td>
								<td>
									@if(($event->event_type) == '1')
									Webinar
									@else
									Live
									@endif
								</td>
								<td>{{ $event->Countries->country_name }}</td>
								<td>{{ $event->Deskripsi }}</td>
								<td>{{date("d F Y H:i",strtotime($event->date_from)) }} s.d {{date("d F Y H:i",strtotime($event->date_to)) }}</td>
								<td>{{date("d F Y H:i",strtotime($event->updated_at)) }}</td>
								<td>
									<a button id="search" type="submit" class="btn btn-xs btn-info" href="{{ route('event.edit',$event->id) }}">
										<i class="fa fa-edit"></i>
									</a>
									<a button id="search" type="submit" class="btn btn-xs btn-info" title="Tambah Dokumentasi" href="{{ route('eventDocs.create',$event->id) }}">
										<i class="fa fa-edit"></i>
									</a>
									{!! Form::open(['method' => 'POST','route' => ['event.destroy', $event->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
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
    function ConfirmDelete()
    {
    var x = confirm("Artikel Akan Dihapus?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection