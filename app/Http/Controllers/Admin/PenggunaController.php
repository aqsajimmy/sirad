<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class PenggunaController extends Controller
{
    public function index()
    {
        $title = 'Data Pengguna';
        return view('Admin.Pengguna.index', compact('title'));
    }
}
