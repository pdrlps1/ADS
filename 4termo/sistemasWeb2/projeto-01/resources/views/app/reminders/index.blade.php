{{--
para debugar e ver o que a variável está trazendo
@dd($reminders)
--}}

@extends('app.layouts.template');

@section('title', 'Visualizar Lembretes');

@section('content')
    @component('app.components.table-reminder-index', ['reminders' => $reminders])
    @endcomponent
@endsection
