@extends('backend.layout.main') 
@section('content')
<section class="content">
	<div class="row">
		<div class="col-12">
			{!! Form::model($data, ['method' => 'POST','route' => ['oiml.update', $data->id]]) !!}
			@csrf
			<label for="text" class="col-sm-12 col-form-label">Judul</label>
                <div class="col-sm-12">
                    {!! Form::text('title', null, array('placeholder' => 'Nama Provinsi','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Kategori</label>
                <div class="col-sm-12">
                    <select name="category" class="form-control">
                        <option value="1" {{ old('category',$data->category)=='1' ? 'selected' : ''  }}>Kamus</option>
                        <option value="2" {{ old('category',$data->category)=='2' ? 'selected' : ''  }}>Rekomendasi</option>
                        <option value="3" {{ old('category',$data->category)=='3' ? 'selected' : ''  }}>Dokumen</option>
                    </select>
                </div>
            <label for="text" class="col-sm-12 col-form-label">No Referensi</label>
                <div class="col-sm-12">
                    {!! Form::text('reference_no', null, array('placeholder' => 'Nama Provinsi','class' => 'form-control')) !!}
                </div>
            <label for="text" class="col-sm-12 col-form-label">Link</label>
                <div class="col-sm-12">
                    {!! Form::text('link', null, array('placeholder' => 'Nama Provinsi','class' => 'form-control')) !!}
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
