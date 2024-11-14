@extends('layouts.AdminLayouts')

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                @livewire('admin.pengguna.pengguna-table', ['title' => $title])
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection
