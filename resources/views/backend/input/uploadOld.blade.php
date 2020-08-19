@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Buat Artikel Upload
@endsection
@section('header.styles')
<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.css') }}">
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
      	<div class="row mb-2">
       		<div class="col-sm-6">
          		<h1>Buat Artikel Upload</h1>
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
				{!! Form::open(array('route' => 'post.store','method'=>'POST', 'class' => 'form-horizontal','files'=>'true')) !!}
				@csrf
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
						<div class="col-6">
							<label><strong>Bahasa Indonesia</strong></label>
							<textarea class="textarea" name="id_content" id="id_content" placeholder="Place some text here"
              	style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
              </textarea>
            </div>
            <div class="col-6">
              <label><strong>English</strong></label>
              <textarea class="textarea" name="en_content" id="en_content" placeholder="Place some text here"
                style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
              </textarea>
            </div>
					</div>
          <br>
          <div class="row">
            <div class="col-6">
              <label><strong>Kategori Artikel</strong></label>
              {!! Form::select('category_id', $categories,[], array('class' => 'form-control','id'=>'category_id')) !!}
            </div>
            <div class="col-6" id="row_menteri">
              <label><strong>Peraturan Kementerian</strong></label>
              <select name="menteri_id" class="form-control">
                <option value="0">Please Select</option>
                <option value="1">Kementerian Perdagangan</option>
                <option value="2">Kementerian Pemberdayaan Aparatur Negara dan Reformasi Birokrasi</option>
                <option value="3">Kementerian Keuangan</option>
                <option value="4">Kementerian Kesehatan</option>
                <option value="5">Kementerian Hukum dan Hak Asasi Manusia</option>
                <option value="6">Badan Kepegawaian Negara</option>
                <option value="7">Lembaga Administrasi Negara</option>
              </select>
            </div>
            <div class="col-6" id="row_lain">
              <label><strong>Peraturan Lain</strong></label>
              <select name="lainnya_id" class="form-control">
                <option value="0">Please Select</option>
                <option value="1">Sekretariat Jenderal</option>
                <option value="2">Syarat Teknis</option>
              </select>
            </div>
            <div class="col-6">
              <label><strong>File Artikel</strong></label>
              <div class="input-group">
                <div class="custom-file">
                  <input type="file" class="custom-file-input" id="file" name="file">
                  <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-6">
              <label><strong>Reporter</strong></label>
              {!! Form::select('reporter_id', $reporter,[], array('class' => 'form-control')) !!}
            </div>
            <div class="col-6">
              <label><strong>Sumber Berita</strong></label>
                <div class="col-sm-10">
                  {!! Form::text('source', null, array('placeholder' => 'Sumber Berita','class' => 'form-control')) !!}
                </div>
            </div>
          </div>
          {!! Form::hidden('type', 'upload', array('class' => 'form-control','readonly')) !!}
          <br>
	        <button type="submit" class="btn btn-sm btn-info">Submit</button>
	        <a button type="button" class="btn btn-sm btn-danger" href="{{ route('post.index') }}">Cancel</a>
	      </div>
	      {!! Form::close() !!}
	    </div>
    </div>
</section>
@endsection
@section('footer.scripts')
<script src="{{ asset('bower_components/admin-lte/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script src="{{ asset('bower_components/admin-lte/plugins/bs-custom-file-input/bs-custom-file-input.min.js') }}"></script>
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
    $('#row_lain').hide(); 
    $('#category_id').change(function(){
        if($('#category_id').val() == '9') {
            $('#row_lain').show(); 
        } else {
            $('#row_lain').hide(); 
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