<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Role
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, $role): Response
    {
        $user = $request->user();

        // Check if the user's role is empty or null
        if (empty($user->role)) {
            return redirect('/login'); // Redirect to homepage if role is empty
        }

        // Check if the user's role matches the required role
        if ($user->role !== $role) {
            // Redirect based on user role
            $url = $user->role === 'admin' ? route('admin.dashboard') : route('user.dashboard');
            return redirect($url);
        }

        return $next($request); // Allow access if role matches
    }
}
