@extends('layouts.app')

@section('pageTitle', 'Potwierdź rezerwację')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Potwierdzenie rezerwacji - <strong>{{ $travel->find($details->find($request->term)->travel_id)->title}} </strong></div>


                    <div class="row m-2 ml-5">
                        <form action="/order_created/" method="POST">
                            @csrf

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="/storage/{{ $travel->find($details->find($request->term)->travel_id)->image}}" alt="zdj" width="150" height="150">
                                    </div>

                                    <div class="col-md-8 pl-5">
                                        <h4><strong>{{ $travel->find($details->find($request->term)->travel_id)->title}} </strong><br></h4>
                                        <strong>Wybrany termin:</strong> {{ $details->find($request->term)->start_date }} <br>
                                        <strong>Ilość osób:</strong> {{ $request->participants }} <br>
                                        <strong>Cena za osobę:</strong> {{ $details->find($request->term)->price }} PLN <br><br>
                                        <h4><strong>Kwota rezerwacji:</strong> {{ $request->participants*$details->find($request->term)->price }} PLN </h4>
                                    </div>

                                    <input type="hidden" id="details_id" name="details_id" value="{{$details->find($request->term)->id}}">
                                    <input type="hidden" id="participants" name="participants" value="{{$request->participants}}">
                                    <input type="hidden" id="price" name="price" value="{{ $details->find($request->term)->price }}">
                                    <input type="hidden" id="user_id" name="user_id" value="{{Auth::user()->id}}">

                                </div>
                            </div>

                            @if (($details->find($request->term)->max_participants)-($orders->where('details_id','=',$request->term)->sum('participants'))>=($request->participants))
                            <div class="row m-3 justify-content-center">
                                <button type="button" class="btn btn-danger mr-5" onclick="history.back()">Powrót</button>
                                <button type="submit" class="btn btn-success">Potwierdź rezerwację*</button>
                            </div>
                                <i>*potwierdzając rezerwację akceptujesz <a href="#">regulamin</a> oraz zgadasz się na opłacenie wycieczki <br>w terminie do 24 godzin przed wycieczką</i>
                            @else
                                <div class="row m-3 justify-content-center text-danger">
                                    <h5>Brak wystarczającej liczby miejsc w wybranych terminie</h5>

                                </div>
                                <div class="row m-3 justify-content-center">
                                    <h5>POZOSTAŁO MIEJSC: {{ ($details->find($request->term)->max_participants)-($orders->where('details_id','=',$request->term)->sum('participants'))  }}</h5>
                                </div>
                            @endif
                        </form>



                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
