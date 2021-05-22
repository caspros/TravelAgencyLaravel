@extends('layouts.app')

@section('pageTitle', 'Dodaj terminy')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">Dodaj termin do wycieczki: <strong>{{$travel->find($t)->title}}</strong></div>

                    <div class="form-group">
                        <h4 class="p-2">Dotychczasowe terminy:</h4>
                        <select class="form-control">
                            @foreach($terms as $term)
                                <option value="{{$term->id}}">Data: {{ $term->start_date }} Cena: {{ $term->price }} PLN Ilość uczestników: {{ $term->max_participants }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="/adminPanel/travel/{{$t}}/term_added">
                            @csrf

                            <div class="form-group row">
                                <label class="col-md-3 col-form-label"><strong>Data rozp.:</strong></label>
                                <label class="col-md-3 col-form-label"><strong>Data zak.:</strong></label>
                                <label class="col-md-3 col-form-label"><strong>Cena:</strong></label>
                                <label class="col-md-3 col-form-label"><strong>Ilość os.:</strong></label>

                                <div class="input-group control-group increment">
                                    <input type="datetime-local" required class="form-control" name="start_date[]">
                                    <input type="datetime-local" required class="form-control" name="finish_date[]">
                                    <input type="number" required class="form-control" name="price[]">
                                    <input type="number" required class="form-control" name="max_participants[]">
                                    <div class="input-group-btn">
                                        <button class="btn btn-success" type="button">Add</button>
                                    </div>
                                </div>
                                <div class="clone hide w-100">
                                    <div class="control-group input-group" style="margin-top:10px;">
                                        <input type="datetime-local" required class="form-control" name="start_date[]">
                                        <input type="datetime-local" required class="form-control" name="finish_date[]">
                                        <input type="number" required class="form-control" name="price[]">
                                        <input type="number" required class="form-control" name="max_participants[]">
                                        <div class="input-group-btn">
                                            <button class="btn btn-danger" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-10 text-center">
                                    <button type="submit" class="btn btn-primary">
                                        Dodaj terminy
                                    </button>
                                </div>
                            </div>
                        </form>

                        @if (count($errors) >0)
                            <div class="alert alert-danger">
                                <strong>Sorry! </strong> There were some problems with your input. <br><br>
                                <ul>
                                    @foreach($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        @if(session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $(".btn-success").click(function(){
                var html = $(".clone").html();
                $(".increment").after(html);
            });
            $("body").on("click",".btn-danger", function() {
                $(this).parents(".control-group").remove();
            });
        });
    </script>
@endsection
