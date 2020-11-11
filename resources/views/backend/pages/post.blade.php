@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Buat Konten
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Data Konten Terbaru</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">
				<div class="card-header">
					<a class="btn btn-sm btn-danger" href="{{ route('post.create') }}">Tambah</a>
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
								@if(auth()->user()->site_id == '48887f82-bea4-47b3-a9de-4c27fdc6b85a')
								<th>Situs</th>
								@endif
								<th>Kategori</th>
								<th>Sumber</th>
								<th>Status</th>
								<th>Tgl Input</th>
								<th>Tgl Ubah</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@foreach($data as $key=>$post) 
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $post->title }}</td>
								@if(auth()->user()->site_id == '48887f82-bea4-47b3-a9de-4c27fdc6b85a')
								<td>{{ $post->Sites->site_name }}</td>
								@endif
								<td>{{ $post->Categories->category_name }}</td>
								<td>
									@if(!empty($post->source))
									{{ $post->source }}
									@else
									Tidak Ada Sumber
									@endif
								</td>
								<td>
									@if(($post->status_id) == '928ebe55-2520-491e-86e4-7498df664a32')
									<span class="badge badge-warning">{{ $post->Statuses->status_name }}</span>
									@elseif(($post->status_id) == 'c152e129-1852-40c0-b98e-ade0567cab0a')
									<span class="badge badge-success">{{ $post->Statuses->status_name }}</span>
									@else
									<span class="badge badge-danger">{{ $post->Statuses->status_name }}</span>
									@endif
								</td>
								<td>{{date("d F Y H:i",strtotime($post->created_at)) }}</td>
								<td>{{date("d F Y H:i",strtotime($post->updated_at)) }}</td>
								<td>
									<a button id="search" type="submit" class="btn btn-xs btn-info" href="{{ route('post.edit',$post->id) }}" title="Edit Konten">
										<i class="fa fa-edit"></i>
									</a>
									<a button id="search" type="submit" class="btn btn-xs btn-info" href="{{ route('postReview.index',$post->id) }}" target="blank" title="Preview Konten">
										<i class="fa fa-search"></i>
									</a>
									@if(($post->status_id) == '928ebe55-2520-491e-86e4-7498df664a32' || ($post->status_id) == '7ed618b5-8e61-4483-91c7-0fa191a3a55a')
									{!! Form::open(['method' => 'POST','route' => ['post.publish', $post->id],'style'=>'display:inline','onsubmit' => 'return ConfirmPublish()']) !!}
									{!! Form::button('<i class="fas fa-check-square"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success', 'title'=>'Publish Konten']) !!}
									{!! Form::close() !!}
									@endif
									@if(($post->status_id) == 'c152e129-1852-40c0-b98e-ade0567cab0a')
									{!! Form::open(['method' => 'POST','route' => ['post.archive', $post->id],'style'=>'display:inline','onsubmit' => 'return ConfirmArchive()']) !!}
									{!! Form::button('<i class="fas fa-check-square"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Arsip Konten']) !!}
									{!! Form::close() !!}
									@endif
									{!! Form::open(['method' => 'POST','route' => ['post.destroy', $post->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
									{!! Form::button('<i class="fas fa-trash-alt"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger','title'=>'Hapus Konten']) !!}
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
    function ConfirmPublish()
    {
    var x = confirm("Artikel Akan DiPublish?");
    if (x)
        return true;
    else
        return false;
    }
</script>
<script>
    function ConfirmArchive()
    {
    var x = confirm("Artikel Akan Di Arsip?");
    if (x)
        return true;
    else
        return false;
    }
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