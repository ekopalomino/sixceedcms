@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Create About Us
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Buat Tentang Kami</h1>
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
				{!! Form::open(array('route' => 'about.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
				@csrf
				<div class="card-body">
					<div class="row">
						<div class="col-6">
							<label><strong>Bahasa Indonesia</strong></label>
							<textarea class="textarea" name="id_konten" id="id_konten" placeholder="Place some text here"
              	style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
              </textarea>
            </div>
            <div class="col-6">
              <label><strong>Bahasa Inggris</strong></label>
              <textarea class="textarea" name="en_konten" id="en_konten" placeholder="Place some text here"
                style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
              </textarea>
            </div>
					</div>
	        <button type="submit" class="btn btn-sm btn-info">Submit</button>
	        <a button type="button" class="btn btn-sm btn-danger" href="{{ route('about.index') }}">Cancel</a>
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