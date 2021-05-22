@extends('layouts.app')

@section('pageTitle', 'Lista wpisów')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="text-right header col-6">
            <h1>Lista wpisów</h1>
            <br>
        </div>
        <div class="text-right col-6">
            <a href="/adminPanel/post/create" role="button" class="btn btn-success">Dodaj wpis blogowy</a>
        </div>

        <div class="col-md-12">
            <table class="table-striped thead-dark table-bordered table-hover w-100">
                <tr class="text-center">
                    <th>Zdjęcie</th>
                    <th>Tytuł</th>
                    <th>Wstęp</th>
                    <th>Akcja</th>
                </tr>

                @foreach($data as $i)
                    <tr class="text-center">
                        <td><a href="/blog/post/{{ $i->id }}" target="_blank"><img src="/storage/{{ $i->image }}" width="100" height="100" alt="image"></a></td>
                        <td>{{ $i->title }}  </td>
                        <td>{{ $i->short_description }}</td>
                        <td>
                            <a href="/blog/post/{{ $i->id }}" target="_blank" role="button" class="btn btn-success btn-sm mb-1 w-100" >Podgląd</a>
                            <a href="/adminPanel/post/{{ $i->id }}/edit" role="button" class="btn btn-primary btn-sm mb-1 w-100" >Edytuj</a>
                            <a href="/adminPanel/post/{{ $i->id }}/delete" data-id="{{$i->id}}" role="button" class="btn btn-danger btn-sm mb-1 w-100 delete-confirm">Usuń</a>
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
            title: 'Czy na pewno chcesz usunąć wpis?',
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

