@extends('layouts.app')

@section('pageTitle', $post->find($p)->title)

@section('content')
    <div class="container">
        @guest

        @else
            @can('view', Auth::user()->role)
                <div class="row justify-content-md-center mb-2">
                    <table>
                        <tr>
                            <td>
                                <a href="/adminPanel/posts" role="button" class="btn btn-success mb-1 w-100 mr-3" >Lista wpisów</a>
                            </td>
                            <td>
                                <a href="/adminPanel/post/{{ $post->find($p)->id }}/edit" role="button" class="btn btn-primary mb-1 w-100 ml-3" >Edytuj wpis</a>
                            </td>
                        </tr>
                    </table>



                </div>
            @endcan
        @endguest

        <div class="row justify-content-md-center">
            <div class="col-md-4">
                <img src="/storage/{{ $post->find($p)->image }}" alt="zdj" width="350" height="350">
            </div>
            <div class="col-md-6 p-2">
                <h1>{{ $post->find($p)->title }}</h1>
                <div class="text-justify mt-4">
                    {{ $post->find($p)->short_description }}
                </div>
            </div>
        </div>

        <div class="row justify-content-md-center p-1 pt-3">
            <div class="col-lg-10 text-justify">
                <div class="text-justify mt-3">
                    <h2>{{ $post->find($p)->long_description_title }}</h2>
                </div>
                <div class="p-1">
                    {{ $post->find($p)->long_description }}
                </div>
            </div>
        </div>

        <div class="row justify-content-md-center p-1 pt-3">
            <div class="col-lg-10 text-justify">
                <div class="text-justify mt-1">
                    <h2>{{ $post->find($p)->summary_title }}</h2>
                </div>
                <div class="p-1">
                    @foreach(explode('  ', $post->find($p)->summary) as $string)
                        {{ $string }} <br>
                    @endforeach
                </div>
            </div>
        </div>

    </div>
@endsection
