@extends('layouts.app')

@section('pageTitle', 'Podgląd rezerwacji')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Rezerwacja nr: <strong>{{ $o }} </strong></div>

                    <div class="row m-2 ml-5">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="/storage/{{ $travel->find($details->find($orders->find($o)->details_id)->travel_id)->image }}" alt="zdj" width="150" height="150">
                                    <a href="/travel/{{$details->find($orders->find($o)->details_id)->travel_id}}" target="_blank" role="button" class="btn btn-success m-1 mt-2" >Podgląd wycieczki</a>
                                </div>

                                <div class="col-md-8 pl-5">
                                    <h4><strong>{{ $travel->find($details->find($orders->find($o)->details_id)->travel_id)->title}} </strong></h4>
                                    <br>
                                    <strong>Wybrany termin:</strong> {{ $details->find($orders->find($o)->details_id)->start_date }} <br>
                                    <strong>Ilość osób:</strong> {{ $orders->find($o)->participants }} <br>
                                    <strong>Cena za osobę:</strong> {{ $orders->find($o)->price }} PLN <br><br>
                                    <h4><strong>Kwota rezerwacji:</strong> {{ $orders->find($o)->participants * $orders->find($o)->price }} PLN </h4>
                                    <strong>Status płatności: {{ $orders->find($o)->payment_status }}</strong>
                                </div>

                                @if($orders->find($o)->payment_status == 'brak wpłaty')
                                    <div class="row m-3 justify-content-center mt-5">
                                        <h3>Dane do przelewu:</h3><br>
                                    </div>

                                    <div class="row justify-content-center mt-5">
                                        <div class="col-md-12">
                                            Odbiorca:&nbsp;<strong>Biuro Turystyczne JG-Travels</strong><br>
                                            Nr rachunku:&nbsp;<strong>12 1234 1234 1234 1234 1234 1234</strong><br>
                                            Tytuł przelewu:&nbsp;<strong>rezerwacja{{$o}}</strong><br>
                                            Kwota:&nbsp;<strong>{{ $orders->find($o)->participants * $orders->find($o)->price }} PLN</strong><br>
                                        </div>
                                    </div>
                                @endif

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
