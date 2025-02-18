<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Real Estate Management System - Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="homepage">Real Estate Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="homepage">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="properties">Properties</a></li>
                    <li class="nav-item"><a class="nav-link" href="signup">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="container mt-4">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h1>Find Your Dream Property</h1>
                <p>Search, Buy, or Rent the best properties at the best prices.</p>
                <a href="properties" class="btn btn-primary">View Properties</a>
            </div>
            <div class="col-md-6">
                <img src="https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=600" 
                     class="img-fluid rounded" alt="Real Estate">
            </div>
        </div>
    </div>

    <!-- Search Bar -->
    <div class="container mt-4">
        <form action="searchProperties" method="GET" class="d-flex">
            <input type="text" name="query" class="form-control me-2" placeholder="Search by city, state, or type...">
            <button type="submit" class="btn btn-primary">Search</button>
        </form>
    </div>

    <!-- Featured Properties -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Featured Properties</h2>
        <div class="row">
            <% 
                String[] propertyTitles = {"Luxury Apartment", "Cozy House", "Modern Villa"};
                String[] propertyPrices = {"$500,000", "$300,000", "$700,000"};
                String[] propertyImages = {
                    "https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=600",
                    "https://images.pexels.com/photos/106399/pexels-photo-1063949.jpeg?auto=compress&cs=tinysrgb&w=600",
                    "https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=600"
                };

                for(int i = 0; i < propertyTitles.length; i++) { 
            %>
            <div class="col-md-4">
                <div class="card">
                    <img src="<%= propertyImages[i] %>" class="card-img-top" alt="Property">
                    <div class="card-body">
                        <h5 class="card-title"><%= propertyTitles[i] %></h5>
                        <p class="card-text">Price: <%= propertyPrices[i] %></p>
                        <a href="propertyDetails?id=<%= i+1 %>" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2025 Real Estate Management System. All Rights Reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
