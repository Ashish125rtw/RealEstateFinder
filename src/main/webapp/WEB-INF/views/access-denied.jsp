<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Access Denied</title>
    <!-- Bootstrap CDN (NiceAdmin-compatible) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Poppins', sans-serif;
        }
        .denied-box {
            margin-top: 100px;
            max-width: 600px;
            padding: 40px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: floatIn 0.6s ease-in-out;
        }
        .emoji {
            font-size: 70px;
        }
        .btn-funny {
            background-color: #dc3545;
            color: white;
            border-radius: 50px;
            padding: 10px 30px;
            transition: 0.3s ease;
        }
        .btn-funny:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }
        @keyframes floatIn {
            from {
                opacity: 0;
                transform: translateY(-40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center">
        <div class="denied-box">
            <div class="emoji">🚫🔐</div>
            <h2 class="text-danger mt-3">Whoa there, explorer!</h2>
            <p class="text-muted">Looks like you've wandered into restricted territory. 🕵️‍♀️</p>
            <p class="fw-semibold">Only the chosen ones (with the right role) can access this page.</p>
            <a href="login" class="btn btn-funny mt-3">Teleport Back to Login</a>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for effects) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
