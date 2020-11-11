@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($data, ['method' => 'POST','route' => ['defina.update', $data->id]]) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Negara</label>
                <div class="col-sm-12">
                    {!! Form::select('country_id', $countries,old('country_id'),array('class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Kode HS</label>
                <div class="col-sm-12">
                    {!! Form::number('hs_code', null, array('placeholder' => 'Kode HS','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Uraian</label>
                <div class="col-sm-12">
                    {!! Form::text('uraian', null, array('placeholder' => 'Uraian','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Tarif</label>
                <div class="col-sm-12">
                    {!! Form::text('tarif', null, array('placeholder' => 'Tarif','class' => 'form-control')) !!}
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
