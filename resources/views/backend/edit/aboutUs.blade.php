@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit About Us
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Edit Tentang Kami</h1>
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
			<div class="card card-outline card-info">
				{!! Form::model($about, ['method' => 'POST','route' => ['about.update', $about->id]]) !!}
        		@csrf
					<div class="card-body">
						<div class="row">
							<div class="col-6">
								<label><strong>Bahasa Indonesia</strong></label>
								{!! Form::textarea('id_konten', old('content', $about->welcome_message), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
                          	</div>
                          	<div class="col-6">
								<label><strong>Bahasa Inggris</strong></label>
								{!! Form::textarea('en_konten', old('content', $about->translations[0]->welcome_message), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
                          	</div>
						</div>
						<button type="submit" class="btn btn-info">Submit</button>
	                  	<a button type="button" class="btn btn-danger" href="{{ route('about.index') }}">Cancel</a>
	                </div>
	            {!! Form::close() !!}
	        </div>
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