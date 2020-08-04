@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Artikel
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Data Artikel</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">
				<div class="card-header">
					<a class="btn btn-sm btn-danger" href="{{ route('write.create') }}">Tambah Tulisan</a>
					<a class="btn btn-sm btn-danger" href="{{ route('upload.create') }}">Tambah Upload</a>
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
								<th>Situs</th>
								<th>Tipe</th>
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
								<td>{{ $post->Sites->site_name }}</td>
								<td>{{ $post->type }}</td>
								<td>{{ $post->Categories->category_name }}</td>
								<td>
									@if(!empty($post->source))
									{{ $post->source }}
									@else
									Tidak Ada Sumber
									@endif
								</td>
								<td>
									@if(($post->status_id) == '3bc97e4a-5e86-4d7c-86d5-7ee450a247ee')
									<span class="badge badge-warning">{{ $post->Statuses->status_name }}</span>
									@elseif(($post->status_id) == '2872ac69-2f76-438b-8b83-31c52787027d')
									<span class="badge badge-success">{{ $post->Statuses->status_name }}</span>
									@else
									<span class="badge badge-danger">{{ $post->Statuses->status_name }}</span>
									@endif
								</td>
								<td>{{date("d F Y H:i",strtotime($post->created_at)) }}</td>
								<td>{{date("d F Y H:i",strtotime($post->updated_at)) }}</td>
								<td>
									<a button id="search" type="submit" class="btn btn-xs btn-info" href="{{ route('post.edit',$post->id) }}">
										<i class="fa fa-edit"></i>
									</a>
									{!! Form::open(['method' => 'POST','route' => ['post.destroy', $post->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
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