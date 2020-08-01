@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($source, ['method' => 'POST','route' => ['fnban.update', $source->id], 'files'=>'true']) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Judul</label>
                <div class="col-sm-12">
                    {!! Form::text('title', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                </div>
            @if($user == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
            <label for="text" class="col-sm-12 col-form-label">Situs</label>
                <div class="col-sm-12">
                    {!! Form::select('site_id', $sites,old('site_id'), array('class' => 'form-control')) !!}
                </div>
            @else
                {!! Form::hidden('site_id', $user, array('class' => 'form-control','readonly')) !!}
            @endif
            <label for="text" class="col-sm-12 col-form-label">Tipe</label>
                <div class="col-sm-12">
                    {!! Form::select('type', array('1'=>'Kolom 1','2'=>'Kolom 2','3'=>'Kolom 3', '4'=>'Kolom 4', '5'=>'Pop Up'),old('type'), array('class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Posisi</label>
                <div class="col-sm-12">
                    {!! Form::number('position', null, array('placeholder' => 'Urutan Banner','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Link Banner</label>
                <div class="col-sm-12">
                    {!! Form::text('link', null, array('placeholder' => 'Link Banner','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Gambar Banner</label>
                <div class="col-sm-12">
                    {!! Form::file('image', null, array('placeholder' => 'Image','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Deskripsi Banner</label>
                <div class="col-sm-12">
                    {!! Form::textarea('description', null, array('placeholder' => 'Deskripsi untuk Kolom 2','class' => 'form-control')) !!}
                </div>
            <div class="modal-footer">
                <button type="close" class="btn btn-default" data-dismiss="modal">Close</button>
                <button id="register" type="submit" class="btn btn-primary">Save changes</button>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</section>
@endsection
