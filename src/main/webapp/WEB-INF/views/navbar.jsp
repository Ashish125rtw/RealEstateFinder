<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Styles -->
<style>
    .navbar-custom {
    background: linear-gradient(90deg, #e3f2fd, #ffffff); /* Light Blue to White */
    border-bottom: 2px solid #90caf9; /* Subtle bottom border */
    position: fixed;
    top: 0; /* Ensures it sticks at the top */
    left: 0;
    width: 100%; /* Full width */
    z-index: 1000; /* Keeps navbar above other content */
}
body {
    padding-top: 70px; /* Adjust this based on navbar height to prevent overlap */
}
    
    .nav-link {
        color: #0d47a1 !important; /* Dark Blue */
        font-weight: 500;
        transition: 0.3s ease-in-out;
    }
    .nav-link:hover {
        color: #1976d2 !important; /* Slightly darker blue */
        transform: scale(1.05);
    }
    .btn-custom {
        background-color: #64b5f6; /* Soft Blue */
        color: white;
        font-weight: 500;
        transition: 0.3s ease-in-out;
    }
    .btn-custom:hover {
        background-color: #42a5f5;
        transform: scale(1.1);
    }
</style>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light navbar-custom shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold text-primary" href="homepage">🏡 Real Estate System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="homepage">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#aboutus">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="/ListProperty">Properties</a></li>
                

                <%-- Show Logout if User is Logged In, Otherwise Show Login/Signup --%>
                
                <% if (session.getAttribute("user") != null) { %>
                    <li class="nav-item"><a class="nav-link btn btn-custom px-3 ms-2" href="logout">🚪 Logout</a></li>
                <% } else { %>
                    <li class="nav-item"><a class="nav-link btn btn-custom px-3 ms-2" href="login">🔐 Sign Up / Login</a></li>
                <% } %>
            </ul>
        </div>
    </div>
</nav>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
