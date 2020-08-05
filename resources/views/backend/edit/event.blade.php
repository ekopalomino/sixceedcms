@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit Kegiatan
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/daterangepicker/daterangepicker.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Edit Kegiatan</h1>
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
		{!! Form::model($data, ['method' => 'POST','route' => ['event.update', $data->id],'files'=>'true']) !!}
		@csrf
		<div class="row">
			<div class="col-9">
				<div class="card card-outline card-danger">
					<div class="card-body">
						<div class="row">
						  <div class="col-6">
							<label><strong>Nama Acara</strong></label>
							{!! Form::text('id_title', old('title',$data->title), array('placeholder' => 'Judul','class' => 'form-control')) !!}
						  </div>
						  <div class="col-6">
							<label><strong>Event Title</strong></label>
							{!! Form::text('en_title', old('title',$data->translations[0]->title), array('placeholder' => 'Title','class' => 'form-control')) !!}
						  </div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<label><strong>Deskripsi Acara</strong></label>
								{!! Form::textarea('id_content', old('content', $data->description), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
							</div>
							<div class="col-12">
								<label><strong>Event Description</strong></label>
								{!! Form::textarea('en_content', old('content', $data->translations[0]->description), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
							</div>
						</div>
						<br>
						<button type="submit" class="btn btn-sm btn-info">Submit</button>
						<a button type="button" class="btn btn-sm btn-danger" href="{{ route('event.index') }}">Cancel</a>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="card card-outline card-info">
					<div class="card-body">
						<div class="row">
							<div class="col-12">
								<label>Tanggal Acara</label>
								<div class="col-sm-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text">
												<i class="far fa-calendar-alt"></i>
											</span>
										</div>
										<input type="text" name="event_date" class="form-control float-right" id="reservationtime">
									</div>
								</div>
							</div>
							<br>
							<div class="col-12">
								<label><strong>Jenis Acara</strong></label>
								<select name="event_type" class="form-control">
                          			<option value="0">Please Select</option>
						            <option value="1">Webinar</option>
						            <option value="2">Live</option>
						        </select>
							</div>
							<br>
							<div class="col-12">
								<label><strong>Negara</strong></label>
								{!! Form::select('country_id', $countries,old('country_id'), array('class' => 'form-control')) !!}
							</div>
							<br>
							<div class="col-12">
								<label><strong>Lokasi</strong></label>
								{!! Form::text('location', null, array('placeholder' => 'Lokasi Acara','class' => 'form-control')) !!}
							</div>
							<br>
							<div class="col-12">
              					<label><strong>Lampiran</strong></label>
              					<div class="form-group">
              						{!! Form::file('lampiran', null, array('placeholder' => 'Image','class' => 'form-control')) !!}
              					</div>
            				</div>
            				<br>
            				<div class="col-12">
								<label><strong>Link Acara</strong></label>
								{!! Form::text('link', null, array('placeholder' => 'Lokasi Acara','class' => 'form-control')) !!}
							</div>
							<div class="col-12">
								<label><strong>Status Acara</strong></label>
								{!! Form::select('status_id', $status,old('status_id'), array('class' => 'form-control')) !!}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		{!! Form::close() !!}
	</div>
</section>
@endsection
@section('footer.scripts')
<script src="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/moment/moment.min.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/daterangepicker/daterangepicker.js') }}"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
<script>
  $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 1,
      locale: {
        format: 'DD/MM/YYYY HH:mm'
      }
    })
</script>
@endsection