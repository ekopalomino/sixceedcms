@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($categories, ['method' => 'POST','route' => ['dutycat.update', $categories->id]]) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Nama Kategori (Bhs Indonesia)</label>
                <div class="col-sm-12">
                    {!! Form::text('id_category', old('category', $categories->category_name), array('placeholder' => 'Category','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Nama Kategori (Bhs Inggris)</label>
                <div class="col-sm-12">
                    {!! Form::text('en_category', old('category', $categories->translations[0]->category_name), array('placeholder' => 'Category','class' => 'form-control')) !!}
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
