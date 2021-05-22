@extends('layouts.app')

@section('pageTitle', 'Moje zamówienia')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Moje rezerwacje</div>

                        <div class="row align-items-center">
                        <div class="col-md-12">
                            <table class="table-striped thead-dark table-bordered table-hover w-100 ">
                                <tr class="text-center">
                                    <th>Id</th>
                                    <th>Tytuł wycieczki</th>
                                    <th>Ilość osób</th>
                                    <th>Suma</th>
                                    <th>Status płatności</th>
                                    <th>Data płatności</th>
                                    <th></th>
                                </tr>
                                @if($data->isEmpty())
                                    <tr class="text-center">
                                        <td colspan="8"><strong>Brak rezerwacji</strong></td>
                                    </tr>

                                @else
                                    @foreach($data as $i)
                                    <tr class="text-center">
                                        <td>{{ $i->id }}</td>
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
                                            <a href="/order/{{$i->id}}" role="button" class="btn btn-success m-1" >Podgląd</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                @endif
                            </table>

                            <div class="row justify-content-center">
                                <div class="text-center">
                                    <br>
                                    {{ $data->links() }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
