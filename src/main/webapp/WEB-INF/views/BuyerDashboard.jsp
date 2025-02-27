<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buyer Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar */
        .navbar-custom {
            background: linear-gradient(90deg, #e3f2fd, #ffffff);
            border-bottom: 2px solid #90caf9;
        }
        .nav-link {
            color: #0d47a1 !important;
            font-weight: 500;
        }
        .nav-link:hover {
            color: #1976d2 !important;
            transform: scale(1.05);
        }
        .btn-custom {
            background-color: #64b5f6;
            color: white;
            font-weight: 500;
        }
        .btn-custom:hover {
            background-color: #42a5f5;
        }
        /* Sidebar */
        .sidebar {
            height: 100vh;
            background: #f1f8fe;
            border-right: 2px solid #90caf9;
            padding-top: 20px;
        }
        .sidebar a {
            color: #0d47a1;
            font-weight: 500;
            text-decoration: none;
            padding: 12px;
            display: block;
        }
        .sidebar a:hover {
            background: #bbdefb;
            border-radius: 5px;
        }
        .content {
            padding: 20px;
        }
        .card-custom {
            border-left: 5px solid #64b5f6;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="homepage">🏡 Real Estate System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="profile">⚙️ Profile</a></li>
                    <li class="nav-item"><a class="nav-link btn btn-custom px-3 ms-2" href="logout">🚪 Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-3 sidebar">
                <h4 class="text-center text-primary">Buyer Panel</h4>
                <a href="ListProperty">🏠 View Properties</a>
                <a href="savedProperties">💾 Saved Properties</a>
                <a href="searchProperties">🔍 Search Properties</a>
                <a href="scheduleVisit">📅 Schedule a Visit</a>
                <a href="contactAgent">📞 Contact an Agent</a>
                <a href="mortgageCalculator">💰 Mortgage Calculator</a>
                <a href="purchaseHistory">📜 Purchase History</a>
                <a href="profileSettings">⚙️ Profile Settings</a>
            </nav>
            <main class="col-md-9 content">
                <div class="card card-custom">
                    <h2 class="text-center">Welcome, ${user.firstName}</h2>
                    <p class="text-center text-muted">Find the best properties tailored for you!</p>
                    <div class="d-flex justify-content-center gap-3">
                        <a href="viewProperties" class="btn btn-success">🏠 Browse Properties</a>
                        <a href="scheduleVisit" class="btn btn-warning">📅 Schedule a Visit</a>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
