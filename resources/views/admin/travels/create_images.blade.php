@extends('layouts.app')

@section('pageTitle', 'Dodaj zdjęcia')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Dodaj zdjęcia do wycieczki: {{$travel->find($t)->title}}</div>

                    <div class="card-body">
                        <form method="POST" action="/adminPanel/travel/{{$t}}/images_uploaded" accept-charset="utf-8" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <div class="form-group">
                                            <input type="file" name="images[]" id="images" multiple >
                                        </div>
                                        @error('images')
                                        <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="col-md-12 text-center">
                                        <button type="submit" class="btn btn-primary" id="submit">Prześlij zdjęcia</button>
                                    </div>


                                    <div class="col-md-12">
                                        <div class="mt-5 text-center">
                                            <h3>Pogląd wybranych zdjęć: </h3>
                                            <div class="images-preview-div" style="padding: 10px;max-width: 1000px;">

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </form>
                    </div>
                </div>


                </div>
            </div>
        </div>

    <script>
        $(function() {
            // Multiple images preview with JavaScript
            var previewImages = function(input, imgPreviewPlaceholder) {
                if (input.files) {
                    var filesAmount = input.files.length;
                    for (i = 0; i < filesAmount; i++) {
                        var reader = new FileReader();
                        reader.onload = function(event) {
                            $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(imgPreviewPlaceholder);
                        }
                        reader.readAsDataURL(input.files[i]);
                    }
                }
            };
            $('#images').on('change', function() {
                previewImages(this, 'div.images-preview-div');
            });
        });
    </script>

@endsection
