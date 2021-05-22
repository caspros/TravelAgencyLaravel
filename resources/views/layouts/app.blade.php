<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('pageTitle')</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}">
    <link rel="icon" type="image/png" href="{{ asset('favicon.png') }}">

</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="{{asset('logo/jg-travels-logo2.png')}}" alt="logo">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/travels" style="font-size: x-large;">WYCIECZKI </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/blog" style="font-size: x-large;">BLOG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/about" style="font-size: x-large;">O&nbsp;NAS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contact" style="font-size: x-large;">KONTAKT</a>
                        </li>

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Zaloguj&nbsp;się</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">Zarejestruj&nbsp;się</a>
                                </li>
                            @endif
                        @else
                            @can('view', Auth::user()->role)
                                <li>
                                    <a href="/adminPanel/" class="btn btn-danger" role="button">ADMIN PANEL</a>
                                </li>
                            @endcan

                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{ Auth::user()->email }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="/orders/{{ Auth::user()->id }}">
                                        Moje rezerwacje
                                    </a>
                                    <a class="dropdown-item" href="/profile/{{ Auth::user()->id }}">
                                        Ustawienia profilu
                                    </a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        Wyloguj się
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4" style="min-height: 100vh;">
            @yield('content')
        </main>

        <div class="card-footer text-center">
            <div id="copyright">©Travel Agency 2021 by Kacper Śledzik</div>

            <div class="row justify-content-center">
                <table class="w-25">
                    <tr>
                        <td><a href="#">Regulamin</a></td>
                        <td><a href="#">Polityka Prywatności</a></td>
                        <td><a href="http://www.facebook.com/travel-agency">Facebook</a></td>
                        <td><a href="http://www.instagram.com/travel-agency">Instagram</a></td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</body>
</html>
