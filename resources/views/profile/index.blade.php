@extends('layouts.app')

@section('pageTitle', 'Ustawienia profilu')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Ustawienia profilu</div>

                    <div class="card-body">
                            @csrf
                            @method('PATCH')

                            <div class="form-group row">
                                <label for="first_name" class="col-md-4 col-form-label text-md-right">Imie:</label>

                                <div class="col-md-6">
                                    <input id="first_name"
                                           class="form-control @error('first_name') is-invalid @enderror"
                                           name="first_name"
                                           value="{{ old('first_name') ?? $user->profile->first_name }}"
                                           required autocomplete="on" disabled>

                                    @error('first_name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="last_name" class="col-md-4 col-form-label text-md-right">Nazwisko:</label>

                                <div class="col-md-6">
                                    <input id="last_name"
                                           class="form-control @error('last_name') is-invalid @enderror"
                                           name="last_name"
                                           value="{{ old('last_name') ?? $user->profile->last_name }}"
                                           required autocomplete="on" disabled>

                                    @error('last_name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="city" class="col-md-4 col-form-label text-md-right">Miasto:</label>

                                <div class="col-md-6">
                                    <input id="city"
                                           class="form-control @error('city') is-invalid @enderror"
                                           name="city"
                                           value="{{ old('city') ?? $user->profile->city}}"
                                           required autocomplete="on" disabled>

                                    @error('city')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="zip_code" class="col-md-4 col-form-label text-md-right">Kod pocztowy:</label>

                                <div class="col-md-6">
                                    <input id="zip_code"
                                           class="form-control @error('zip_code') is-invalid @enderror"
                                           name="zip_code"
                                           value="{{ old('zip_code') ?? $user->profile->zip_code}}"
                                           required autocomplete="on" disabled>

                                    @error('zip_code')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }} (try XX-XXX format)</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="address1" class="col-md-4 col-form-label text-md-right">Adres 1:</label>

                                <div class="col-md-6">
                                    <input id="address1"
                                           class="form-control @error('address1') is-invalid @enderror"
                                           name="address1"
                                           value="{{ old('address1') ?? $user->profile->address1 }}"
                                           required autocomplete="on" disabled>

                                    @error('address1')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="address2" class="col-md-4 col-form-label text-md-right">Adres 2:</label>

                                <div class="col-md-6">
                                    <input id="address2"
                                           class="form-control @error('address2') is-invalid @enderror"
                                           name="address2" value="{{ old('address2') ?? $user->profile->address2 }}"
                                           required autocomplete="on" disabled>

                                    @error('address2')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="phone" class="col-md-4 col-form-label text-md-right">Numer telefonu:</label>

                                <div class="col-md-6">
                                    <input id="phone"
                                           class="form-control @error('phone') is-invalid @enderror"
                                           name="phone"
                                           value="{{ old('phone') ?? $user->profile->phone }}"
                                           required autocomplete="on" disabled>

                                    @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <a href="/profile/{{ $user->id }}/edit">Edytuj profil</a>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
