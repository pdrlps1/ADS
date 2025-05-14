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
        $data = $request->validated();

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
        return view('app.reminders.edit', compact('reminder'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reminder $reminder)
    {
        $data = $request->validated();

        Reminder::update($data);

        return redirect()->route('reminders.edit', $reminder)->with('success', 'Lembrete atualizado com sucesso!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reminder $reminder)
    {
        //
    }
}
