@extends('layouts.app')

@section('pageTitle', 'Panel Administratora')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="header col-6">
            <h1>Panel&nbsp;Administratora</h1>
            <br>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center"><strong>Statystyki rezerwacji</strong></h5>
                    <div class="row offset-1">
                        Łączna ilość rezerwacji: &nbsp;<strong>{{ count($orders) }}</strong>
                    </div>
                    <div class="row offset-1">
                        Ilość rezerwacji w ciągu ostatnich 30 dni: &nbsp;<strong>{{ count($last30DaysOrders) }}</strong>
                    </div>
                    <div class="row offset-1">
                        Ilość rezerwacji w ciągu ostatnich 24h: &nbsp;<strong>{{ count($last24hOrders) }}</strong>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center"><strong>Statystyki strony</strong></h5>
                    <div class="row offset-1">
                        Ilość zarejestrowanych użytkowników: &nbsp;<strong>{{ count($usersAmount) }}</strong>
                    </div>
                    <div class="row offset-1 ">
                        Ilość dodanych wycieczek: &nbsp;<strong>{{ count($travelsAmount) }}</strong>
                    </div>
                    <div class="row offset-1">
                        Ilość terminów wycieczek: &nbsp;<strong>{{ count($detailsAmount) }}</strong>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-md-6 text-center">
            <h2>Panele główne</h2>

            <row>
                <div class="col-8 offset-2 mb-2">
                    <a href="/adminPanel/orders" role="button" class="btn btn-primary w-100">Panel rezerwacji</a>
                </div>
            </row>

            <row>
                <div class="col-8 offset-2 mb-2">
                    <a href="/adminPanel/travels" role="button" class="btn btn-danger w-100">Panel wycieczek</a>
                </div>
            </row>
            <row>
                <div class="col-8 offset-2 mb-2">
                    <a href="/adminPanel/posts" role="button" class="btn btn-warning w-100">Panel wpisów</a>
                </div>
            </row>
        </div>

        <div class="col-md-6 text-center">
            <h2>Szybkie dodawanie</h2>

            <row>
                <div class="col-8 offset-2 mb-2">
                    <a href="/adminPanel/travel/create" role="button" class="btn btn-success w-75">Dodaj wycieczkę</a>
                </div>
            </row>

            <row>
                <div class="col-8 offset-2 mb-2">
                    <a href="/adminPanel/post/create" role="button" class="btn btn-success w-75">Dodaj wpis</a>
                </div>
            </row>

        </div>
    </div>

</div>
@endsection

