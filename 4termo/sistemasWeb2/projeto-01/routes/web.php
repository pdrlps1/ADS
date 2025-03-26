<?php

use Illuminate\Support\Facades\Route;
use App\Models\Reminder;

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/teste', function (){
//     return view('teste');
// });

Route::get('/saudacao', function () {
    return "Olá, seja bem-vindo!";
});

Route::get('/user/{id}', function ($id) {
    return "ID do usuário: " . $id;
});

Route::get('/soma/{n1}/{n2}', function ($n1, $n2) {
    $soma = $n1 + $n2;

    return "Soma: " . $soma;
});

Route::get('/reminder/{title}/{description}', function ($title, $description) {
    $date = now();

    try {
        Reminder::create([
            'title' => $title,
            'description' => $description,
            'reminder_at' => $date
        ]);

        return "Lembrete criado!";
    } catch (Error) {
        return "Falha na criação de um lembrete!";
    };
});
