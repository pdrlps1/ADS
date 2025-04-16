<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ReminderController;
use Illuminate\Support\Facades\Route;
use App\Models\Reminder;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
// ao acessar o meu controller pela rota / com o método GET, ele entra direto no método index()

Route::resource('reminders', ReminderController::class);
