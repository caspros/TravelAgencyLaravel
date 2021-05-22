@extends('layouts.app')

@section('pageTitle', 'Biuro turystyczne Travel Agency')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 header mb-3 text-center">
            <h1>Najczęściej&nbsp;wybierane</h1>
        </div>

        <div class="row justify-content-center">
        @foreach($data as $i)
            <div class="card-deck mb-2">
                <div class="card" style="width: 17rem; height: 32rem; margin-right: 1.5rem;">
                    <a href="/travel/{{$i->travel_id}}"><img src="/storage/{{ $i->image }}" class="w-100" alt="image"></a>
                    <div class="card-body text-center">
                        <h4 class="card-title">{{ $i->title ?? 'brak wycieczek' }}</h4>
                        <p class="card-text">{{ $i->short_description }}</p>

                        <div class="text-danger font-weight-bold">
                            Cena już od: {{ $i->price }} PLN!
                        </div>

                        <span class="align-text-bottom">
                            <a href="travel/{{$i->travel_id}}" class="btn btn-success" role="button">Zobacz ofertę</a>
                        </span>
                    </div>
                </div>
            </div>
        @endforeach
        </div>

        <div class="col-md-6 header mb-3 mt-5 text-center">
            <h1>Ostatnio dodane wycieczki</h1>
        </div>

        <div class="row justify-content-center">
        @foreach($data2 as $i)
                <div class="card-deck mb-2">
                    <div class="card" style="width: 17rem; height: 32rem; margin-right: 1.5rem;">
                        <a href="/travel/{{$i->travel_id}}"><img src="/storage/{{ $i->image }}" class="w-100" alt="image"></a>
                        <div class="card-body text-center">
                            <h4 class="card-title">{{ $i->title ?? 'brak wycieczek' }}</h4>
                            <p class="card-text">{{ $i->short_description }}</p>

                            <div class="text-danger font-weight-bold">
                                Cena już od: {{ $i->price }} PLN!
                            </div>

                            <span class="align-text-bottom">
                            <a href="travel/{{$i->travel_id}}" class="btn btn-success" role="button">Zobacz ofertę</a>
                        </span>
                        </div>
                    </div>
                </div>
        @endforeach
        </div>

        <div class="col-md-6 header mb-3 mt-5 text-center">
            <h1>Najnowszy wpis blogowy</h1>
        </div>

        <div class="card">
            <div class="row">
                <div class="col-md-2 py-2">
                    <img src="storage/{{$post->image ?? 'brak_wpisu'}}" alt="image" width="200" height="200">
                </div>

                <div class="col-md-6 mt-5 text-center">
                    <a href="blog/post/{{$post->id ?? 'brak_wpisu'}}">
                        <h1>{{$post->title ?? 'Brak wpisów'}}</h1>
                    </a>
                </div>

                <div class="col-md-4 mt-5 text-center">
                    Data dodania: {{ $post->created_at ?? '---' }}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
