-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Maj 2021, 20:04
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `travel_agency`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `max_participants` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `details`
--

INSERT INTO `details` (`id`, `travel_id`, `start_date`, `finish_date`, `price`, `max_participants`, `created_at`, `updated_at`) VALUES
(12, 2, '2020-12-24 09:00:00', '2020-12-24 21:00:00', 99.00, 50, '2020-12-22 20:43:19', '2020-12-22 20:43:19'),
(13, 3, '2020-12-25 09:00:00', '2020-12-25 23:30:00', 89.00, 45, '2020-12-22 20:44:53', '2020-12-22 20:44:53'),
(14, 4, '2020-12-26 09:00:00', '2020-12-26 19:00:00', 45.00, 56, '2020-12-22 20:45:57', '2020-12-22 20:45:57'),
(15, 5, '2020-12-28 09:00:00', '2020-12-28 22:00:00', 79.00, 44, '2020-12-22 20:46:35', '2020-12-22 20:46:35'),
(16, 2, '2020-12-28 10:00:00', '2020-12-28 23:00:00', 154.00, 49, '2020-12-22 21:05:54', '2020-12-22 21:05:54'),
(18, 4, '2020-12-30 11:00:00', '2020-12-30 22:00:00', 100.00, 39, '2020-12-22 21:06:41', '2020-12-22 21:06:41'),
(19, 4, '2020-12-31 11:00:00', '2020-12-31 22:00:00', 75.00, 89, '2020-12-22 21:06:41', '2020-12-22 21:06:41'),
(20, 6, '1990-12-22 14:57:00', '1984-12-16 10:28:00', 138.00, 34, '2020-12-22 21:07:46', '2020-12-22 21:07:46'),
(21, 7, '1993-06-24 03:32:00', '2019-06-04 19:52:00', 378.00, 40, '2020-12-22 21:08:09', '2020-12-22 21:08:09'),
(22, 8, '2020-12-25 10:42:00', '2020-12-25 07:12:00', 57.00, 55, '2020-12-22 21:08:34', '2020-12-22 21:08:34'),
(23, 9, '1976-08-23 19:54:00', '1989-08-05 17:49:00', 726.00, 52, '2020-12-22 21:08:55', '2020-12-22 21:08:55'),
(25, 6, '2020-12-23 08:34:00', '2002-03-28 09:25:00', 984.00, 33, '2020-12-22 21:10:08', '2020-12-22 21:10:08'),
(26, 6, '2020-12-24 05:10:00', '2018-07-01 00:18:00', 538.00, 22, '2020-12-22 21:10:08', '2020-12-22 21:10:08'),
(27, 9, '2021-01-01 06:56:00', '1979-03-08 08:46:00', 894.00, 27, '2020-12-22 21:10:28', '2020-12-22 21:10:28'),
(28, 9, '2021-01-08 16:55:00', '2007-11-09 11:38:00', 415.00, 26, '2020-12-22 21:10:28', '2020-12-22 21:10:28'),
(29, 2, '2020-12-27 14:51:00', '2019-04-01 00:42:00', 571.00, 8, '2020-12-26 13:07:45', '2020-12-26 13:07:45'),
(30, 2, '2021-01-02 05:21:00', '2000-06-10 16:46:00', 1000.00, 87, '2020-12-26 13:07:45', '2020-12-26 13:07:45'),
(31, 2, '2021-01-02 05:54:00', '2002-11-02 04:29:00', 708.00, 42, '2020-12-26 13:07:45', '2020-12-26 13:07:45'),
(32, 11, '1987-06-25 18:54:00', '2019-11-18 10:34:00', 941.00, 98, '2021-01-02 19:35:55', '2021-01-02 19:35:55'),
(34, 13, '1989-06-15 16:06:00', '2014-04-24 13:16:00', 453.00, 24, '2021-01-15 10:32:27', '2021-01-15 10:32:27'),
(35, 2, '2021-05-29 19:25:00', '2021-05-29 19:25:00', 155.00, 50, '2021-05-22 15:26:24', '2021-05-22 15:26:24'),
(36, 2, '2023-10-11 19:32:00', '2023-09-06 19:26:00', 333.00, 45, '2021-05-22 15:26:24', '2021-05-22 15:26:24'),
(37, 2, '2021-05-29 19:25:00', '2021-05-29 19:25:00', 1199.00, 45, '2021-05-22 15:26:24', '2021-05-22 15:26:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `images`
--

INSERT INTO `images` (`id`, `travel_id`, `image`, `created_at`, `updated_at`) VALUES
(4, 2, 'gallery/3mpOTItwzNLMqEOII6gcQKSKtEq4nytEB7rKua36.jpeg', '2020-12-26 13:06:42', '2020-12-26 13:06:42'),
(5, 2, 'gallery/WH1Qm70mVbBX0ApMUviD7WdswNrM7GmZx8lz8UFm.jpeg', '2020-12-26 13:06:43', '2020-12-26 13:06:43'),
(6, 2, 'gallery/I9rtnKnQyFBqSWHpxrGYtXKwPDPT3snNOyAzRo4k.jpeg', '2020-12-26 13:06:43', '2020-12-26 13:06:43'),
(7, 2, 'gallery/Ix7tPEESKNOrZDiwTPYxrqogCgncrPog4LV3pBCp.jpeg', '2020-12-26 13:06:43', '2020-12-26 13:06:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_10_31_162719_create_profiles_table', 1),
(6, '2020_10_31_164145_create_roles_table', 1),
(7, '2020_11_01_172659_create_travel_table', 1),
(8, '2020_11_01_172839_create_details_table', 1),
(9, '2020_11_21_085338_create_images_table', 1),
(10, '2020_11_26_155434_create_posts_table', 1),
(11, '2020_12_05_110655_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `details_id` bigint(20) UNSIGNED NOT NULL,
  `participants` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `payment_status`, `payment_date`, `user_id`, `details_id`, `participants`, `price`, `created_at`, `updated_at`) VALUES
(7, 'brak wp??aty', NULL, 1, 28, 10, 415, '2021-01-02 19:56:40', '2021-01-02 19:56:40'),
(8, 'brak wp??aty', NULL, 7, 37, 2, 1199, '2021-05-22 15:31:44', '2021-05-22 15:31:44'),
(9, 'brak wp??aty', NULL, 7, 37, 5, 1199, '2021-05-22 15:31:50', '2021-05-22 15:31:50'),
(10, 'brak wp??aty', NULL, 7, 37, 2, 1199, '2021-05-22 15:31:56', '2021-05-22 15:31:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `short_description`, `long_description_title`, `long_description`, `summary_title`, `summary`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dolina Pa??ac??w i Ogrod??w Kotliny Jeleniog??rskiej', 'magna-cupiditate-eu', 'W sercu Sudet??w le??y kraina, gdzie mo??na podziwia?? wspania??e krajobrazy, a tak??e odkrywa?? zabytki. Samych zamk??w, pa??ac??w oraz dwor??w jest tu oko??o trzydziestu. Dlatego te?? na pocz??tku XIX wieku obszar ten nazwano \"??l??skim Elizjum\", por??wnj??c go do zamk??w i pa??ac??w nad Dolin?? Loary we Francji. Swoje rezydencje zak??ada??y tu naj??wietniejsze rody europejskie. Opr??cz arystokacji przybywali to arty??ci, filozofowie oraz mi??o??nicy przyrody (np. Fryderyk Chopin, Johan Wolfgang von Goethe, John Quincy Adams).', 'Dolina Pa??ac??w i Ogrod??w obejmuje niemal 30 obiekt??w architektury ??wieckiej. Znajdziemy tu ??redniowieczne wie??e mieszkalne, zamki, renesansowe dwory i barokowe pa??ace.', 'Wi??kszo???? rezydencji jest wpisanych na List?? Pomnik??w Historii (najwy??sze wyr????nienie w Polsce) oraz s?? podj??te dzia??ania zmierzaj??ce do wpisania Doliny Pa??ac??w i Ogrod??w na List?? ??wiatowego Dziedzictwa Kulturalnego i Przyrodniczego UNESCO. Kluczem okre??laj??cym kryteria wpisu by?? krajobraz kulturowy zwi??zany z rezydencjami szlacheckimi, otoczonymi rozleg??ymi parkami romantycznymi, stanowi??cymi w XIX wieku jednorodn?? ca??o????.', '11 obiekt??w Doliny Pa??ac??w i Ogrod??w zosta??o wpisanych na Pomnik Historii Prezydenta RP pod nazw?? \"Pa??ace i parki krajobrazowe Kotliny Jeleniog??rskiej\". S?? to:', '???	Bukowiec ??? zesp???? pa??acowo-parkowy, gm. Mys??akowice  \r\n???	Jelenia G??ra ??? zesp???? pa??acowo-parkowy ???Paulinum???  \r\n???	Jelenia G??ra ??? zesp???? pa??acowo-parkowy Schaffgotsch??w w Cieplicach  \r\n???	Karpniki ??? zesp???? pa??acowo-parkowy, gm. Mys??akowice  \r\n???	Karpniki ??? willa ???D??bowy Dw??r??? z parkiem  \r\n???	Kowary ??? zesp???? pa??acowo-parkowy w Ciszycy  \r\n???	??omnica ??? zesp???? pa??acowo-parkowy, gm. Mys??akowice  \r\n???	Mys??akowice ??? zesp???? pa??acowo-parkowy  \r\n???	Stanisz??w G??rny nr 100 ??? zesp???? pa??acowo-parkowy, gm. Podg??rzyn  \r\n???	Wojan??w ??? zesp???? pa??acowo-parkowy, gm. Mys??akowice  \r\n???	Wojan??w-Bobr??w ??? zesp???? pa??acowo-gospodarczy, gm. Mys??akowice', 'blog/bYIMIFsvhN81sSItTKol8YQbP58bJxPf6P6QWabw.jpeg', '2020-12-20 17:44:33', '2020-12-20 17:44:33'),
(2, 'Jak dobrze si?? spakowa?? na wycieczk???', 'jak-dobrze-sie-spakowac-na-wycieczke', 'Na tak postawione, do???? proste z pozoru pytanie, jedyna sensowna odpowied?? brzmi: to zale??y. Istotne jest bowiem gdzie, jak d??ugo i w jakich warunkach b??dziemy w??drowa??, a co za tym idzie ??? z jakim plecakiem. A wi??c po kolei. Pierwsza zasada brzmi ??? nie bierz zbyt du??o. Podstawowa apteczka, czo????wka, mapa i kompas, na??adowany telefon, jedzenie i picie, co?? cieplejszego i kurtka na deszcz wydaje si?? optymalnym zestawem na wi??kszo???? jednodniowych wyj????. Z wy????czeniem jednodniowych wspinaczek czy wycieczek lodowcowych, kt??re wymagaj?? zabrania specjalistycznego sprz??tu. Warto w tym miejscu zwr??ci?? uwag?? na fakt, ??e outdoorowe marki staraj?? si??, by sprz??t oraz odzie?? by??y nie tylko bardziej funkcjonalne, ale i l??ejsze oraz bardziej kompaktowe. Miejsce klasycznych, grubszych polar??w zajmuj?? aktualnie nowoczesne syntetyczne ociepliny. Charakteryzuj?? si?? niewielkim rozmiarem po spakowaniu (cz??sto mieszcz?? si?? do specjalnej kieszeni b??d??cej jednocze??nie pokrowcem) przy w??a??ciwej izolacji.', 'Jak spakowa?? plecak ??? planuj z wyprzedzeniem', 'Planuj??c g??rsk?? wycieczk?? kluczow?? kwesti?? jest to jak spakowa?? plecak. Praktyka dowodzi, ??e liczba niezb??dnych rzeczy ro??nie wprost proporcjonalnie do wielko??ci plecaka. Co oznacza, ??e niezale??nie od tego, jak du??y plecak ze sob?? we??miemy, prawdopodobnie i tak b??dzie on (prawie) pe??ny. Wi??ksza pojemno???? zach??ca do mno??enia ekwipunku, ale je??li uda si?? nie wype??ni?? plecaka po brzegi, warto skorzysta?? z pas??w kompresyjnych. Druga istotna kwestia, zwi??zana zar??wno z doborem odpowiedniego plecaka, jak i ekwipunku to planowanie. Nawet jednodniowa wycieczka mo??e okaza?? si?? problematyczna. Dlatego zastanawiaj??c si?? jak spakowa?? plecak nale??y odpowiedzie?? sobie na kilka podstawowych pyta??: - Jak d??ugo b??dzie trwa??a wycieczka? Kr??tki wypad na Trzy Korony, mi??dzy porann?? kaw?? a plackiem po zb??jnicku w lokalnej karczmie? A mo??e raczej trekking w Gorganach? W zale??no??ci od tego, na co si?? zdecydujemy, nasze potrzeby wzgl??dem ekwipunku mog?? si?? zmniejszy?? lub powi??kszy??. - Jaka ma by?? pogoda? Dzisiejsze prognozy pogody s?? zwykle do???? dok??adne, sprawd??my wi??c nie tylko to, czy przewidywany jest opad, ale tak??e jaka b??dzie temperatura, si??a wiatru czy zachmurzenie ??? dopiero uwzgl??dnienie tych wszystkich parametr??w da nam ogl??d sytuacji. G??ry bywaj?? nieprzewidywalne, dlatego sta??ym elementem na ka??d?? wypraw?? powinna by?? kurtka przeciwdeszczowa. - Po jakim terenie b??dziemy si?? porusza??? Trasa prowadzi lasem czy ods??oni??t?? grani??? B??dziemy wychodzi?? na ods??oni??ty wierzcho??ek czy nie? Jak du??e jest przewy??szenie, kt??re mamy do pokonania? To tylko kilka z pyta??, jakie powinni??my sobie zada?? staraj??c si?? dobra?? ekwipunek do charakteru wyprawy. Uzyskanie odpowiedzi na te podstawowe kwestie pomo??e w odpowiednim dobraniu ekwipunku do warunk??w. Dobrym rozwi??zaniem jest pakowanie si?? z wyprzedzeniem, co daje nieco wi??cej czasu na przemy??lenie, czy na pewno o niczym nie zapomnieli??my. To r??wnie?? dobry moment na ewentualn?? redukcj?? ilo??ci rzeczy.', 'Plecak to nie choinka', 'Plecaki nie s?? wodoodporne i nawet te impregnowane, przy kilkugodzinnym deszczu w ko??cu wpuszcz?? wod?? do ??rodka. Rozwi??zaniem mo??e by?? specjalny, przeciwdeszczowy pokrowiec na plecak, kt??ry jest do????czony do cz????ci modeli. Mo??liwe jest te?? dokupienie go dodatkowo. Pakowanie plecaka to czynno???? zas??uguj??ca na to, by po??wi??ci?? jej troszk?? wi??cej czasu. Od tego w jaki spos??b rozmie??cimy wszystkie niezb??dne rzeczy zale??e?? b??dzie nasz komfort (a czasem tak??e bezpiecze??stwo i zdrowie). Warto wi??c z g??ow?? przygotowa?? si?? do wyjazdu, wcze??niej kompletuj??c ekwipunek i odpowiednio go pakuj??c. Udanych wycieczek!', 'blog/efSlsj2XBIDKouyj1xNdFvgxKOI2nV6PUbuBDyd7.jpeg', '2020-12-22 17:52:39', '2020-12-22 17:52:39');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `city`, `zip_code`, `address1`, `address2`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Prescott', 'Goodwin', 'Aut et nisi eu est', '94-833', '19 White Milton Freeway', 'Sed velit voluptas e', '+1 (375) 381-3847', '2020-12-20 15:40:36', '2020-12-26 13:08:26'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-03 15:51:39', '2021-01-03 15:51:39'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-03 16:07:19', '2021-01-03 16:07:19'),
(5, 5, 'Cassidy', 'Farley', 'Nisi et quis quae et', '35-240', '291 North First Court', 'Asperiores eum quo a', '+1 (101) 742-4292', '2021-05-22 14:54:17', '2021-05-22 14:54:28'),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-22 15:26:49', '2021-05-22 15:26:49'),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-22 15:31:37', '2021-05-22 15:31:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isAdmin` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `roles`
--

INSERT INTO `roles` (`id`, `isAdmin`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-12-20 15:40:36', '2020-12-20 15:40:36'),
(2, 0, 2, '2021-01-03 15:51:39', '2021-01-03 15:51:39'),
(3, 0, 3, '2021-01-03 16:07:19', '2021-01-03 16:07:19'),
(5, 0, 5, '2021-05-22 14:54:17', '2021-05-22 14:54:17'),
(6, 0, 6, '2021-05-22 15:26:49', '2021-05-22 15:26:49'),
(7, 0, 7, '2021-05-22 15:31:37', '2021-05-22 15:31:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `travel`
--

CREATE TABLE `travel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `travel`
--

INSERT INTO `travel` (`id`, `title`, `slug`, `short_description`, `description`, `program`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Drezno', 'drezno', 'Stolica i per??a Saksonii, ciesz??ca oczy turyst??w nieprzemijaj??cym blaskiem. Wycieczka z wieloma atrakcjami.', 'Przejazd przez J??drzychowice i Bautzen. Zwiedzanie kompleksu pa??acowego Zwinger ??? Dziedziniec, K??pielisko Nimf, Galeria Malarstwa Starych Mistrz??w (Rembrandt, Rubens, Rafael, Tycjan, Canaletto, Durer i inni), Muzeum Porcelany. Plac Teatralny z Oper?? Sempera. Zamek Drezde??ski: Skarbiec ??? Zielone Sklepienie, Zbrojownia, Komnata Turecka. Spacer Tarasami Br??hla. Katolicki Ko??ci???? Dworski, Ko??ci???? Maryjny. Czas wolny w centrum miasta.', '07:00		wyjazd z Karpacza  \r\n09:00	 	przekroczenie granicy w J??drzychowicach  \r\n11:00	 	przyjazd, rozpocz??cie zwiedzania  \r\n15:00	 	czas wolny na terenie Zwingera (mo??liwo???? indywidualnego zwiedzania wn??trz)  \r\n17:00	 	wyjazd z Drezna  \r\n20:30	 	powr??t do Karpacza  \r\n* podane godziny s?? orientacyjne i z przyczyn niezale??nych od Biura mog?? ulec niewielkiej zmianie  \r\n* mo??liwo???? wyjazdu z Jeleniej G??ry, Zgorzelca i innych (patrz lista przystank??w)', 'uploads/MbzqFldDu7T8y18rSTlgNMwuSiGPjxDw6NVFIn4g.jpeg', '2020-12-22 20:43:19', '2020-12-22 20:43:19'),
(3, 'Wiede??', 'wieden', 'Najbogatszy program zwiedzania miasta, w kt??rym historia i kultura splataj?? si?? w jedno.', 'Wycieczka do Wiednia z naszym biurem to wyb??r doskona??ej jako??ci realizowanych us??ug. Oferujemy Pa??stwu przemy??lany, najbogatszy program zwiedzania spo??r??d innych biur organizuj??cych wycieczk?? do Wiednia z Karpacza i okolic. Nasza wycieczka realizowana jest ju?? od ponad 10 lat, dzi??ki czemu wiemy, jak powinna wygl??da??, aby pozosta??a w Pa??stwa pami??ci na d??ugo.\r\nZaczynamy ju?? na poziomie wyboru autokaru, jakim jest bezpieczny, luksusowy, wysokopok??adowy, klimatyzowany autokar, obs??ugiwany na trasie przez do??wiadczonych i bardzo sympatycznych kierowc??w. Wycieczk?? prowadzi SUPER-PRZEWODNIK, dla kt??rego Wiede?? nie ma ??adnych tajemnic. Potrafi on w spos??b przyst??pny i interesuj??cy opowiedzie?? dzieje tego niezwyk??ego miasta, ale tak??e doradzi??, gdzie wypi?? najlepsz?? wiede??sk?? kaw?? i zje???? kawa??ek Sachertorte. A jak wygl??da program?\r\nPrzejazd przez Czechy do Austrii. Przerwa na granicy czesko-austriackiej (??niadanie, toaleta, drobne zakupy). Zwiedzanie Wiednia: wjazd autokarem na wzg??rze Kahlenberg ??? panorama miasta. Przejazd przez urocz?? dzielnic?? winiarzy Grinzing do centrum miasta. Spacer po niezwyk??ej pod wzgl??dem architektonicznym dzielnicy Hundertwassera. Przejazd Ringiem Wiede??skim, na trasie budynki m. in. Opery Wiede??skiej i Parlamentu. Spacer po mie??cie: Belweder, Stare Miasto z Katedr?? ??w. Szczepana, Rezydencja Cesarska Hofburg, Plac Marii Teresy. Czas wolny.', '23:00		 	(??roda) wyjazd z Karpacza  \r\n05:00		 	granica czesko-austriacka, przerwa (ok. 45 min) na dawnej strefie wolnoc??owej, mo??liwo???? porannej toalety, zakup??w, zjedzenia ??niadania, wypicia kawy  \r\n07:30		 	przyjazd do Wiednia, rozpocz??cie zwiedzania ??? wjazd na Kahlenberg ??? to wzg??rze g??ruj??ce nad Wiedniem, miejsce glorii Jana III Sobieskiego w bitwie z Turkami, miejsce ??ci??le zwi??zane z polsk?? histori??, miejsce, kt??re odwiedzamy jako jedyni z karpackich organizator??w wycieczki do Wiednia!  \r\n08:30		 	przejazd przez jedn?? z najstarszych cz????ci Wiednia, dzielnic?? winiarzy ??? Grunzig  \r\n09:00		 	spacer przez dzielnic?? Hundertwassera, niezwykle barwn??, pe??n?? krzywizn i zaskakuj??cych pomys????w architektonicznych; chwila wolnego czasu na pierwsz?? wiede??sk?? kaw??  \r\n10:00		 	Belveder ??? spacer po jednym z najpi??kniejszych w Wiedniu barokowych za??o??e?? parkowo-pa??acowych  \r\n11:00		 	przejazd przez Ring Wiede??ski, na trasie Opera Wiede??ska, Plac Marii Teresy, Parlament, Teatr, Ratusz i Ko??ci???? Wotywny  \r\n12:00		 	rozpocz??cie spaceru i zwiedzania przy pomniku Z??otego Straussa. Na trasie rezydencja cesarska Hofburg, Stare Miasto z reprezentacyjnymi, najbogatszymi ulicami Wiednia: Graben i Kohlmarkt, plac z Katedr?? ??w. Szczepana, czas wolny  \r\n16:00		 	wyjazd z Wiednia  \r\n17:30		 	przerwa w Czechach na obiad (p??atny dodatkowo przez uczestnik??w wycieczki, ok. 200 koron/os.)  \r\n22:45	powr??t do Karpacza  \r\n	  * podane godziny s?? orientacyjne i z przyczyn niezale??nych od Biura mog?? ulec niewielkiej zmianie.\r\n* mo??liwo???? wyjazdu z Jeleniej G??ry, Szklarskiej Por??by i innych (patrz lista przystank??w).', 'uploads/aausja1KTDiXXE40Oe51grL0HIQhVkDOpFIviseJ.jpeg', '2020-12-22 20:44:53', '2020-12-22 20:44:53'),
(4, 'CZESKI RAJ', 'czeski-raj', 'Wizyta w krainie ska?? i kamieni szlachetnych, jaski?? i skalnych miast, zamk??w, rycerzy i??? rozb??jnika Rumcajsa.', 'Wycieczka dla mi??o??nik??w pi??knych krajobraz??w, ale r??wnie??  tego, co kryje w sobie wn??trze ziemi. To wizyta w krainie ska?? i kamieni szlachetnych, jaski?? i skalnych miast, zamk??w, rycerzy i??? rozb??jnika Rumcajsa. W programie zwiedzanie jaskini dolomitowej w Bozkovie (40-minutowy spacer podziemn?? tras?? turystyczn??), spacer przez prachovskie skalne miasto z wej??ciem na punkty widokowe w wy??szych partiach ska??, wizyta w ruinach zamku Trosky ??? symbolu Czeskiego Raju, a na koniec ??? czas wolny w miasteczku Jicin, znanym z przyg??d rozb??jnika Rumcajsa.', '08:00 wyjazd z Karpacza  \r\n09:00 przekroczenie granicy Jakuszyce-Harrachov  \r\n10:30 zwiedzanie Bozkovskich Dolomitowych Jaskin  \r\n12:00 zwiedzanie Zamku Trosky  \r\n14:00 zwiedzanie Prachovskich Ska??  \r\n16:30 czas wolny w Jicinie  \r\n17:45 wyjazd  \r\n20:00 powr??t do Karpacza  \r\n  * podane godziny s?? orientacyjne i z przyczyn niezale??nych od Biura mog?? ulec niewielkiej zmianie.\r\n* mo??liwo???? wyjazdu z Jeleniej G??ry, Szklarskiej Por??by i innych (patrz lista przystank??w).', 'uploads/q9a0TGhnpbaxPhkW2XJ7gVXC1MhsBwEkTe803CfH.jpeg', '2020-12-22 20:45:57', '2020-12-22 20:45:57'),
(5, 'SAKSO??SKA SZWAJCARIA', 'saksonska-szwajcaria', 'Co?? dla mi??o??nik??w skalnych miast, twierdz i zamk??w. Przygotuj si?? na zapieraj??ce dech w piersi widoki.', 'Przejazd przez J??drzychowice. Bastei - spacer w??r??d niesamowitych, piaskowcowych form skalnych, niezapomniane widoki na prze??om ??aby z most??w i platform widokowych zawieszonych na ska??ach. Przejazd do twierdzy Konigstein - zwiedzanie warowni wybudowanej na wysokiej, piaskowcowej skale. Przejazd do Pilnitz - spacer po przepi??knych ogrodach otaczaj??cych pa??ac - letni?? rezydencj?? hrabiny Cosel. Czas wolny.', '07:00 wyjazd z Karpacza  \r\n09:00 przekroczenie granicy w J??drzychowicach  \r\n11:00 rozpocz??cie zwiedzania: Rezerwat ska?? Bastei  \r\n13:00 twierdza Konigstein  \r\n15:15 spacer po parku w Pilnitz  \r\n16:00 czas wolny  \r\n16:45 wyjazd  \r\n20:30 powr??t do Karpacza  \r\n  * podane godziny s?? orientacyjne i z przyczyn niezale??nych od Biura mog?? ulec niewielkiej zmianie.\r\n* mo??liwo???? wyjazdu z Jeleniej G??ry, Zgorzelca i innych (patrz lista przystank??w).', 'uploads/Tfwgs4XxfH8Hw0AKkM1QI4QrVwsLjr2Rg6ZEDkBv.jpeg', '2020-12-22 20:46:35', '2020-12-22 20:46:35'),
(6, 'Przyk??adowa wycieczka', 'przykladowa-wycieczka', 'Przyk??adowa wycieczka', 'Przyk??adowa wycieczka', 'Przyk??adowa wycieczka', 'uploads/coGqFilxkZyPQ1ZXgG6eVnHGyxJSMUBosdP8oWjQ.jpeg', '2020-12-22 21:07:46', '2020-12-22 21:07:46'),
(7, 'Przyk??adowa wycieczka 2', 'przykladowa-wycieczka-2', 'Przyk??adowa wycieczka 2', 'Przyk??adowa wycieczka 2', 'Przyk??adowa wycieczka 2', 'uploads/yFZvLc78gy38nEjss0RRnaxU9QBzPNYNxU71BZBf.jpeg', '2020-12-22 21:08:09', '2020-12-22 21:08:09'),
(8, 'Przyk??adowa wycieczka 3', 'przykladowa-wycieczka-3', 'Przyk??adowa wycieczka 3', 'Przyk??adowa wycieczka 3', 'Przyk??adowa wycieczka 3', 'uploads/87L7ePXZCBr6SgUvjyjPutYEvToVEMWqD1ea7AZb.jpeg', '2020-12-22 21:08:34', '2020-12-22 21:08:34'),
(9, 'Przyk??adowa wycieczka 4', 'przykladowa-wycieczka-4', 'Przyk??adowa wycieczka 4', 'Przyk??adowa wycieczka 4', 'Przyk??adowa wycieczka 4', 'uploads/xzlkAOVM69Uysybq6h9FE57A1WxSXleT8G7nnRAh.jpeg', '2020-12-22 21:08:55', '2020-12-22 21:08:55'),
(11, 'Aspernatur dolores m', 'aspernatur-dolores-m', 'Odit tempore natus', 'Quaerat lorem doloru', 'Et dolorem non culpa', 'uploads/DxpKhzx5sa66f0a65f4ucnqpy3bCuUA2YFiOBOIq.jpeg', '2021-01-02 19:35:55', '2021-01-02 19:35:55'),
(13, 'Fuga Voluptatum rep', 'fuga-voluptatum-rep', 'Deserunt consectetur', 'Est debitis eos sol', 'Commodo laborum quis', 'uploads/zBZgjT9hGAALROadqLxgXsnA5d69OsNCfBnD6d9P.jpeg', '2021-01-15 10:32:27', '2021-01-15 10:32:27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$TUNhYfGUmWsaiGn0vOSH8u4Z52GBFvdVk1HLBayO1Lj/KnuXt0sFa', NULL, NULL, '3iGCpDAj7Kwid9GKLBIlmasJ615ycq2aOG4qTelwgjJKcuhyQ3WA1RVEQjKy', '2020-12-20 15:40:36', '2020-12-20 15:40:36'),
(2, 'dddddd@d', '$2y$10$Mc0I4mhQA4ccWfg/cPJmWOg3hWkna4jKLSmAfnKVpiEZzbc7iDCt6', NULL, NULL, NULL, '2021-01-03 15:51:39', '2021-01-03 15:51:39'),
(3, 'lytujaqyq@mailinator.com', '$2y$10$mMA6yx9ZzuNdPbK2y1GPuO5n8BBFO3aSoh76xiZUYggN6RbMJt70.', NULL, NULL, NULL, '2021-01-03 16:07:19', '2021-01-03 16:07:19'),
(5, 'qepizyv@mailinator.com', '$2y$10$YCGvUFjEYRpXy2ubU/OlyO/5vqdtD5DEIkdevMy5Ae7BfKXU/3D3G', NULL, NULL, NULL, '2021-05-22 14:54:17', '2021-05-22 14:54:17'),
(6, 'cimav@mailinator.com', '$2y$10$WMuTXdQgPROUR0AuH5wWH.GTxLYRyyCeTnxdZ6mC8J4u8r7f9R/zm', NULL, NULL, NULL, '2021-05-22 15:26:49', '2021-05-22 15:26:49'),
(7, 'cake@mailinator.com', '$2y$10$Nx4p/N64fBKF5WN.xZxdA.cBnNzkGf0q/Lvs2nT4zlyANicpO45Sy', NULL, NULL, NULL, '2021-05-22 15:31:37', '2021-05-22 15:31:37');

--
-- Indeksy dla zrzut??w tabel
--

--
-- Indeksy dla tabeli `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_travel_id_foreign` (`travel_id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_travel_id_foreign` (`travel_id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_details_id_foreign` (`details_id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `travel`
--
ALTER TABLE `travel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ograniczenia dla zrzut??w tabel
--

--
-- Ograniczenia dla tabeli `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_travel_id_foreign` FOREIGN KEY (`travel_id`) REFERENCES `travel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_travel_id_foreign` FOREIGN KEY (`travel_id`) REFERENCES `travel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_details_id_foreign` FOREIGN KEY (`details_id`) REFERENCES `details` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
