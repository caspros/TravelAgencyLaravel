@extends('layouts.app')

@section('pageTitle', $travel->find($t)->title)

@section('content')
    <div class="container col-md-10">
        @guest

        @else
            @can('view', Auth::user()->role)
            <div class="row mb-3 justify-content-center">
                <table>
                    <tr>
                        <td class="pr-3"><a href="/adminPanel/travel/{{$travel->find($t)->id}}/edit" role="button" class="btn btn-primary w-100">Edytuj</a></td>
                        <td class="pr-3"><a href="/adminPanel/travel/{{$travel->find($t)->id}}/add_images_form" role="button" class="btn btn-success w-100">Dodaj zdjęcia</a></td>
                        <td><a href="/adminPanel/travel/{{$travel->find($t)->id}}/add_term_form" role="button" class="btn btn-success w-100">Dodaj termin</a></td>
                    </tr>
                </table>
            </div>
            @endcan
        @endguest
        <div class="row justify-content-center">
            <div>
                <a href="/storage/{{ $travel->find($t)->image }}">
                    <img src="/storage/{{ $travel->find($t)->image }}" alt="zdj" width="500" height="500">
                </a>
            </div>
        </div>

        <div class="row justify-content-center m-2">
            <h1>{{ $travel->find($t)->title }}</h1>
        </div>
        <div class="offset-2">
            <div class="row m-2 ml-5 w-75 justify-content-center">
                {{ $travel->find($t)->short_description }}
                <br><br>
            </div>
        </div>

        <div class="m-2">
            <div class="row row m-2 ml-5 justify-content-center">
                <h3>Opis wycieczki</h3>
                <br><br>
            </div>
            <div class="offset-2">
                <div class="row m-2 ml-5 w-75 justify-content-center">
                    {{ $travel->find($t)->description }}
                </div>
            </div>
        </div>

        <div class="offset-2">
            <div class="row m-2 ml-5 w-75 justify-content-center">
                <h3>Program wycieczki</h3>
            </div>

            <div class="row m-2 ml-5 w-75">
                @foreach(explode('  ', $travel->find($t)->program) as $string)
                    {{ $string }} <br>
                @endforeach
                <br>
            </div>
        </div>




        <form action="/order_confirm/" method="GET">
            <div class="form-group col-md-8 offset-2">
                <h4>Wybierz termin:</h4>
                @if($terms->isEmpty())
                    <div class="text-left">
                        <strong>Brak dostępnych terminów</strong>
                    </div>
                @else
                    <select class="form-control" name="term" id="term">
                    @foreach($terms as $term)
                        @if (($term->max_participants)-($orders->where('details_id','=',$term->id)->sum('participants'))>0)
                            <option value="{{$term->id}}">{{ $term->start_date }} - cena za osobę: {{ $term->price }} PLN</option>
                        @endif
                    @endforeach
                    </select>
                @endif
            </div>

            <div class="form-group col-md-8 offset-2">
                <h4>Wybierz ilość osób:</h4>
                <select class="form-control" name="participants" id="participants">
                    @for($i=1; $i<=15; $i++)
                        <option value="{{$i}}">{{$i}}</option>
                    @endfor
                </select>
            </div>

            <div class="row m-3 justify-content-center">
                @guest
                    <h3 class="text-danger">Zaloguj się, aby zarezerwować wycieczkę</h3>
                @else
                    @if($terms->isEmpty())
                        <button type="submit" class="btn btn-success" disabled>Rezerwuj wycieczkę</button>
                    @else
                        <button type="submit" class="btn btn-success">Rezerwuj wycieczkę</button>
                    @endif
                @endguest
            </div>
        </form>

        <div class="row m-1 mt-5 justify-content-center">
            <h3>Galeria zdjęć</h3>
        </div>

        <div class="row">

            @foreach($images as $img)
                <div class="col-sm-6 pb-4">
                    <a href="/storage/{{$img->image}}" style="cursor: zoom-in;">
                        <img src="/storage/{{$img->image}}" alt="" class="w-100 h-100">
                    </a>
                </div>
            @endforeach
        </div>

    </div>
@endsection
