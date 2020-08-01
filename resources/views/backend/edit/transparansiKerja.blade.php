@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($source, ['method' => 'POST','route' => ['strat.update', $source->id], 'files'=>'true']) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Judul</label>
                <div class="col-sm-12">
                    {!! Form::text('title', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Title</label>
                <div class="col-sm-12">
                    {!! Form::text('title', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Lampiran</label>
                <div class="col-sm-12">
                    {!! Form::file('file', null, array('placeholder' => 'Lampiran','class' => 'form-control')) !!}
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
