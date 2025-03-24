<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Real Estate Management System - Find Your Dream Home</title>
    <!-- favicons img -->
    <link href="static/assets/img/favicon.png" rel="icon">
  	<link href="/assets/img/apple-t	ouch-icon.png" rel="apple-touch-icon">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        .hero-section {
            background: url('https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=1200') center/cover no-repeat;
            color: white;
            text-align: center;
            padding: 80px 20px;
            border-radius: 8px;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            font-size: 18px;
            border-radius: 5px;
            text-decoration: none;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .container-section {
            padding: 50px 20px;
        }
        .contact-form {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .faq-section {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .testimonial {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %>  

    <!-- Hero Section -->
    <div class="container mt-4">
        <div class="hero-section">
            <h1>Find Your Dream Property</h1>
            <p>Search, Buy, or Rent the best properties at the best prices.</p>
            <a href="/ListProperty" class="btn btn-custom">View Properties</a>
        </div>
    </div>

    <!-- About Us Section -->
    <div class="container container-section text-center" id="aboutus">
        <br>
        <h2>About Us</h2>
        <p>We are a leading real estate management platform, providing seamless property transactions, expert insights, and a user-friendly experience. Whether you’re buying, selling, or renting, we’re here to help you find the perfect home or investment opportunity.</p>
    </div>

    <!-- FAQs -->
    <div class="container container-section">
        <h2 class="text-center">Frequently Asked Questions</h2>
        <div class="faq-section mx-auto" style="max-width: 800px;">
            <p><strong>Q1: How do I list my property?</strong><br>Simply register, upload property details, and get listed.</p>
            <p><strong>Q2: What fees are involved?</strong><br>We offer competitive pricing with no hidden charges.</p>
            <p><strong>Q3: Do you provide home loans?</strong><br>Yes, we partner with banks to assist in financing.</p>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container container-section text-center">
        <h2>What Our Clients Say</h2>
        <div class="testimonial mx-auto" style="max-width: 600px;">
            <p>⭐⭐⭐⭐⭐ "This platform made buying my first home so easy! The process was smooth, and the support was excellent!" – <strong>Rahul Sharma</strong></p>
            <p>⭐⭐⭐⭐⭐ "Best real estate service! Their expert consultation helped me make a profitable investment." – <strong>Aditi Verma</strong></p>
        </div>
    </div>

    <!-- Contact Form -->
   
<div class="container text-center" id="contact">
    <br>
    <h2>Contact Us</h2>

    <!-- Success Message -->
    <div id="alert-message" class="alert alert-success d-none">
        Your message has been sent successfully!
    </div>

    <!-- Contact Form -->
    <div class="contact-form">
        <form id="contactForm" action="/savecontact" method="post">
        
            <div class="mb-3">
                <label for="name" class="form-label">Your Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Your Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
            </div>

            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
            </div>

            <button type="submit" class="btn btn-primary w-100">Send Message</button>
        </form>
    </div>
</div>

   
    
    <%@ include file="footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
