<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar */
        .navbar-custom {
            background: linear-gradient(90deg, #e3f2fd, #ffffff); /* Light Blue to White */
            border-bottom: 2px solid #90caf9; /* Subtle bottom border */
        }
        .nav-link {
            color: #0d47a1 !important;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }
        .nav-link:hover {
            color: #1976d2 !important;
            transform: scale(1.05);
        }
        .btn-custom {
            background-color: #64b5f6;
            color: white;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }
        .btn-custom:hover {
            background-color: #42a5f5;
            transform: scale(1.1);
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
            transition: 0.3s;
        }
        .sidebar a:hover {
            background: #bbdefb;
            border-radius: 5px;
        }

        /* Content */
        .content {
            padding: 20px;
        }
        .card-custom {
            border-left: 5px solid #64b5f6;
            background: #ffffff;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
    </style>
</head>
<body class="bg-light">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="adminDashboard">🏡 Real Estate System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="adminProfile">⚙️ Profile</a></li>
                    <li class="nav-item"><a class="nav-link btn btn-custom px-3 ms-2" href="logout">🚪 Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 sidebar">
                <h4 class="text-center text-primary">Admin Panel</h4>
                <a href="ListUser">👤 Manage Users</a>
                <a href="manageProperties">🏠 Manage Properties</a>
                <a href="manageAgents">🧑‍💼 Manage Agents</a>
                <a href="viewTransactions">💰 Transactions</a>
                <a href="viewMessages">📩 User Inquiries</a>
                <a href="analytics">📊 Reports & Analytics</a>
                <a href="adminProfile">⚙️ Profile & Settings</a>
            </nav>

            <!-- Main Content -->
            <main class="col-md-9 content">
                <div class="card card-custom">
                    <h2 class="text-center">Welcome, ${user.firstName}</h2>
                    <p class="text-center text-muted">Manage your system efficiently.</p>

                    <!-- Quick Stats -->
                    <div class="row text-center mt-4">
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Users</h5>
                                <p>200 Registered Users</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Properties</h5>
                                <p>150 Listed Properties</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Transactions</h5>
                                <p>50 Completed Transactions</p>
                            </div>
                        </div>
                    </div>

                    <!-- Quick Actions -->
                    <div class="d-flex justify-content-center gap-3 mt-4">
                        <a href="manageUsers" class="btn btn-outline-primary">Manage Users</a>
                        <a href="manageProperties" class="btn btn-outline-success">Manage Properties</a>
                        <a href="analytics" class="btn btn-outline-warning">View Reports</a>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
