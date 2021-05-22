@extends('layouts.app')

@section('pageTitle', 'Edytuj rezerwację')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edytuj rezerwację nr: <strong>{{$o}}</strong></div>

                    <div class="card-body">
                        <form method="POST" action="/adminPanel/order/{{$o}}/order_updated">
                            @csrf
                            @method('PATCH')

                            <div class="form-group row">
                                <label id="title-label" class="col-md-4 col-form-label text-md-right">Status płatności:</label>
                                <div class="col-md-6">

                                    <input id="payment_status"
                                           class="form-control @error('payment_status') is-invalid @enderror"
                                           name="payment_status"
                                           value="{{ $orders->find($o)->payment_status }}"
                                           required autocomplete="on">

                                    @error('payment_status')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="payment_date" class="col-md-4 col-form-label text-md-right">Data płatności:</label>
                                <div class="col-md-6">
                                    <input id="payment_date"
                                           type="datetime-local"
                                           class="form-control @error('payment_date') is-invalid @enderror"
                                           name="payment_date"
                                           value="{{ date('Y-m-d\TH:i', strtotime($orders->find($o)->payment_date)) }}"
                                           required autocomplete="on">
                                    @error('payment_date')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-success">
                                        Zaktualizuj rezerwację
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
