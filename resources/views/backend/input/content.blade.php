@extends('backend.layout.main')
@section('header.title')
Kementerian Perdagangan Republik Indonesia | Buat Konten
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
          		<h1>Buat Konten</h1>
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
			{!! Form::open(array('route' => 'post.store','method'=>'POST', 'class' => 'form-horizontal','files'=>'true')) !!}
			@csrf
			<div class="row">
				<div class="col-md-9">
					<div class="card card-outline card-danger">
						<div class="card-body">
							<div class="row">
							  	<div class="col-12">
									<label><strong>Judul (Indonesia)</strong></label>
									{!! Form::text('id_title', null, array('placeholder' => 'Judul','class' => 'form-control')) !!}
							  	</div>
							</div>
							<br>
							<div class="row">
							  	<div class="col-12">
									<label><strong>Judul (Inggris)</strong></label>
									{!! Form::text('en_title', null, array('placeholder' => 'Title','class' => 'form-control')) !!}
							  	</div>
							</div>
							<br>
							<div class="row">
								<div class="col-12">
									<label><strong>Konten (Indonesia)</strong></label>
									<textarea class="textarea" name="id_content" id="id_content" placeholder="Place some text here"
										style="width: 100%; height: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
									</textarea>
								</div>
								<div class="col-12">
									<label><strong>Konten (Inggris)</strong></label>
									<textarea class="textarea" name="en_content" id="en_content" placeholder="Place some text here"
										style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
									</textarea>
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
							<!--Site Specific Marker-->
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<label><strong>Jenis Konten</strong></label>
										{!! Form::select('category_id', [null=>'Please Select'] + $categories,[], array('class' => 'form-control', 'id' => 'category_id')) !!}
									</div>
								</div>
								@if((auth()->user()->site_id) == '46d017eb-f7aa-450e-80f6-d565f424ce24')
								<div class="col-12" id="row_dagri">
									<div class="form-group">
										<label><strong>No Regulasi</strong></label>
										{!! Form::text('category_child_id', null, array('placeholder' => 'No Regulasi','class' => 'form-control')) !!}
									</div>
								</div>
								@endif
								<div class="col-12" id="row_menteri">
									<div class="form-group">
										<label><strong>Peraturan Menteri</strong></label>
										<select name="category_child_id" class="form-control">
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
								<div class="col-12" id="row_lain">
									<div class="form-group">
										<label><strong>Peraturan Lainnya</strong></label>
										<select name="category_child_id" class="form-control">
							                <option value="">Please Select</option>
							                <option value="8">Sekretariat Jenderal</option>
                							<option value="9">Syarat Teknis</option>
							            </select>
									</div>
								</div>
								<div class="col-12" id="row_ppi">
									<div class="form-group">
										<label><strong>Sub Kategori Perundingan</strong></label>
										<select name="category_child_id" class="form-control">
							                <option value="">Please Select</option>
							                <option value="1">Pertanian</option>
							                <option value="2">Sanitary & Phytosanitary Measures</option>
							                <option value="3">Technical Barriers to Trade</option>
							                <option value="4">Pembangunan dan Lingkungan</option>
							                <option value="5">Teknologi Informasi</option>
							                <option value="6">Aksesi</option>
							                <option value="7">Pengamanan Perdagangan</option>
							                <option value="8">Ketentuan Perdagangan</option>
							                <option value="9">Penyelesaian Sengketa</option>
							                <option value="10">TRIPS & TRIMS</option>
							                <option value="11">Perdagangan & Pembangunan</option>
							                <option value="12">Perdagangan & Lingkungan</option>
							                <option value="13">Fasilitasi Perdagangan</option>
							                <option value="14">Prosedur Perijinan Impor</option>
							                <option value="15">Custom Valuation & Preshipment Inspection</option>
							                <option value="16">Tinjauan Ketentuan Perdagangan</option>
							                <option value="17">Isu Lainnya</option>
							            </select>
									</div>
								</div>
								<div class="col-12" id="row_dagri">
									<div class="form-group">
										<label><strong>Tahun Regulasi</strong></label>
										{!! Form::number('years', null, array('placeholder' => 'Tahun Regulasi','class' => 'form-control')) !!}
									</div>
								</div>
								
								<div class="col-12">
									<div class="form-group">
										<label><strong>Nama Reporter</strong></label>
										{!! Form::select('reporter_id', [null=>'Please Select'] + $reporter,[], array('class' => 'form-control')) !!}
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<label><strong>Sumber Berita</strong></label>
										{!! Form::text('source', null, array('placeholder' => 'Sumber Berita','class' => 'form-control')) !!}
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<label><strong>Lampiran</strong></label>
										<div class="input-group">
                							<div class="custom-file">
                  								<input type="file" class="custom-file-input" id="lampiran" name="lampiran">
                  								<label class="custom-file-label" for="customFile">Choose file</label>
                							</div>
              							</div>
									</div>
								</div>
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
        if($('#category_id').val() == '11') {
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
        if($('#category_id').val() == '12') {
            $('#row_lain').show(); 
        } else {
            $('#row_lain').hide(); 
        } 
    });
});
</script>
<script>
  $(function() {
    $('#row_dagri').hide(); 
    $('#category_id').change(function(){
        if($('#category_id').val() == '15') {
            $('#row_dagri').show(); 
        } else {
            $('#row_dagri').hide(); 
        } 
    });
});
</script>
<script>
  $(function() {
    $('#row_ppi').hide(); 
    $('#category_id').change(function(){
        if($('#category_id').val() == '35') {
            $('#row_ppi').show(); 
        } else {
            $('#row_ppi').hide(); 
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