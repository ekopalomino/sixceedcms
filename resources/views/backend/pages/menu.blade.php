@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Struktur Menu
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Struktur Menu</h1>
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
									{!! Form::open(array('route' => 'country.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
									@csrf
									<div class="form-group row">
										<label for="inputEmail" class="col-sm-2 col-form-label">Nama Negara</label>
										<div class="col-sm-10">
											{!! Form::text('country_name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
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
					<ol>
						<li>Beranda</li>
						<li>Profil
							<ol>
								<li>Sejarah</li>
							</ol>
						</li>
					</ol>
            	</div>
            </div>
        </div>
    </div>
</section>
@endsection