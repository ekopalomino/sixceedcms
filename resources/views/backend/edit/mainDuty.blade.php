@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit Main Duty
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Ubah Tugas dan Fungsi</h1>
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
				{!! Form::model($duties, ['method' => 'POST','route' => ['duty.update', $duties->id]]) !!}
				@csrf
				<div class="card-body">
					<div class="row">
            <div class="col-3">
              <label><strong>Kategori</strong></label>
              {!! Form::select('category', $categories,old('category'), array('class' => 'form-control')) !!}
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-6">
              <label><strong>Posisi</strong></label>
              {!! Form::text('id_position', old('position',$duties->position), array('placeholder' => 'Nama Posisi Bahasa Indonesia','class' => 'form-control')) !!}
            </div>
            <div class="col-6">
              <label><strong>Position</strong></label>
              {!! Form::text('en_position', old('position',$duties->translations[0]->position), array('placeholder' => 'Nama Posisi Bahasa Inggris','class' => 'form-control')) !!}
            </div>
          </div>
          <br>
          <div class="row">
						<div class="col-6">
							<label><strong>Tugas Pokok</strong></label>
              {!! Form::textarea('id_duties', old('mainduty', $duties->mainduty), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
            </div>
            <div class="col-6">
              <label><strong>Main Duties</strong></label>
              {!! Form::textarea('en_duties', old('mainduty', $duties->translations[0]->mainduty), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-6">
              <label><strong>Fungsi</strong></label>
              {!! Form::textarea('id_function', old('function', $duties->function), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
            </div>
            <div class="col-6">
              <label><strong>Function</strong></label>
              {!! Form::textarea('en_function', old('function', $duties->translations[0]->function), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
            </div>
					</div>
	        <button type="submit" class="btn btn-sm btn-info">Submit</button>
	        <a button type="button" class="btn btn-sm btn-danger" href="{{ route('duty.index') }}">Cancel</a>
	      </div>
	      {!! Form::close() !!}
	    </div>
    </div>
</section>
@endsection
@section('footer.scripts')
<script src="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
@endsection