<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

// Redirigir la raíz a la página de login
Route::get('/', function () {
    return redirect('/login');
});

// Mostrar el formulario de login
Route::get('/login', function () {
    return view('auth.login');
});

// Procesar el formulario de login
Route::post('/login', function (Request $request) {
    $usuario = $request->input('usuario');
    $clave = $request->input('clave');

    // Verificar las credenciales del usuario
    $user = DB::table('usuarios')->where('usuario', $usuario)->first();

    if ($user && Hash::check($clave, $user->clave)) {
        Session::put('usuario', $user->usuario);
        return redirect('/dashboard');
    } else {
        return back()->withErrors(['usuario' => 'Usuario o clave incorrectos']);
    }
});

// Mostrar el dashboard
Route::get('/dashboard', function () {
    if (!Session::has('usuario')) {
        return redirect('/login');
    }

    return view('dashboard');
});

// Cerrar sesión
Route::get('/logout', function () {
    Session::forget('usuario');
    return redirect('/login');
});

// Mostrar el formulario de registro
Route::get('/register', function () {
    return view('auth.register');
});

// Procesar el formulario de registro
Route::post('/register', function (Request $request) {
    $usuario = $request->input('usuario');
    $nombre = $request->input('nombre');
    $clave = Hash::make($request->input('clave'));
    $rol = 'user'; // Rol predeterminado
    $estado = 1; // Estado activo por defecto

    // Insertar el nuevo usuario en la base de datos
    DB::table('usuarios')->insert([
        'usuario' => $usuario,
        'nombre' => $nombre,
        'clave' => $clave,
        'rol' => $rol,
        'estado' => $estado
    ]);

    return redirect('/login')->with('success', 'Usuario registrado exitosamente');
});
