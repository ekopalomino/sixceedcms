@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($data, ['method' => 'POST','route' => ['regDagri.update', $data->id]]) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Tahun Regulasi</label>
                <div class="col-sm-12">
                    {!! Form::number('tahun', null, array('placeholder' => 'Tahun Regulasi','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Judul Regulasi</label>
                <div class="col-sm-12">
                    {!! Form::text('judul', null, array('placeholder' => 'Judul Regulasi','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">No Regulasi</label>
                <div class="col-sm-12">
                    {!! Form::text('no_regulasi', null, array('placeholder' => 'No Regulasi','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Lampiran</label>
                <div class="col-sm-12">
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="lampiran" name="lampiran">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                    </div>
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
