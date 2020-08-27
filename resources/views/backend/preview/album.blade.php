@extends('backend.layout.preview')
@section('content')
    <div class="container content-xs" style="border-left:1px solid #ccc;border-right:1px solid #ccc; padding-bottom: 0px;">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb" style="padding-left: 0px;">
                    <li><a href="">Home</a></li>
                    <li><a href="">{{ trans('menu.newsroom') }}</a></li>
                    <li><a href="">Foto</a></li>
                    <li class="active">{{ $albums->name}}</li>
                </ul>
                <div class="text-center margin-bottom-50">
                    <h2 class="title-v2 title-center">{{ $albums->name}}</h2>
                </div>
                <p>{{$albums->description}}</p>
                <div class="row  margin-bottom-30">
                    @foreach($albums->Photos as $photo)
                    <div class="col-sm-4 sm-margin-bottom-30">
                        <a href="/albums/{{$photo->image}}" rel="gallery2" class="fancybox img-hover-v1" title="{{$photo->description}}">
                            <span><img class="img-responsive" src="/albums/{{$photo->image}}" alt=""></span>
                        </a>
                        <p></p>
                    </div>
                    @endforeach
                </div>
            </div>
            
        </div>
    </div>
@endsection