<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agent Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar */
        .navbar-custom {
            background: linear-gradient(90deg, #e3f2fd, #ffffff); /* Light Blue to White */
            border-bottom: 2px solid #4caf50; /* Subtle green accent */
        }
        .nav-link {
            color: #1b5e20 !important;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }
        .nav-link:hover {
            color: #388e3c !important;
            transform: scale(1.05);
        }
        .btn-custom {
            background-color: #4caf50;
            color: white;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }
        .btn-custom:hover {
            background-color: #388e3c;
            transform: scale(1.1);
        }

        /* Sidebar */
        .sidebar {
            height: 100vh;
            background: #f1f8e9;
            border-right: 2px solid #4caf50;
            padding-top: 20px;
        }
        .sidebar a {
            color: #1b5e20;
            font-weight: 500;
            text-decoration: none;
            padding: 12px;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background: #c8e6c9;
            border-radius: 5px;
        }

        /* Content */
        .content {
            padding: 20px;
        }
        .card-custom {
            border-left: 5px solid #4caf50;
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
            <a class="navbar-brand fw-bold text-success" href="agentDashboard">🏡 Real Estate System

            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="agentProfile">⚙️ Profile</a></li>
                    <li class="nav-item"><a class="nav-link btn btn-custom px-3 ms-2" href="logout">🚪 Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 sidebar">
                <h4 class="text-center text-success">Agent Panel</h4>
                <a href="manageListings">📋 Manage Listings</a>
                <a href="scheduleAppointments">📅 Schedule Appointments</a>
                <a href="clientRequests">📨 Client Requests</a>
                <a href="propertyAnalytics">📊 Property Insights</a>
                <a href="messages">📩 Messages</a>
                <a href="commissionReport">💰 Commission Report</a>
                <a href="agentProfile">⚙️ Profile & Settings</a>
            </nav>

            <!-- Main Content -->
            <main class="col-md-9 content">
                <div class="card card-custom">
                    <h2 class="text-center">Welcome, ${user.firstName}</h2>
                    <p class="text-center text-muted">Manage your listings and client interactions efficiently.</p>

                    <!-- Quick Stats -->
                    <div class="row text-center mt-4">
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Listings</h5>
                                <p>20 Active Listings</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Appointments</h5>
                                <p>5 Scheduled Visits</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Messages</h5>
                                <p>12 Unread Messages</p>
                            </div>
                        </div>
                    </div>

                    <!-- Quick Actions -->
                    <div class="d-flex justify-content-center gap-3 mt-4">
                        <a href="manageListings" class="btn btn-outline-primary">Manage Listings</a>
                        <a href="scheduleAppointments" class="btn btn-outline-success">View Appointments</a>
                        <a href="messages" class="btn btn-outline-warning">Check Messages</a>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
