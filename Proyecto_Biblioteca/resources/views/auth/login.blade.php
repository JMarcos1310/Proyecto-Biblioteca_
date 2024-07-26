<!-- resources/views/auth/login.blade.php -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    @if ($errors->any())
        <div>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    @if (session('success'))
        <div>
            {{ session('success') }}
        </div>
    @endif
    <form action="/login" method="POST">
        @csrf
        <div>
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario">
        </div>
        <div>
            <label for="clave">Clave:</label>
            <input type="password" id="clave" name="clave">
        </div>
        <button type="submit">Login</button>
    </form>
    <p>No tienes una cuenta? <a href="/register">Regístrate aquí</a></p>
</body>
</html>
