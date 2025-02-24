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

    <%@ include file="navbar.jsp" %>  <!-- ✅ Include Navbar Here -->

    <!-- Hero Section -->
    <div class="container mt-4" id="home">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h1>Find Your Dream Property</h1>
                <p>Search, Buy, or Rent the best properties at the best prices.</p>
                <a href="/ListProperty" class="btn btn-primary">View Properties</a>
            </div>
            <div class="col-md-6">
                <img src="https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=600" 
                     class="img-fluid rounded" alt="Real Estate">
            </div>
        </div>
    </div>

    <!-- About Us Section -->
    <div class="container mt-5" id="about">
        <h2 class="text-center">About Us</h2>
        <p class="text-center">We are a trusted real estate platform dedicated to helping you find the best properties. Our goal is to connect buyers and sellers with ease, providing a seamless real estate experience. With a wide range of listings and expert insights, we ensure a smooth journey in property transactions.</p>
    </div>

    <!-- Contact Us Section -->
    <div class="container mt-5" id="contact">
        <h2 class="text-center">Contact Us</h2>
        <p class="text-center">Have any questions? Get in touch with us!</p>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="contact" method="POST">
                    <div class="mb-3">
                        <label for="name" class="form-label">Your Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Your Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2025 Real Estate Management System. All Rights Reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
