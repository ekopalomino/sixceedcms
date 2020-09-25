@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Edit Konten
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
<link rel="stylesheet" href="{{ asset('css/bootstrap-tagsinput.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Edit Konten</h1>
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
			{!! Form::model($data, ['method' => 'POST','route' => ['post.update', $data->id],'class'=>'form-horizontal','files'=>'true']) !!}
			@csrf
			<div class="row">
				<div class="col-md-9">
					<div class="card card-outline card-danger">
						<div class="card-body">
							<div class="row">
							  	<div class="col-12">
									<label><strong>Judul (Indonesia)</strong></label>
									{!! Form::text('id_title', old('title',$data->title), array('placeholder' => 'Judul','class' => 'form-control')) !!}
							  	</div>
							</div>
							<br>
							<div class="row">
							  	<div class="col-12">
									<label><strong>Judul (Inggris)</strong></label>
									{!! Form::text('en_title', old('title',$data->translations[0]->title), array('placeholder' => 'Title','class' => 'form-control')) !!}
							  	</div>
							</div>
							<br>
							<div class="row">
								<div class="col-12">
									<label><strong>Konten (Indonesia)</strong></label>
									{!! Form::textarea('id_content', old('content', $data->content), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
								</div>
								<div class="col-12">
									<label><strong>Konten (Inggris)</strong></label>
									{!! Form::textarea('en_content', old('content', $data->translations[0]->content), array('placeholder' => 'Konten','class' => 'form-control textarea summernote')) !!}
								</div>
							</div>
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
									<div class="form-group">
										<label><strong>Kategori</strong></label>
										{!! Form::select('category_id', $categories,old('category_id'),array('class' => 'form-control','id'=>'category_id')) !!}
									</div>
								</div>
								<div class="col-12" id="row_menteri">
									<div class="form-group">
										<label><strong>Jenis Peraturan</strong></label>
										<select name="peraturan_id" class="form-control">
							                <option value="">Please Select</option>
							                <option value="1">Kementerian Perdagangan</option>
							                <option value="2">Kementerian Pemberdayaan Aparatur Negara dan Reformasi Birokrasi</option>
							                <option value="3">Kementerian Keuangan</option>
							                <option value="4">Kementerian Kesehatan</option>
							                <option value="5">Kementerian Hukum dan Hak Asasi Manusia</option>
							                <option value="6">Badan Kepegawaian Negara</option>
							                <option value="7">Lembaga Administrasi Negara</option>
							            </select>
									</div>
								</div>
								<div class="col-12" id="row_others">
									<div class="form-group">
										<label><strong>Jenis Peraturan</strong></label>
										<select name="peraturan_id" class="form-control">
							                <option value="">Please Select</option>
							                <option value="8">Sekretariat Jenderal</option>
                							<option value="9">Syarat Teknis</option>
						              	</select>
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<label><strong>Nama Reporter</strong></label>
										{!! Form::select('reporter_id', $reporter,old('reporter_id'),array('class' => 'form-control')) !!}
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<label><strong>Sumber Berita</strong></label>
										{!! Form::text('source', null, array('placeholder' => 'Sumber Berita','class' => 'form-control')) !!}
									</div>
								</div>
								@if(($data->type_id) == '2')
								<div class="col-12">
									<div class="form-group">
										<label><strong>Lampiran (Opsional)</strong></label>
										<div class="input-group">
                							<div class="custom-file">
                  								<input type="file" class="custom-file-input" id="lampiran" name="lampiran">
                  								<label class="custom-file-label" for="customFile">Choose file</label>
                							</div>
              							</div>
									</div>
								</div>
								@endif
								<div class="col-12">
									<div class="form-group">
										<label><strong>Tanggal Publish</strong></label>
										{!! Form::date('published_date', '', array('id' => 'datepicker','class' => 'form-control')) !!}
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			@can("disable")
			<div class="row">
				<div class="col-md-9">
					<div class="card card-outline card-danger">
						<div class="card-body">
							<div class="row">
							  	<div class="col-12">
							  		<div class="form-group">
										<label><strong>Keywords :</strong></label>
										<input type="text" data-role="tagsinput" class="form-control" name="keywords">
									</div>
           						</div>
							</div>
							<br>
							<div class="row">
							  	<div class="col-12">
									<label><strong>Deskripsi</strong></label>
									{!! Form::text('description', null, array('placeholder' => 'Deskripsi','class' => 'form-control')) !!}
							  	</div>
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>
			@endcan
		</div>
		{!! Form::close() !!}
	</div>
</section>
@endsection
@section('footer.scripts')
<script src="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/bs-custom-file-input/bs-custom-file-input.min.js') }}"></script>
<script src="{{ asset('js/bootstrap-tagsinput.js') }}"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
<script>
  $(function() {
    $('#row_menteri').hide(); 
    $('#category_id').change(function(){
        if($('#category_id').val() == '8') {
            $('#row_menteri').show(); 
        } else {
            $('#row_menteri').hide(); 
        } 
    });
});
</script>
<script>
  $(function() {
    $('#row_others').hide(); 
    $('#category_id').change(function(){
        if($('#category_id').val() == '9') {
            $('#row_others').show(); 
        } else {
            $('#row_others').hide(); 
        } 
    });
});
</script>
<script type="text/javascript">
$(document).ready(function () {
  bsCustomFileInput.init();
});
</script>
@endsection