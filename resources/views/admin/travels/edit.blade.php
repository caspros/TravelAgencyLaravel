@extends('layouts.app')

@section('pageTitle', 'Edytuj wycieczkę')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div id="accordion">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                    Edycja treści wycieczki
                                </button>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse hide" aria-labelledby="headingOne" data-parent="#accordion">
                            <form method="POST" action="/adminPanel/travel/updateTravel/{{$t}}">
                                @csrf
                                @method('PATCH')

                                <div class="card-body">
                                    <div class="form-group row">
                                        <label for="title" class="col-md-2 col-form-label text-md-right">Tytuł:</label>
                                        <div class="col-md-10">
                                            <input id="title"
                                                   class="form-control @error('title')is-invalid @enderror"
                                                   name="title"
                                                   value="{{ old('title') ?? $travel->find($t)->title }}"
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
                                                      rows="5"
                                                      required autocomplete="on">{{ old('short_description') ?? $travel->find($t)->short_description }}</textarea>
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
                                            <textarea id="description"
                                                      class="form-control @error('description') is-invalid @enderror"
                                                      name="description"
                                                      rows="12"
                                                      required autocomplete="on">{{ old('description') ?? $travel->find($t)->description }}</textarea>
                                            @error('description')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="program" class="col-md-2 col-form-label text-md-right">Program:</label>
                                        <div class="col-md-10">
                                            <textarea id="program"
                                                      class="form-control @error('program') is-invalid @enderror"
                                                      name="program"
                                                      rows="15"
                                                      required autocomplete="on">{{ $travel->find($t)->program }}</textarea>
                                            @error('program')
                                            <span class="invalid-feedback" role="alert">
                                                 <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col text-center">
                                        <button type="submit" class="btn btn-success mb-3">
                                            Zaktualizuj dane
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Edycja terminów wycieczki
                                </button>
                            </h5>

                        </div>

                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body">

                                <form method="POST" action="/adminPanel/travel/updateDetails/{{$t}}">

                                    @csrf
                                    @method('PATCH')

                                    <table class="table-striped thead-dark table-bordered table-hover w-100">
                                        <tr class="text-center">
                                            <th>Id</th>
                                            <th>Cena</th>
                                            <th>Ilość uczestników</th>
                                            <th>Data</th>
                                            <th></th>
                                        </tr>

                                    @foreach($terms as $term)
                                        <tr class="text-center">
                                            <td>{{$term->id}}</td>
                                            <td>
                                                <input type="number"
                                                       min="0"
                                                       class="form-control text-center price[] @error('price') is-invalid @enderror"
                                                       name="price[]"
                                                       required autocomplete="on"
                                                       value="{{ $term->price }}">
                                                <input type="hidden" name="id[]" value="{{$term->id}}">
                                                @error('price')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </td>
                                            <td>
                                                <input type="number"
                                                       min="0"
                                                       class="form-control text-center max_participants[] @error('max_participants')is-invalid @enderror"
                                                       name="max_participants[]"
                                                       required autocomplete="on"
                                                       value="{{ $term->max_participants }}">
                                                @error('max_participants')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </td>
                                            <td>
                                                <input type="datetime-local"
                                                       class="form-control start_date[] w-50 float-left @error('start_date')is-invalid @enderror"
                                                       name="start_date[]"
                                                       required autocomplete="on"
                                                       value="{{ date('Y-m-d\TH:i', strtotime($term->start_date)) }}">
                                                @error('start_date')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                                <input type="datetime-local"
                                                       class="form-control finish_date[] w-50 float-left @error('finish_date')is-invalid @enderror"
                                                       name="finish_date[]"
                                                       required autocomplete="on"
                                                       value="{{ date('Y-m-d\TH:i', strtotime($term->finish_date)) }}">
                                                @error('finish_date')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </td>
                                            <td>
                                                <a href="/adminPanel/travel/detailsDelete/{{ $term->id }}/delete" data-id="{{$term->id}}" role="button" class="btn btn-danger btn-sm m-1 delete-confirm">Usuń</a>
                                            </td>
                                        </tr>

                                    @endforeach
                                    </table>

                                    <div class="form-group row mt-3">
                                        <div class="col text-center">
                                            <button type="submit" class="btn btn-success">
                                                Zaktualizuj dane
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $('.delete-confirm').on('click', function (event) {
                event.preventDefault();
                const url = $(this).attr('href');
                swal({
                    title: 'Czy na pewno chcesz usunąć termin wycieczki?',
                    icon: 'warning',
                    buttons: ["Anuluj", "Potwierdź"],
                }).then(function(value) {
                    if (value) {
                        window.location.href = url;
                    }
                });
            });
        </script>
@endsection
