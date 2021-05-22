@extends('layouts.app')

@section('pageTitle', 'Blog o turystyce')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 header mb-3 text-center">
            <h1>Wpisy blogowe</h1>
        </div>

        @foreach($data as $d)
            <div class="col-md-10 row p-2">
                <div class="col-lg-2">
                    <img src="storage/{{$d->image}}" alt="" width="100" height="100">
                </div>
                <div class="col-lg-6">
                    <a href="blog/post/{{$d->id}}">
                        <h3>{{$d->title}}</h3>
                    </a>
                </div>
                <div class="col-lg-4">
                    Data dodania: {{ $d->created_at }}
                </div>
            </div>
        @endforeach
    </div>

    <div class="row justify-content-center">
        <div class="text-center">
            <br>
            {{ $data->links() }}
        </div>
    </div>
</div>

@endsection
