@extends('layouts.app')

@section('pageTitle', 'Lista wycieczek')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="text-right header col-6">
            <h1>Lista wycieczek</h1>
            <br>
        </div>
        <div class="text-right col-6">
            <a href="/adminPanel/travel/create" role="button" class="btn btn-success w-50">Dodaj wycieczkę</a>
        </div>

        <div class="col-md-12">
            <table class="table-striped thead-dark table-bordered table-hover w-100">
                <tr class="text-center">
                    <th>Zdjęcie</th>
                    <th>Tytuł</th>
                    <th>Krótki opis</th>
                    <th>Opis</th>
                    <th>Akcja</th>
                    <th>Dodaj</th>
                </tr>

                @foreach($data as $i)

                    <tr class="text-center">
                        <td><a href="/travel/{{ $i->travel_id }}"><img src="/storage/{{ $i->image }}" width="100" height="100" alt="image"></a></td>
                        <td>{{ $i->title }}</td>
                        <td>{{ $i->short_description }}</td>
                        <td>{{ $i->description }}</td>
                        <td>
                            <a href="/travel/{{ $i->travel_id }}" target="_blank" role="button" class="btn btn-success btn-sm mb-1 w-100">Podgląd</a>
                            <a href="/adminPanel/travel/{{ $i->travel_id }}/edit" role="button" class="btn btn-primary btn-sm mb-1 w-100">Edytuj</a>
                            <a href="/adminPanel/travel/{{ $i->travel_id }}/delete" data-id="{{$i->travel_id}}" role="button" class="btn btn-danger btn-sm w-100 delete-confirm">Usuń</a>
                        </td>
                        <td>
                            <a href="/adminPanel/travel/{{$i->travel_id}}/add_images_form" target="_blank" role="button" class="btn btn-outline-secondary btn-sm mb-1 w-100" >Zdjęcia</a>
                            <a href="/adminPanel/travel/{{$i->travel_id}}/add_term_form" target="_blank" role="button" class="btn btn-outline-secondary btn-sm mb-1 w-100" >Termin</a>
                        </td>
                    </tr>

                @endforeach
            </table>

            <div class="row justify-content-center">
                <div class="text-center">
                    <br>
                    {{ $data->links() }}
                </div>
            </div>


        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $('.delete-confirm').on('click', function (event) {
            event.preventDefault();
            const url = $(this).attr('href');
            swal({
            title: 'Czy na pewno chcesz usunąć wycieczkę?',
            icon: 'warning',
            buttons: ["Anuluj", "Potwierdź"],
            }).then(function(value) {
            if (value) {
            window.location.href = url;
            }
            });
            });
        </script>

    </div>
</div>
@endsection

