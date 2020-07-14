@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Access Roles
@endsection
@section('header.plugins')
<link rel="stylesheet" href="{{ asset('public/bower_components/admin-lte/plugins/datatables-bs4/css/dataTables.bootstrap4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Access Roles</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
		<div class="col-12">
			<div class="card card-info card-outline">
				<div class="card-header">
       				<a class="btn btn-sm btn-danger" href="{{ route('roles.create') }}">
         			Add New</a>
         		
         	</div>
         	<div class="card-body">
         		<table id="example2" class="table table-bordered table-hover">
         			<thead>
         				<tr>
         					<th>No</th>
         					<th>Role Name</th>
			                <th>Created At</th>
         					<th></th>
         				</tr>
         			</thead>
         			<tbody>
                		@foreach($data as $key=>$role)
         				<tr>
         					<td>{{ $key+1 }}</td>
         					<td>{{ $role->name }}</td>
                      		<td>{{date("d F Y H:i",strtotime($role->created_at)) }}</td>
                      		<td>
								<a button id="search" type="submit" class="btn btn-xs btn-info" href="{{ route('roles.edit',$role->id) }}">
									<i class="fa fa-edit"></i>
								</a>
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
<script src="{{ asset('public/bower_components/admin-lte/plugins/datatables/jquery.dataTables.js') }}"></script>
<script src="{{ asset('public/bower_components/admin-lte/plugins/datatables-bs4/js/dataTables.bootstrap4.js') }}"></script><script>
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
    var x = confirm("Role Delete?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection