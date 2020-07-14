@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit Role
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Edit Access Roles</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="row">
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
		<div class="col-12">
			<div class="card card-outline card-danger">
				{!! Form::model($data, ['method' => 'POST','route' => ['roles.update', $data->id]]) !!}
				@csrf
					<div class="card-body">
						<div class="row">
							<div class="col-6">
								<label><strong>Role Name</strong></label>
								{!! Form::text('name', null, array('placeholder' => 'Role Name','class' => 'form-control')) !!}
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="card-body table-responsive p-0" style="height: 525px;">
									<table class="table table-head-fixed text-nowrap">
										<thead>
											<tr>
												<th>No</th>
												<th>Fungsi</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><strong>1</strong></td>
												<td>Bisa Mengakses Pengaturan</td>
												<td style="text-align:center"><input type="checkbox" value="1" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '1')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>2</strong></td>
												<td>Bisa Membuat Pengaturan</td>
												<td style="text-align:center"><input type="checkbox" value="2" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '2')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>3</strong></td>
												<td>Bisa Merubah Pengaturan</td>
												<td style="text-align:center"><input type="checkbox" value="3" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '3')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>4</strong></td>
												<td>Bisa Menghapus Pengaturan</td>
												<td style="text-align:center"><input type="checkbox" value="4" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '4')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>5</strong></td>
												<td>Bisa Melihat Data Pengguna</td>
												<td style="text-align:center"><input type="checkbox" value="5" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '5')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>6</strong></td>
												<td>Bisa Membuat Data Pengguna</td>
												<td style="text-align:center"><input type="checkbox" value="6" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '6')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>7</strong></td>
												<td>Bisa Merubah Data Pengguna</td>
												<td style="text-align:center"><input type="checkbox" value="7" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '7')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>8</strong></td>
												<td>Bisa Menghapus Data Pengguna</td>
												<td style="text-align:center"><input type="checkbox" value="8" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '8')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>9</strong></td>
												<td>Bisa Melihat Log Aktifitas</td>
												<td style="text-align:center"><input type="checkbox" value="9" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '9')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>10</strong></td>
												<td>Bisa Menjalankan Proses Maintenance</td>
												<td style="text-align:center"><input type="checkbox" value="10" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '10')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>11</strong></td>
												<td>Bisa Melihat Master Data</td>
												<td style="text-align:center"><input type="checkbox" value="11" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '11')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>12</strong></td>
												<td>Bisa Membuat Master Data</td>
												<td style="text-align:center"><input type="checkbox" value="12" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '12')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>13</strong></td>
												<td>Bisa Merubah Master Data</td>
												<td style="text-align:center"><input type="checkbox" value="13" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '13')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>14</strong></td>
												<td>Bisa Menghapus Master Data</td>
												<td style="text-align:center"><input type="checkbox" value="14" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '14')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>15</strong></td>
												<td>Bisa Membuat Konten</td>
												<td style="text-align:center"><input type="checkbox" value="15" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '15')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>16</strong></td>
												<td>Bisa Merubah Semua Konten</td>
												<td style="text-align:center"><input type="checkbox" value="16" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '16')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>17</strong></td>
												<td>Bisa Menghapus Semua Konten</td>
												<td style="text-align:center"><input type="checkbox" value="17" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '17')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>18</strong></td>
												<td>Bisa Publish Konten</td>
												<td style="text-align:center"><input type="checkbox" value="18" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '18')checked @endif @endforeach /></td>
											</tr>
											<tr>
												<td><strong>19</strong></td>
												<td>Bisa Mengarsipkan Konten</td>
												<td style="text-align:center"><input type="checkbox" value="19" name="permission[]" @foreach($roles as $rolePermissions) @if($rolePermissions->permission_id == '19')checked @endif @endforeach /></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
	                  	<button type="submit" class="btn btn-sm btn-info">Submit</button>
	                  	<a button type="button" class="btn btn-sm btn-danger" href="{{ route('roles.index') }}">Cancel</a>
	                </div>
	            {!! Form::close() !!}
	        </div>
        </div>
    </div>
</section>
@endsection