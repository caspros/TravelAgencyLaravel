@extends('layouts.app')

@section('pageTitle', 'Edytuj wpis')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Edytuj wpis</div>

                    <div class="card-body">
                        <form method="POST" action="/adminPanel/post/{{$p}}">
                            @csrf
                            @method('PATCH')

                            <div class="form-group row">
                                <label for="title" class="col-md-2 col-form-label text-md-right">Tytuł:</label>
                                <div class="col-md-10">
                                    <input id="title"
                                           type="text"
                                           class="form-control @error('title')is-invalid @enderror"
                                           name="title"
                                           value="{{ old('title') ?? $post->find($p)->title }}"
                                           required autocomplete="on">
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
                                    <textarea id="short_description"
                                              class="form-control @error('short_description')is-invalid @enderror"
                                              name="short_description"
                                              rows="8"
                                              required autocomplete="on">{{ old('short_description') ?? $post->find($p)->short_description }}</textarea>
                                    @error('short_description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="long_description_title" class="col-md-2 col-form-label text-md-right">Nagłówek treści:</label>
                                <div class="col-md-10">
                                    <input id="long_description_title"
                                           type="text"
                                           class="form-control @error('long_description_title')is-invalid @enderror"
                                           name="long_description_title"
                                           value="{{ old('long_description_title') ?? $post->find($p)->long_description_title }}"
                                           required autocomplete="on">
                                    @error('long_description_title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="long_description" class="col-md-2 col-form-label text-md-right">Treść:</label>
                                <div class="col-md-10">
                                    <textarea id="long_description"
                                              class="form-control @error('long_description') is-invalid @enderror"
                                              name="long_description"
                                              rows="20"
                                              required autocomplete="on">{{ old('long_description') ?? $post->find($p)->long_description }}</textarea>
                                    @error('long_description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="summary_title" class="col-md-2 col-form-label text-md-right">Nagłówek podsumowania:</label>
                                <div class="col-md-10">
                                    <input id="summary_title" type="text"
                                           class="form-control @error('summary_title')is-invalid @enderror"
                                           name="summary_title"
                                           value="{{ old('summary_title') ?? $post->find($p)->summary_title }}"
                                           required autocomplete="on">
                                    @error('summary_title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="summary" class="col-md-2 col-form-label text-md-right">Podsumowanie:</label>
                                <div class="col-md-10">
                                    <textarea id="summary"
                                              class="form-control @error('summary')is-invalid @enderror"
                                              name="summary"
                                              rows="8"
                                              required autocomplete="on">{{ old('summary') ?? $post->find($p)->summary }}</textarea>
                                    @error('summary')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row mb-0 ">
                                <div class="col text-center">
                                    <button type="submit" class="btn btn-success">
                                        Zaktualizuj post
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
