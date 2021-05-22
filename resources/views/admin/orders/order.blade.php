@extends('layouts.app')

@section('pageTitle', 'Podgląd rezerwacji')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Rezerwacja numer <strong>{{ $o }}</strong></div>

                    <div class="row m-2 ml-5">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="/storage/{{ $travel->find($details->find($order->find($o)->details_id)->travel_id)->image }}" alt="zdj" width="150" height="150">
                                </div>

                                <div class="col-md-8 pl-5">
                                    <h4><strong>{{ $travel->find($details->find($order->find($o)->details_id)->travel_id)->title }}</strong><br></h4>
                                    <strong>Wybrany termin: </strong> {{ $details->find($order->find($o)->details_id)->start_date }} <br>
                                    <strong>Ilość osób: </strong> {{ $order->find($o)->participants }} <br>
                                    <strong>Cena za osobę: </strong> {{ $order->find($o)->price }} PLN <br><br>
                                    <h4><strong>Kwota rezerwacji:</strong> {{ $order->find($o)->participants * $order->find($o)->price }} PLN </h4>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="row m-3 justify-content-center">
                        <h3>Dane do przelewu:</h3><br>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-md-3"></div>
                        <div class="col-md-9 pb-3">
                            Odbiorca:&nbsp;<strong>Biuro Turystyczne JG-Travels</strong><br>
                            Nr rachunku:&nbsp;<strong>12 1234 1234 1234 1234 1234 1234</strong><br>
                            Tytuł przelewu:&nbsp;<strong>rezerwacja{{$o}}</strong><br>
                            Kwota:&nbsp;<strong>{{ $order->find($o)->participants * $order->find($o)->price }} PLN</strong><br>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
@endsection
