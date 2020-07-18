@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($source, ['method' => 'POST','route' => ['faqcat.update', $source->id]]) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Nama Kategori</label>
                <div class="col-sm-12">
                    {!! Form::text('category_name', old('source', $source->category_name), array('placeholder' => 'Category','class' => 'form-control')) !!}
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