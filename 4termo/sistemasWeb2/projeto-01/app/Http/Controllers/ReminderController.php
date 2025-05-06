<?php

namespace App\Http\Controllers;

use App\Models\Reminder;
use Illuminate\Http\Request;

class ReminderController extends Controller
{
    /**
     * Exibe uma lista de todos os recursos.
     */
    public function index()
    {
        // $reminders = Reminder::all();
        //busca os lembretes com o método Paginate
        $reminders = Reminder::orderBy('reminder_at', 'desc')->paginate(2);

        return view('app.reminders.index', compact('reminders'));
    }

    /**
     * mostra o formulário para criação de um novo recurso
     */
    public function create()
    {
        return view('app.reminders.create');
    }

    /**
     * armazena um novo recurso no banco de dados
     */
    public function store(Request $request)
    {
        //validar os dados
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string|max:2000',
            'reminder_at' => 'required|date_format:Y-m-d\TH:i',
            'done' => 'required|boolean'
        ], [
            'title.required' => 'O título é obrigatório',
            'title.string' => 'O título deve ser uma sequecia de caracteres',
            'title.max' => 'O título deve possuir no máximo 255 caracteres',
            'description.string' => 'A descrição deve ser uma sequecia de caracteres',
            'description.max' => 'A descrição deve possuir no máximo 2000 caracteres',
            'reminder_at.required' => 'A data e hora do lembrete são obrigatórios',
            'reminder_at.date_format' => 'A data e hora devem estar no formato AAAA-MM-DD Hh:mm:ss',
            'done.required' => 'O campo de feito é obrigatório',
            'done.boolean' => 'O campo de feito deve ser verdadeiro ou falso'
        ]);

        // cadastrar no banco
        Reminder::create($data);

        // redireciona em caso de sucesso
        return redirect()->route('reminders.create')->with('success', 'Lembrete criado com sucesso');
    }

    /**
     * Display the specified resource.
     */
    public function show(Reminder $reminder)
    {
        //
    }

    /**
     * exibe o formulário para edição de um recurso existente
     */
    public function edit(Reminder $reminder)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reminder $reminder)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reminder $reminder)
    {
        //
    }
}
