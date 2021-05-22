@extends('layouts.app')

@section('pageTitle', 'Dodaj wycieczkę')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">Dodaj wycieczkę</div>

                    <div class="card-body">
                        <form method="POST" action="/adminPanel/travel/" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group row">
                                <label for="title" class="col-md-2 col-form-label text-md-right">Tytuł:</label>
                                <div class="col-md-10">
                                    <input id="title" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" required autocomplete="on">
                                    @error('title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="short_description" class="col-md-2 col-form-label text-md-right">Krótki opis:</label>
                                <div class="col-md-10">
                                    <textarea id="short_description" class="form-control @error('short_description') is-invalid @enderror" name="short_description" rows="3" required autocomplete="on">{{ old('short_description') }}</textarea>
                                    @error('short_description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="description" class="col-md-2 col-form-label text-md-right">Opis:</label>
                                <div class="col-md-10">
                                    <textarea id="description" class="form-control @error('description') is-invalid @enderror" name="description" rows="7" required autocomplete="on">{{ old('description') }}</textarea>
                                    @error('description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row"><label for="program" class="col-md-2 col-form-label text-md-right">Program:</label>
                                <div class="col-md-10">
                                    <textarea id="program" class="form-control @error('program') is-invalid @enderror" name="program" required autocomplete="on" rows="6">{{ old('program') }}</textarea>
                                    @error('program')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="price" class="col-md-2 col-form-label text-md-right">Cena / os.:</label>
                                <div class="col-md-6">
                                    <input id="price" type="number" min="0" class="form-control @error('price') is-invalid @enderror" name="price" value="{{ old('price') }}" required autocomplete="on">
                                    @error('price')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="max_participants" class="col-md-2 col-form-label text-md-right">Ilość osób:</label>
                                <div class="col-md-6">
                                    <input id="max_participants" type="number" min="0" class="form-control @error('max_participants') is-invalid @enderror" name="max_participants" value="{{ old('max_participants') }}" required autocomplete="on">
                                    @error('max_participants')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="start_date" class="col-md-2 col-form-label text-md-right">Data rozp.:</label>
                                <div class="col-md-6">
                                    <input id="start_date" type="datetime-local" class="form-control @error('start_date') is-invalid @enderror" name="start_date" value="{{ old('start_date') }}" required autocomplete="on">
                                    @error('start_date')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="finish_date" class="col-md-2 col-form-label text-md-right">Data zak.:</label>
                                <div class="col-md-6">
                                    <input id="finish_date" type="datetime-local" class="form-control @error('finish_date') is-invalid @enderror" name="finish_date" value="{{ old('finish_date') }}" required autocomplete="on">
                                    @error('finish_date')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="image" class="col-md-12 col-form-label" style="text-align: center;">Załącz zdjęcie wycieczki:</label>
                                <div class="custom-file col-md-10 offset-2">
                                    <input type="file" class="custom-file-input" id="image" lang="pl-Pl" name="image">
                                    <label class="custom-file-label" id="customFileLang">Wybierz pliki</label>
                                </div>

                                @error('image')
                                <div class="col-md-12 text-center m-2">
                                    <strong class="alert-danger">{{ $message }}</strong>
                                </div>
                                @enderror

                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-10 text-center">
                                    <button type="submit" class="btn btn-primary">
                                        Dodaj wycieczkę
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
