<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Real Estate Management System - Find Your Dream Home</title>

<!-- Favicon -->
<link href="/assets/img/favicon.png" rel="icon">

<!-- Fonts & Bootstrap -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<!-- Font Awesome CSS (Add this in your <head>) -->
<!-- Correct Font Awesome 6.5.0 CDN link with valid SRI -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
	integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


<style>
body {
	font-family: 'Inter', sans-serif;
	background-color: #f9f9f9;
	color: #212529;
}

a {
	text-decoration: none;
}

.hero-section {
	background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
		url('https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=1200')
		center/cover no-repeat;
	color: white;
	text-align: center;
	padding: 100px 30px;
	border-radius: 12px;
}

.hero-section .btn {
	padding: 12px 24px;
	font-size: 1.1rem;
	font-weight: 600;
}

.card-custom {
	border: none;
	border-radius: 15px;
	box-shadow: 0 6px 24px rgba(0, 0, 0, 0.08);
	transition: 0.3s ease;
}

.card-custom:hover {
	transform: translateY(-6px);
	box-shadow: 0 12px 28px rgba(0, 0, 0, 0.1);
}

.card-img-top {
	height: 200px;
	object-fit: cover;
	border-radius: 15px 15px 0 0;
}

.carousel-inner {
	border-radius: 12px;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
}

.carousel-container {
	margin: 70px auto;
	max-width: 1140px;
}

.carousel-control-prev-icon, .carousel-control-next-icon {
	background-color: rgba(0, 0, 0, 0.4);
	padding: 20px;
	border-radius: 50%;
}

.testimonials-section, .contact-section {
	padding: 60px 20px;
	border-radius: 30px;
	margin: 60px 0;
}

.testimonial-card {
	background: white;
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0 3px 20px rgba(0, 0, 0, 0.05);
	position: relative;
	margin-bottom: 30px;
}

.testimonial-card::before {
	content: '“';
	font-size: 80px;
	position: absolute;
	top: 10px;
	left: 20px;
	color: rgba(52, 152, 219, 0.1);
	font-family: Georgia, serif;
}

.rating {
	color: #ffc107;
}

.contact-form {
	background: white;
	padding: 40px;
	border-radius: 20px;
	box-shadow: 0 4px 25px rgba(0, 0, 0, 0.06);
	max-width: 600px;
	margin: auto;
}

.form-control {
	border-radius: 8px;
	padding: 12px 15px;
}

.contact-btn {
	padding: 12px 30px;
	font-weight: 600;
	background-color: #007bff;
	border: none;
	border-radius: 8px;
	color: white;
}

.contact-btn:hover {
	background-color: #0056b3;
}

.services-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
	gap: 30px;
	margin-top: 50px;
}

.service-card {
	text-align: center;
	padding: 30px;
	background-color: #e6ffff;
	border-radius: 20px;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
	transition: transform 0.3s ease;
}

.service-card:hover {
	transform: translateY(-5px);
}

.service-icon {
	background-color: rgba(52, 152, 219, 0.1);
	width: 80px;
	height: 80px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 50%;
	margin: auto auto 20px;
}

.service-icon i {
	font-size: 30px;
	color: #007bff;
}
</style>
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<!-- Hero Section -->
	<div class="container mt-4">
		<div class="hero-section">
			<h1 class="display-5">Find Your Dream Property</h1>
			<p class="lead">Search, Buy, or Rent the best properties at the
				best prices.</p>
			<a href="/ListProperty" class="btn btn-primary">View Properties</a>
		</div>
	</div>

	<!-- Carousel Section -->
	<div class="carousel-container">
		<div id="propertyCarousel" class="carousel slide"
			data-bs-ride="carousel" data-bs-interval="2000">
			<div class="carousel-inner">
				<c:forEach var="property" items="${properties}" varStatus="status">
					<c:if test="${status.index % 3 == 0}">
						<div class="carousel-item ${status.index == 0 ? 'active' : ''}">
							<div class="row justify-content-center px-3">
					</c:if>

					<!-- Single Property Card -->
					<div class="col-sm-6 col-md-4 mb-4">
						<div class="card card-custom h-100">
							<img src="${property.imageUrls}" class="card-img-top"
								alt="${property.title}">
							<div class="card-body">
								<h5 class="card-title">${property.title}</h5>
								<p class="card-text">
									<strong>Address:</strong> ${property.address},
									${property.zipcode}<br> <strong>Price:</strong>
									₹${property.basePrice}<br> <strong>Bedrooms:</strong>
									${property.bedrooms}, <strong>Bathrooms:</strong>
									${property.bathrooms}
								</p>
								<div class="text-center">
									<a href="/login" class="btn btn-primary carousel-btn">View
										Details</a>
								</div>
							</div>
						</div>
					</div>

					<c:if test="${status.index % 3 == 2 || status.last}">
			</div>
		</div>
		</c:if>
		</c:forEach>
	</div>

	<!-- Carousel Controls -->
	<button class="carousel-control-prev" type="button"
		data-bs-target="#propertyCarousel" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#propertyCarousel" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
	</div>
	</div>

	<!-- About Us -->
	<div class="container text-center mt-5" id="aboutus">
		<h2>About Us</h2>
		<p class="text-muted">We are a leading real estate platform
			offering seamless property transactions and insights.</p>
	</div>

	<!-- Services -->
	<!-- Services -->
	<div class="container services-container">
		<div class="service-card">
			<div class="service-icon">
				<i class="fas fa-home"></i>
			</div>
			<h5>Property Listings</h5>
			<p>Thousands of verified properties in top locations.</p>
		</div>
		<div class="service-card">
			<div class="service-icon">
				<i class="fas fa-map-marked-alt"></i>
			</div>
			<h5>Location Insights</h5>
			<p>Find the right neighborhood for your lifestyle.</p>
		</div>
		<div class="service-card">
			<div class="service-icon">
				<i class="fas fa-phone-volume"></i>
			</div>
			<h5>24/7 Support</h5>
			<p>We’re here to help with all your queries.</p>
		</div>
	</div>


	<!-- Testimonials -->
	<div class="container testimonials-section">
		<div class="testimonial-card">
			<p>"The Real Estate Finder helped me find my dream home quickly
				and easily!"</p>
			<div class="rating">★★★★★</div>
			<strong>- Riya Sharma</strong>
		</div>
		<div class="testimonial-card">
			<p>"Professional agents, great listings, and awesome support
				team."</p>
			<div class="rating">★★★★★</div>
			<strong>- Rahul Verma</strong>
		</div>
	</div>

	<!-- Contact Us -->
	<div class="container contact-section" id="contact">
		<div class="section-title text-center">
			<h2>Contact Us</h2>
		</div>
		<div class="contact-form">
			<form action="/savecontact" method="post">
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="name" class="form-label">Your Name</label> <input
							type="text" class="form-control" id="name" name="name" required>
					</div>
					<div class="col-md-6 mb-3">
						<label for="email" class="form-label">Your Email</label> <input
							type="email" class="form-control" id="email" name="email"
							required>
					</div>
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">Phone Number</label> <input
						type="text" class="form-control" id="phone" name="phone" required>
				</div>
				<div class="mb-3">
					<label for="message" class="form-label">Message</label>
					<textarea class="form-control" id="message" name="message" rows="4"
						required></textarea>
				</div>
				<button type="submit" class="btn btn-primary contact-btn w-100">Send
					Message</button>
			</form>
			<div class="modal fade" id="contactSuccessModal" tabindex="-1"
				aria-labelledby="contactSuccessLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="contactSuccessLabel">Thank You!</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">We’ve received your message. Our
							team will get back to you shortly.</div>
					</div>
				</div>
			</div>

		</div>
	</div>



	<%@ include file="footer.jsp"%>

	<!-- Bootstrap JS -->
	<c:if test="${not empty message}">
  <script>
    window.onload = function() {
      var myModal = new bootstrap.Modal(document.getElementById('contactSuccessModal'));
      myModal.show();
    }
  </script>
</c:if>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Simple redirect on button click -->
	<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll('.carousel-btn').forEach(btn => {
      btn.addEventListener('click', function (e) {
        e.preventDefault();
        window.location.href = btn.href;
      });
    });
  });
</script>


</body>
</html>
