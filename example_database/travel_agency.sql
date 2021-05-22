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
(7, 'brak wpłaty', NULL, 1, 28, 10, 415, '2021-01-02 19:56:40', '2021-01-02 19:56:40'),
(8, 'brak wpłaty', NULL, 7, 37, 2, 1199, '2021-05-22 15:31:44', '2021-05-22 15:31:44'),
(9, 'brak wpłaty', NULL, 7, 37, 5, 1199, '2021-05-22 15:31:50', '2021-05-22 15:31:50'),
(10, 'brak wpłaty', NULL, 7, 37, 2, 1199, '2021-05-22 15:31:56', '2021-05-22 15:31:56');

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
(1, 'Dolina Pałaców i Ogrodów Kotliny Jeleniogórskiej', 'magna-cupiditate-eu', 'W sercu Sudetów leży kraina, gdzie można podziwiać wspaniałe krajobrazy, a także odkrywać zabytki. Samych zamków, pałaców oraz dworów jest tu około trzydziestu. Dlatego też na początku XIX wieku obszar ten nazwano \"Śląskim Elizjum\", porównjąc go do zamków i pałaców nad Doliną Loary we Francji. Swoje rezydencje zakładały tu najświetniejsze rody europejskie. Oprócz arystokacji przybywali to artyści, filozofowie oraz miłośnicy przyrody (np. Fryderyk Chopin, Johan Wolfgang von Goethe, John Quincy Adams).', 'Dolina Pałaców i Ogrodów obejmuje niemal 30 obiektów architektury świeckiej. Znajdziemy tu średniowieczne wieże mieszkalne, zamki, renesansowe dwory i barokowe pałace.', 'Większość rezydencji jest wpisanych na Listę Pomników Historii (najwyższe wyróżnienie w Polsce) oraz są podjęte działania zmierzające do wpisania Doliny Pałaców i Ogrodów na Listę Światowego Dziedzictwa Kulturalnego i Przyrodniczego UNESCO. Kluczem określającym kryteria wpisu był krajobraz kulturowy związany z rezydencjami szlacheckimi, otoczonymi rozległymi parkami romantycznymi, stanowiącymi w XIX wieku jednorodną całość.', '11 obiektów Doliny Pałaców i Ogrodów zostało wpisanych na Pomnik Historii Prezydenta RP pod nazwą \"Pałace i parki krajobrazowe Kotliny Jeleniogórskiej\". Są to:', '•	Bukowiec – zespół pałacowo-parkowy, gm. Mysłakowice  \r\n•	Jelenia Góra – zespół pałacowo-parkowy „Paulinum”  \r\n•	Jelenia Góra – zespół pałacowo-parkowy Schaffgotschów w Cieplicach  \r\n•	Karpniki – zespół pałacowo-parkowy, gm. Mysłakowice  \r\n•	Karpniki – willa „Dębowy Dwór” z parkiem  \r\n•	Kowary – zespół pałacowo-parkowy w Ciszycy  \r\n•	Łomnica – zespół pałacowo-parkowy, gm. Mysłakowice  \r\n•	Mysłakowice – zespół pałacowo-parkowy  \r\n•	Staniszów Górny nr 100 – zespół pałacowo-parkowy, gm. Podgórzyn  \r\n•	Wojanów – zespół pałacowo-parkowy, gm. Mysłakowice  \r\n•	Wojanów-Bobrów – zespół pałacowo-gospodarczy, gm. Mysłakowice', 'blog/bYIMIFsvhN81sSItTKol8YQbP58bJxPf6P6QWabw.jpeg', '2020-12-20 17:44:33', '2020-12-20 17:44:33'),
(2, 'Jak dobrze się spakować na wycieczkę?', 'jak-dobrze-sie-spakowac-na-wycieczke', 'Na tak postawione, dość proste z pozoru pytanie, jedyna sensowna odpowiedź brzmi: to zależy. Istotne jest bowiem gdzie, jak długo i w jakich warunkach będziemy wędrować, a co za tym idzie – z jakim plecakiem. A więc po kolei. Pierwsza zasada brzmi – nie bierz zbyt dużo. Podstawowa apteczka, czołówka, mapa i kompas, naładowany telefon, jedzenie i picie, coś cieplejszego i kurtka na deszcz wydaje się optymalnym zestawem na większość jednodniowych wyjść. Z wyłączeniem jednodniowych wspinaczek czy wycieczek lodowcowych, które wymagają zabrania specjalistycznego sprzętu. Warto w tym miejscu zwrócić uwagę na fakt, że outdoorowe marki starają się, by sprzęt oraz odzież były nie tylko bardziej funkcjonalne, ale i lżejsze oraz bardziej kompaktowe. Miejsce klasycznych, grubszych polarów zajmują aktualnie nowoczesne syntetyczne ociepliny. Charakteryzują się niewielkim rozmiarem po spakowaniu (często mieszczą się do specjalnej kieszeni będącej jednocześnie pokrowcem) przy właściwej izolacji.', 'Jak spakować plecak – planuj z wyprzedzeniem', 'Planując górską wycieczkę kluczową kwestią jest to jak spakować plecak. Praktyka dowodzi, że liczba niezbędnych rzeczy rośnie wprost proporcjonalnie do wielkości plecaka. Co oznacza, że niezależnie od tego, jak duży plecak ze sobą weźmiemy, prawdopodobnie i tak będzie on (prawie) pełny. Większa pojemność zachęca do mnożenia ekwipunku, ale jeśli uda się nie wypełnić plecaka po brzegi, warto skorzystać z pasów kompresyjnych. Druga istotna kwestia, związana zarówno z doborem odpowiedniego plecaka, jak i ekwipunku to planowanie. Nawet jednodniowa wycieczka może okazać się problematyczna. Dlatego zastanawiając się jak spakować plecak należy odpowiedzieć sobie na kilka podstawowych pytań: - Jak długo będzie trwała wycieczka? Krótki wypad na Trzy Korony, między poranną kawą a plackiem po zbójnicku w lokalnej karczmie? A może raczej trekking w Gorganach? W zależności od tego, na co się zdecydujemy, nasze potrzeby względem ekwipunku mogą się zmniejszyć lub powiększyć. - Jaka ma być pogoda? Dzisiejsze prognozy pogody są zwykle dość dokładne, sprawdźmy więc nie tylko to, czy przewidywany jest opad, ale także jaka będzie temperatura, siła wiatru czy zachmurzenie – dopiero uwzględnienie tych wszystkich parametrów da nam ogląd sytuacji. Góry bywają nieprzewidywalne, dlatego stałym elementem na każdą wyprawę powinna być kurtka przeciwdeszczowa. - Po jakim terenie będziemy się poruszać? Trasa prowadzi lasem czy odsłoniętą granią? Będziemy wychodzić na odsłonięty wierzchołek czy nie? Jak duże jest przewyższenie, które mamy do pokonania? To tylko kilka z pytań, jakie powinniśmy sobie zadać starając się dobrać ekwipunek do charakteru wyprawy. Uzyskanie odpowiedzi na te podstawowe kwestie pomoże w odpowiednim dobraniu ekwipunku do warunków. Dobrym rozwiązaniem jest pakowanie się z wyprzedzeniem, co daje nieco więcej czasu na przemyślenie, czy na pewno o niczym nie zapomnieliśmy. To również dobry moment na ewentualną redukcję ilości rzeczy.', 'Plecak to nie choinka', 'Plecaki nie są wodoodporne i nawet te impregnowane, przy kilkugodzinnym deszczu w końcu wpuszczą wodę do środka. Rozwiązaniem może być specjalny, przeciwdeszczowy pokrowiec na plecak, który jest dołączony do części modeli. Możliwe jest też dokupienie go dodatkowo. Pakowanie plecaka to czynność zasługująca na to, by poświęcić jej troszkę więcej czasu. Od tego w jaki sposób rozmieścimy wszystkie niezbędne rzeczy zależeć będzie nasz komfort (a czasem także bezpieczeństwo i zdrowie). Warto więc z głową przygotować się do wyjazdu, wcześniej kompletując ekwipunek i odpowiednio go pakując. Udanych wycieczek!', 'blog/efSlsj2XBIDKouyj1xNdFvgxKOI2nV6PUbuBDyd7.jpeg', '2020-12-22 17:52:39', '2020-12-22 17:52:39');

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
(2, 'Drezno', 'drezno', 'Stolica i perła Saksonii, ciesząca oczy turystów nieprzemijającym blaskiem. Wycieczka z wieloma atrakcjami.', 'Przejazd przez Jędrzychowice i Bautzen. Zwiedzanie kompleksu pałacowego Zwinger – Dziedziniec, Kąpielisko Nimf, Galeria Malarstwa Starych Mistrzów (Rembrandt, Rubens, Rafael, Tycjan, Canaletto, Durer i inni), Muzeum Porcelany. Plac Teatralny z Operą Sempera. Zamek Drezdeński: Skarbiec – Zielone Sklepienie, Zbrojownia, Komnata Turecka. Spacer Tarasami Brühla. Katolicki Kościół Dworski, Kościół Maryjny. Czas wolny w centrum miasta.', '07:00		wyjazd z Karpacza  \r\n09:00	 	przekroczenie granicy w Jędrzychowicach  \r\n11:00	 	przyjazd, rozpoczęcie zwiedzania  \r\n15:00	 	czas wolny na terenie Zwingera (możliwość indywidualnego zwiedzania wnętrz)  \r\n17:00	 	wyjazd z Drezna  \r\n20:30	 	powrót do Karpacza  \r\n* podane godziny są orientacyjne i z przyczyn niezależnych od Biura mogą ulec niewielkiej zmianie  \r\n* możliwość wyjazdu z Jeleniej Góry, Zgorzelca i innych (patrz lista przystanków)', 'uploads/MbzqFldDu7T8y18rSTlgNMwuSiGPjxDw6NVFIn4g.jpeg', '2020-12-22 20:43:19', '2020-12-22 20:43:19'),
(3, 'Wiedeń', 'wieden', 'Najbogatszy program zwiedzania miasta, w którym historia i kultura splatają się w jedno.', 'Wycieczka do Wiednia z naszym biurem to wybór doskonałej jakości realizowanych usług. Oferujemy Państwu przemyślany, najbogatszy program zwiedzania spośród innych biur organizujących wycieczkę do Wiednia z Karpacza i okolic. Nasza wycieczka realizowana jest już od ponad 10 lat, dzięki czemu wiemy, jak powinna wyglądać, aby pozostała w Państwa pamięci na długo.\r\nZaczynamy już na poziomie wyboru autokaru, jakim jest bezpieczny, luksusowy, wysokopokładowy, klimatyzowany autokar, obsługiwany na trasie przez doświadczonych i bardzo sympatycznych kierowców. Wycieczkę prowadzi SUPER-PRZEWODNIK, dla którego Wiedeń nie ma żadnych tajemnic. Potrafi on w sposób przystępny i interesujący opowiedzieć dzieje tego niezwykłego miasta, ale także doradzić, gdzie wypić najlepszą wiedeńską kawę i zjeść kawałek Sachertorte. A jak wygląda program?\r\nPrzejazd przez Czechy do Austrii. Przerwa na granicy czesko-austriackiej (śniadanie, toaleta, drobne zakupy). Zwiedzanie Wiednia: wjazd autokarem na wzgórze Kahlenberg – panorama miasta. Przejazd przez uroczą dzielnicę winiarzy Grinzing do centrum miasta. Spacer po niezwykłej pod względem architektonicznym dzielnicy Hundertwassera. Przejazd Ringiem Wiedeńskim, na trasie budynki m. in. Opery Wiedeńskiej i Parlamentu. Spacer po mieście: Belweder, Stare Miasto z Katedrą Św. Szczepana, Rezydencja Cesarska Hofburg, Plac Marii Teresy. Czas wolny.', '23:00		 	(środa) wyjazd z Karpacza  \r\n05:00		 	granica czesko-austriacka, przerwa (ok. 45 min) na dawnej strefie wolnocłowej, możliwość porannej toalety, zakupów, zjedzenia śniadania, wypicia kawy  \r\n07:30		 	przyjazd do Wiednia, rozpoczęcie zwiedzania – wjazd na Kahlenberg – to wzgórze górujące nad Wiedniem, miejsce glorii Jana III Sobieskiego w bitwie z Turkami, miejsce ściśle związane z polską historią, miejsce, które odwiedzamy jako jedyni z karpackich organizatorów wycieczki do Wiednia!  \r\n08:30		 	przejazd przez jedną z najstarszych części Wiednia, dzielnicę winiarzy – Grunzig  \r\n09:00		 	spacer przez dzielnicę Hundertwassera, niezwykle barwną, pełną krzywizn i zaskakujących pomysłów architektonicznych; chwila wolnego czasu na pierwszą wiedeńską kawę  \r\n10:00		 	Belveder – spacer po jednym z najpiękniejszych w Wiedniu barokowych założeń parkowo-pałacowych  \r\n11:00		 	przejazd przez Ring Wiedeński, na trasie Opera Wiedeńska, Plac Marii Teresy, Parlament, Teatr, Ratusz i Kościół Wotywny  \r\n12:00		 	rozpoczęcie spaceru i zwiedzania przy pomniku Złotego Straussa. Na trasie rezydencja cesarska Hofburg, Stare Miasto z reprezentacyjnymi, najbogatszymi ulicami Wiednia: Graben i Kohlmarkt, plac z Katedrą Św. Szczepana, czas wolny  \r\n16:00		 	wyjazd z Wiednia  \r\n17:30		 	przerwa w Czechach na obiad (płatny dodatkowo przez uczestników wycieczki, ok. 200 koron/os.)  \r\n22:45	powrót do Karpacza  \r\n	  * podane godziny są orientacyjne i z przyczyn niezależnych od Biura mogą ulec niewielkiej zmianie.\r\n* możliwość wyjazdu z Jeleniej Góry, Szklarskiej Poręby i innych (patrz lista przystanków).', 'uploads/aausja1KTDiXXE40Oe51grL0HIQhVkDOpFIviseJ.jpeg', '2020-12-22 20:44:53', '2020-12-22 20:44:53'),
(4, 'CZESKI RAJ', 'czeski-raj', 'Wizyta w krainie skał i kamieni szlachetnych, jaskiń i skalnych miast, zamków, rycerzy i… rozbójnika Rumcajsa.', 'Wycieczka dla miłośników pięknych krajobrazów, ale również  tego, co kryje w sobie wnętrze ziemi. To wizyta w krainie skał i kamieni szlachetnych, jaskiń i skalnych miast, zamków, rycerzy i… rozbójnika Rumcajsa. W programie zwiedzanie jaskini dolomitowej w Bozkovie (40-minutowy spacer podziemną trasą turystyczną), spacer przez prachovskie skalne miasto z wejściem na punkty widokowe w wyższych partiach skał, wizyta w ruinach zamku Trosky – symbolu Czeskiego Raju, a na koniec – czas wolny w miasteczku Jicin, znanym z przygód rozbójnika Rumcajsa.', '08:00 wyjazd z Karpacza  \r\n09:00 przekroczenie granicy Jakuszyce-Harrachov  \r\n10:30 zwiedzanie Bozkovskich Dolomitowych Jaskin  \r\n12:00 zwiedzanie Zamku Trosky  \r\n14:00 zwiedzanie Prachovskich Skał  \r\n16:30 czas wolny w Jicinie  \r\n17:45 wyjazd  \r\n20:00 powrót do Karpacza  \r\n  * podane godziny są orientacyjne i z przyczyn niezależnych od Biura mogą ulec niewielkiej zmianie.\r\n* możliwość wyjazdu z Jeleniej Góry, Szklarskiej Poręby i innych (patrz lista przystanków).', 'uploads/q9a0TGhnpbaxPhkW2XJ7gVXC1MhsBwEkTe803CfH.jpeg', '2020-12-22 20:45:57', '2020-12-22 20:45:57'),
(5, 'SAKSOŃSKA SZWAJCARIA', 'saksonska-szwajcaria', 'Coś dla miłośników skalnych miast, twierdz i zamków. Przygotuj się na zapierające dech w piersi widoki.', 'Przejazd przez Jędrzychowice. Bastei - spacer wśród niesamowitych, piaskowcowych form skalnych, niezapomniane widoki na przełom Łaby z mostów i platform widokowych zawieszonych na skałach. Przejazd do twierdzy Konigstein - zwiedzanie warowni wybudowanej na wysokiej, piaskowcowej skale. Przejazd do Pilnitz - spacer po przepięknych ogrodach otaczających pałac - letnią rezydencję hrabiny Cosel. Czas wolny.', '07:00 wyjazd z Karpacza  \r\n09:00 przekroczenie granicy w Jędrzychowicach  \r\n11:00 rozpoczęcie zwiedzania: Rezerwat skał Bastei  \r\n13:00 twierdza Konigstein  \r\n15:15 spacer po parku w Pilnitz  \r\n16:00 czas wolny  \r\n16:45 wyjazd  \r\n20:30 powrót do Karpacza  \r\n  * podane godziny są orientacyjne i z przyczyn niezależnych od Biura mogą ulec niewielkiej zmianie.\r\n* możliwość wyjazdu z Jeleniej Góry, Zgorzelca i innych (patrz lista przystanków).', 'uploads/Tfwgs4XxfH8Hw0AKkM1QI4QrVwsLjr2Rg6ZEDkBv.jpeg', '2020-12-22 20:46:35', '2020-12-22 20:46:35'),
(6, 'Przykładowa wycieczka', 'przykladowa-wycieczka', 'Przykładowa wycieczka', 'Przykładowa wycieczka', 'Przykładowa wycieczka', 'uploads/coGqFilxkZyPQ1ZXgG6eVnHGyxJSMUBosdP8oWjQ.jpeg', '2020-12-22 21:07:46', '2020-12-22 21:07:46'),
(7, 'Przykładowa wycieczka 2', 'przykladowa-wycieczka-2', 'Przykładowa wycieczka 2', 'Przykładowa wycieczka 2', 'Przykładowa wycieczka 2', 'uploads/yFZvLc78gy38nEjss0RRnaxU9QBzPNYNxU71BZBf.jpeg', '2020-12-22 21:08:09', '2020-12-22 21:08:09'),
(8, 'Przykładowa wycieczka 3', 'przykladowa-wycieczka-3', 'Przykładowa wycieczka 3', 'Przykładowa wycieczka 3', 'Przykładowa wycieczka 3', 'uploads/87L7ePXZCBr6SgUvjyjPutYEvToVEMWqD1ea7AZb.jpeg', '2020-12-22 21:08:34', '2020-12-22 21:08:34'),
(9, 'Przykładowa wycieczka 4', 'przykladowa-wycieczka-4', 'Przykładowa wycieczka 4', 'Przykładowa wycieczka 4', 'Przykładowa wycieczka 4', 'uploads/xzlkAOVM69Uysybq6h9FE57A1WxSXleT8G7nnRAh.jpeg', '2020-12-22 21:08:55', '2020-12-22 21:08:55'),
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
-- Indeksy dla zrzutów tabel
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
-- Ograniczenia dla zrzutów tabel
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
