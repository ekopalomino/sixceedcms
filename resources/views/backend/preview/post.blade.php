@extends('backend.layout.preview')
@section('content')
    <div class="container content-xs" style="border-left:1px solid #ccc;border-right:1px solid #ccc; padding-bottom: 0px;">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb" style="padding-left: 0px;">
                    <li><a href="">Home</a></li>
                    <li><a href="">{{ trans('menu.newsroom') }}</a></li>
                    <li><a href="">Foto</a></li>
                    <li class="active">{{ $data->title}}</li>
                </ul>
                <div class="text-center margin-bottom-50">
                    <h2 class="title-v2 title-center">{{ $data->title}}</h2>
                </div>
                <p>{{$data->title}}</p>
                
            </div>
            
        </div>
    </div>
@endsection