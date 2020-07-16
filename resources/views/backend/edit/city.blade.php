@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($data, ['method' => 'POST','route' => ['city.update', $data->id]]) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Nama Negara</label>
                <div class="col-sm-12">
                    {!! Form::select('country_id', $countries,old('country_id'), array('class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Nama Provinsi</label>
                <div class="col-sm-12">
                    {!! Form::select('region_id', $regions,old('region_id'), array('class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Nama Kota</label>
                <div class="col-sm-12">
                    {!! Form::text('city_name', null, array('placeholder' => 'Nama Kota','class' => 'form-control')) !!}
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
