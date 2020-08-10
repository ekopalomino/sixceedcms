@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Buat Artikel Tulisan
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Buat Artikel Tulisan</h1>
       		</div>
       	</div>
    </div>
</section>
<section class="content">
	<div class="container-fluid">
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
			{!! Form::open(array('route' => 'post.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
			@csrf
			<div class="col-md-9">
				<div class="card card-outline card-danger">
					<div class="card-body">
						<div class="row">
						  <div class="col-6">
							<label><strong>Judul</strong></label>
							{!! Form::text('id_title', null, array('placeholder' => 'Judul','class' => 'form-control')) !!}
						  </div>
						  <div class="col-6">
							<label><strong>Title</strong></label>
							{!! Form::text('en_title', null, array('placeholder' => 'Title','class' => 'form-control')) !!}
						  </div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<label><strong>Bahasa Indonesia</strong></label>
								<textarea class="textarea" name="id_content" id="id_content" placeholder="Place some text here"
									style="width: 100%; height: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
								</textarea>
							</div>
							<div class="col-12">
								<label><strong>English</strong></label>
								<textarea class="textarea" name="en_content" id="en_content" placeholder="Place some text here"
									style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
								</textarea>
							</div>
						</div>
						{!! Form::hidden('type', 'write', array('class' => 'form-control','readonly')) !!}
						<br>
						<button type="submit" class="btn btn-sm btn-info">Submit</button>
						<a button type="button" class="btn btn-sm btn-danger" href="{{ route('post.index') }}">Cancel</a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card card-outline card-info">
					<div class="card-body">
						<div class="row">
							<div class="col-12">
								<label><strong>Kategori Artikel</strong></label>
								{!! Form::select('category_id', $categories,[], array('class' => 'form-control')) !!}
							</div>
							<div class="col-12">
								<label><strong>Reporter</strong></label>
								{!! Form::select('reporter_id', $reporter,[], array('class' => 'form-control')) !!}
							</div>
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