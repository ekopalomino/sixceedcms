@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Log Activity
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
    <div class="row mb-2">
    	<div class="col-sm-6">
     		<h1>Log Aktifitas</h1>
    	</div>
    </div>
  </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">		
				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>No</th>
								<th>Pengguna</th>
								@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
								<th>Situs</th>
								@endif
								<th>URL</th>
								<th>Action</th>
								<th>User IP</th>
								<th>Activity Date</th>
							</tr>
						</thead>
						<tbody>
							@if($logs->count())
							@foreach($logs as $key => $log)
							<tr>
								<td>{{ $key+1 }}</td>
								<td><span class="badge badge-danger">{{ $log->Creator->name }}</span></td>
								@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
								<td><span class="badge badge-info">{{ $log->Sites->site_name }}</span></td>
								@endif
								<td class="text-success">{{ $log->url }}</td>
								<td>{{ $log->subject }}</td>
								<td class="text-danger">{{ $log->ip }}</td>
								<td>{{date("d F Y H:i",strtotime($log->created_at)) }}</td>
							</tr>
							@endforeach
							@endif
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
<script>
  $(function () {
    $("#example1").DataTable({
      "paging": true,
      "lengthChange": true,
    });
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
@endsection