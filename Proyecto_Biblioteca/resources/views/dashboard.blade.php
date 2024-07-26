<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
    <h2>Bienvenido, {{ Session::get('usuario') }}</h2>
    <p>Has iniciado sesión correctamente.</p>
    <a href="/logout">Logout</a>
</body>
</html>
