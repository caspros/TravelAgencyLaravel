@extends('layouts.app')

@section('pageTitle', 'Dostępne wycieczki')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 header mb-3 text-center">
            <h1>Dostępne wycieczki</h1>
        </div>

        @foreach($data as $d)
            <div class="card col-md-12 m-1 p-1 pl-2">
                <div class="row">
                    <div class="col-md-2">
                        <img src="storage/{{$d->image}}" alt="image" width="150" height="150" class="img-thumbnail rounded mx-auto">
                    </div>
                    <div class="col-md-4 pt-3">

                            <h3>{{$d->title}}</h3>
                        {{ $d->short_description }}
                    </div>
                    <div class="col-md-2 mt-3">
                        <strong>Najbliższe terminy:</strong>
                        <br>
                        @if($data_terms->where('travel_id','=',$d->id)->count()==0)
                            Brak nadchodzących terminów
                        @else
                            @foreach($data_terms->where('travel_id','=',$d->id)->take(3) as $term)
                                    - {{ substr($term->start_date, 0, 10) }} <br>
                            @endforeach
                        @endif

                    </div>
                    <div class="col-md-4 mt-4">
                        <h4>Cena już od: <strong>{{ $details->where('travel_id','=',$d->id)->orderBy('price','ASC')->first()->price }} PLN / os! </strong></h4>
                        <div class="ml-5 mt-3">
                            <a href="travel/{{$d->id}}" role="button" class="btn btn-success">Zobacz ofertę</a>
                        </div>

                    </div>
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
