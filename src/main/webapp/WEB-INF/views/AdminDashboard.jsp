<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <span class="navbar-brand mb-0 h1">Admin Dashboard</span>
            <a href="logout" class="btn btn-danger">Logout</a>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="card shadow p-4">
            <h2 class="text-center">Welcome, ${user.firstName}</h2>
        </div>
    </div>
</body>
</html>
