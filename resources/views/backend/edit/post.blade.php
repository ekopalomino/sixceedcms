@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit Artikel
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Edit Artikel</h1>
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
		{!! Form::model($data, ['method' => 'POST','route' => ['post.update', $data->id],'files'=>'true']) !!}
		@csrf
		<div class="row">
			<div class="col-9">
				<div class="card card-outline card-danger">
					<div class="card-body">
						<div class="row">
						  <div class="col-6">
							<label><strong>Judul</strong></label>
							{!! Form::text('id_title', old('title',$data->title), array('placeholder' => 'Judul','class' => 'form-control')) !!}
						  </div>
						  <div class="col-6">
							<label><strong>Title</strong></label>
							{!! Form::text('en_title', old('title',$data->translations[0]->title), array('placeholder' => 'Title','class' => 'form-control')) !!}
						  </div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<label><strong>Bahasa Indonesia</strong></label>
								{!! Form::textarea('id_content', old('content', $data->content), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
							</div>
							<div class="col-12">
								<label><strong>English</strong></label>
								{!! Form::textarea('en_content', old('content', $data->translations[0]->content), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
							</div>
						</div>
						<br>
						<button type="submit" class="btn btn-sm btn-info">Submit</button>
						<a button type="button" class="btn btn-sm btn-danger" href="{{ route('post.index') }}">Cancel</a>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="card card-outline card-info">
					<div class="card-body">
						<div class="row">
							<div class="col-12">
								<label><strong>Kategori Artikel</strong></label>
								{!! Form::select('category_id', $categories,old('category_id'),array('class' => 'form-control')) !!}
							</div>
							<div class="col-12">
								<label><strong>Reporter</strong></label>
								{!! Form::select('reporter_id', $reporter,old('reporter_id'),array('class' => 'form-control')) !!}
							</div>
							@if(($data->type_id) == '2')
							<div class="col-6">
              					<label><strong>File Artikel</strong></label>
              					{!! Form::file('file', null, array('placeholder' => 'Image','class' => 'form-control')) !!}
            				</div>
            				@endif
							<div class="col-12">
								<label><strong>Sumber Berita</strong></label>
								{!! Form::text('source', null, array('placeholder' => 'Sumber Berita','class' => 'form-control')) !!}
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
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
@endsection