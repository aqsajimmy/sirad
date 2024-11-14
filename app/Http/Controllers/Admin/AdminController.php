<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function dashboard()
    {
        $title = 'Dashboard';
        return view('Admin.Dashboard', compact('title'));
    }
}
