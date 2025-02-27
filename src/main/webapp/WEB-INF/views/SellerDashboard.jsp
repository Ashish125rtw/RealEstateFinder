<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Seller Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar */
        .navbar-custom {
        color: #1976d2 !important;
           background: linear-gradient(90deg, #e3f2fd, #ffffff);
            border-bottom: 2px solid #90caf9;
        }
        .nav-link {
            color: #0d47a1 !important;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }
        .nav-link:hover {
            color: #ff8f00 !important;
            transform: scale(1.05);
        }
        .btn-custom {
            background-color: #ffa000;
            color: white;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }
        .btn-custom:hover {
            background-color: #ffb300;
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
            display: block;        }
        .sidebar a:hover {
			 background: #bbdefb;
            border-radius: 5px;
        }

        /* Content */
        .content {
            padding: 20px;
        }
        .card-custom {
            border-left: 5px solid #ffa000;
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
            <a class="navbar-brand fw-bold text-warning" href="sellerDashboard">🏡 Real Estate System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="sellerProfile">⚙️ Profile</a></li>
                    <li class="nav-item"><a class="nav-link btn btn-custom px-3 ms-2" href="logout">🚪 Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 sidebar">
                <h4 class="text-center text-warning">Seller Panel</h4>
                <a href="listProperty">📌 List Property</a>
                <a href="myProperties">🏠 My Properties</a>
                <a href="viewOffers">💰 View Offers</a>
                <a href="manageBookings">📅 Manage Bookings</a>
                <a href="messages">📩 Messages</a>
                <a href="sellerAnalytics">📊 Property Analytics</a>
                <a href="sellerProfile">⚙️ Profile & Settings</a>
            </nav>

            <!-- Main Content -->
            <main class="col-md-9 content">
                <div class="card card-custom">
                    <h2 class="text-center">Welcome, ${user.firstName}</h2>
                    <p class="text-center text-muted">Manage your properties efficiently.</p>

                    <!-- Quick Stats -->
                    <div class="row text-center mt-4">
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Listed Properties</h5>
                                <p>10 Active Listings</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Pending Offers</h5>
                                <p>5 Active Offers</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-custom">
                                <h5>Successful Sales</h5>
                                <p>3 Properties Sold</p>
                            </div>
                        </div>
                    </div>

                    <!-- Quick Actions -->
                    <div class="d-flex justify-content-center gap-3 mt-4">
                        <a href="listProperty" class="btn btn-outline-warning">List a Property</a>
                        <a href="viewOffers" class="btn btn-outline-success">View Offers</a>
                        <a href="sellerAnalytics" class="btn btn-outline-primary">View Analytics</a>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
