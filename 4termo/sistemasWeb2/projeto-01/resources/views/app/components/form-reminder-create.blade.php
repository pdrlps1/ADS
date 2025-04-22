<div class="row mt-5 pt-5">
    <div class="col">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Cadastrar Lembrete</li>
            </ol>
        </nav>
    </div>
</div>
<div class="row mt-3 mb-5">
    <div class="col-12 col-md-8 col-lg-10 mx-auto">
        <div class="card p-4 shadow-sm">
            <h3 class="text-center mb-4">Cadastrar Lembrete</h3>
            <form action="{{ route('reminders.store') }}" method="POST">
                @csrf
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="title" name="title" value='{{ old('title') }}'
                        placeholder="Digite o título">
                    <label for="title">Título</label>
                    @error('title')
                        <div class='text-danger'>{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" id="description" name="description" placeholder="Digite a descrição"
                        style="height:100px;">
                        {{ old('description') }}
                    </textarea>
                    <label for="description">Descrição</label>
                    @error('description')
                        <div class='text-danger'>{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-floating mb-3">
                    <input type="datetime-local" class="form-control" id="reminder_at" name="reminder_at"
                        value={{ old('reminder_at') }}>
                    <label for="reminder_at">Data e Hora</label>
                    @error('reminder_at')
                        <div class='text-danger'>{{ $message }}</div>
                    @enderror
                </div>
                <input type="hidden" id="done" name="done" value="0">
                <button type="submit" class="btn btn-outline-success w-100">Salvar</button>
            </form>
            @if (session('success'))
                <div class="alert alert-success mt-3">{{ session('success') }}</div>
            @endif
        </div>
    </div>
</div>
