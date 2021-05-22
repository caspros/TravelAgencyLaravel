@extends('layouts.app')

@section('pageTitle', 'Lista rezerwacji')

@section('content')
<div class="container">
        <div class="row justify-content-center">
            <div class="header">
                <h1>Lista rezerwacji</h1>
                <br>
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-12">
                <table class="table-striped thead-dark table-bordered table-hover w-100 ">
                    <tr class="text-center">
                        <th>Id</th>
                        <th>E-mail</th>
                        <th>Data rezerwacji</th>
                        <th>Tytuł wycieczki</th>
                        <th>Ilość osób</th>
                        <th>Suma</th>
                        <th>Status płatności</th>
                        <th>Data płatności</th>
                        <th>Akcja</th>
                    </tr>

                    @foreach($data as $i)
                        <tr class="text-center">
                            <td>{{ $i->id }}</td>
                            <td>{{ $user->find($i->user_id)->email }}</td>
                            <td>{{ $i->created_at }}</td>
                            <td>{{ $travel->find($details->find($i->details_id)->travel_id)->title }}</td>
                            <td>{{ $i->participants }}</td>
                            <td>{{ $i->participants * $i->price }} PLN</td>
                            @if ($i->payment_status == 'brak wpłaty')
                                <td>{{ $i->payment_status }}</td>
                                <td> --- </td>
                            @else
                                <td>{{ $i->payment_status }}</td>
                                <td>{{ $i->payment_date }}</td>
                            @endif
                            <td>
                                <a href="/adminPanel/order/{{ $i->id }}/" target="_blank" role="button" class="btn btn-success btn-sm m-1" >Podgląd</a>
                                <a href="/adminPanel/order/{{ $i->id }}/edit" target="_blank" role="button" class="btn btn-primary btn-sm m-1" >Edytuj</a>
                                <a href="/adminPanel/order/{{ $i->id }}/delete" data-id="{{$i->id}}" role="button" class="btn btn-danger btn-sm m-1 delete-confirm">Usuń</a>
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
        </div>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $('.delete-confirm').on('click', function (event) {
            event.preventDefault();
            const url = $(this).attr('href');
            swal({
            title: 'Czy na pewno chcesz usunąć rezerwację? Pamiętaj, że usunie to też rezerwację u użytkownika.',
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
@endsection

