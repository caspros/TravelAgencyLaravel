# TravelAgencyLaravel
A web application developed in Laravel for travel agencies to support agency management

## Features
- Users account system
- Reservation system
- Administration Panel Dashboard with statistics
- Admin CRUD Panel for travels, posts, reservations

## Tech stack
- Laravel 8
- Bootstrap 4
- Fortify

## Installation

Project requires PHP 7.3+

Clone repository

```sh
git clone https://github.com/caspros/TravelAgencyLaravel.git
```

Install composer and npm dependencies

```sh
cd your_path_to_project_folder
composer install
npm install
```

Make a database configuration in .env file

```sh
cp .env.example .env

```

Generate an app encryption key

```sh
php artisan key:generate

```

Migrate the database

```sh
php artisan migrate

```

Example database is located at example_database folder. Download it and import to phpmyadmin

Finally you can start the server:

```sh
php artisan serve

```



## Project presentation

### 1. Main page
![scr0](https://user-images.githubusercontent.com/56698760/119235845-aa9c5e00-bb34-11eb-9b69-4e5f42f28754.png)

### 2. Travel list
![scr1](https://user-images.githubusercontent.com/56698760/119235810-880a4500-bb34-11eb-8756-f90779061c9b.png)

### 3. Term selection window
![scr2](https://user-images.githubusercontent.com/56698760/119235816-893b7200-bb34-11eb-977a-f7f45cd52ade.png)

### 4. Confirm reservation window
![scr3](https://user-images.githubusercontent.com/56698760/119235803-83de2780-bb34-11eb-9e8b-f310f93b38c0.png)

### 5. Admin panel - dashboard
![scr4](https://user-images.githubusercontent.com/56698760/119235806-86d91800-bb34-11eb-840c-08f3022ea701.png)

### 6. Admin panel - reservation list
![scr5](https://user-images.githubusercontent.com/56698760/119235808-8771ae80-bb34-11eb-956d-e9a3b6e8e511.png)


