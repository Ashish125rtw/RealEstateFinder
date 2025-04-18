<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Property Details | Real Estate</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<script src="assets/js/bootstrap.bundle.min.js"></script>
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<!-- Favicon -->
<link href="/assets/img/favicon.png" rel="icon">

</head>
<body>
	<header id="header" class="header fixed-top d-flex align-items-center">
		<div class="d-flex align-items-center justify-content-between">
			<a href="/" class="logo d-flex align-items-center"> <img
				src="/assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">RealEstate</span>
			</a>
		</div>
		<jsp:include page="navbar.jsp" />
	</header>

	<main id="main" class="main" style="margin-top: 0px; padding: 20px;">
		<div class="pagetitle">
			<h1>Property Details</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/SellerDashboard">Home</a></li>
					<li class="breadcrumb-item"><a href="/ListProperty">Properties</a></li>
					<li class="breadcrumb-item active">Property Details</li>
				</ol>
			</nav>
		</div>

	<c:if test="${sessionScope.user != null && sessionScope.user.role == 'Buyer'}">
    <form action="/save-favorite/${property.propertyId}" method="post" style="display:inline;">
        <button type="submit" class="btn btn-outline-danger">
            ❤️ Add to Favorites
        </button>
    </form>
</c:if>
	
		
		<section class="section">
			<div class="row">
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="position-relative mb-4">
								<span class="badge bg-success property-badge"> <c:choose>
										<c:when test="${property.status eq 'Available'}">Available</c:when>
										<c:when test="${property.status eq 'Sold'}">Sold</c:when>
										<c:when test="${property.status eq 'Pending'}">Pending</c:when>
										<c:otherwise>For Sale</c:otherwise>
									</c:choose>
								</span> <img src="${property.imageUrls}"
									class="img-fluid rounded property-img"
									alt="${property.propertyName}">
							</div>
							<h2 class="card-title">${property.title}</h2>
							<h6 class="text-muted mb-3">
								<i class="bi bi-geo-alt"></i> ${property.address},
								${property.zipcode}
							</h6>
							<div
								class="d-flex justify-content-between align-items-center mb-4">
								<span class="badge bg-primary price-tag">₹
									${property.basePrice}</span>
								<div>
									<span class="me-3"><i class="bi bi-house"></i>
										${property.yearBuilt}</span> <span class="me-3"><i
										class="bi bi-person"></i> ${property.bedrooms} Beds</span> <span><i
										class="bi bi-droplet"></i> ${property.bathrooms} Baths</span>
								</div>
							</div>
							<div class="card mb-4">
								<div class="card-body">
									<h5 class="card-title">Description</h5>
									<p>${property.description}</p>
								</div>
							</div>
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Property Information</h5>
									<table class="table table-bordered">
										<tr>
											<th>Property ID</th>
											<td>${property.propertyId}</td>
										</tr>
										<tr>
											<th>Name</th>
											<td>${property.propertyName}</td>
										</tr>
										<tr>
											<th>Zip Code</th>
											<td>${property.zipcode}</td>
										</tr>
										<tr>
											<th>Base Price</th>
											<td>₹ ${property.basePrice}</td>
										</tr>
										<tr>
											<th>Other Price Details</th>
											<td>${property.otherPriceDescription}</td>
										</tr>
										<tr>
											<th>Bedrooms</th>
											<td>${property.bedrooms}</td>
										</tr>
										<tr>
											<th>Bathrooms</th>
											<td>${property.bathrooms}</td>
										</tr>
										<tr>
											<th>Furnishing Status</th>
											<td>${property.furnishingStatus}</td>
										</tr>
										<tr>
											<th>Year Built</th>
											<td>${property.yearBuilt}</td>
										</tr>
										<tr>
											<th>Status</th>
											<td>${property.status}</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Contact Agent Card -->
				
				<!-- Right-side Contact Form -->
<div class="col-lg-4">
	<div class="card shadow-sm border-0">
		<div class="card-body">
			<h4 class="card-title mb-4 text-primary">Contact Agent</h4>

			<form id="inquiryForm" action="/savebuyerinquiry" method="post">
			
				<!-- Hidden property ID -->
				<input type="hidden" name="propertyId" value="${property.propertyId}" />

				<!-- Buyer Info -->
				<div class="mb-3">
					<label for="name" class="form-label">Your Name</label>
					<input type="text" class="form-control rounded-3" name="name" id="name" placeholder="John Doe" required>
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">Your Email</label>
					<input type="email" class="form-control rounded-3" name="email" id="email" placeholder="john@example.com" required>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone Number</label>
					<input type="text" class="form-control rounded-3" name="phone" id="phone" placeholder="9876543210" required>
				</div>

				<div class="mb-3">
					<label for="message" class="form-label">Message</label>
					<textarea class="form-control rounded-3" name="message" id="message" rows="3"
						placeholder="I’m interested in this property. Please contact me." required></textarea>
				</div>
				<div id="inquiryMessage"></div>
				<!-- Property Summary for Agent -->
				<div class="bg-light border p-3 rounded-3 mb-3 small">
					<strong class="d-block mb-2">Property Summary</strong>
					<ul class="list-unstyled mb-0">
						<li><strong>ID:</strong> ${property.propertyId}</li>
						<li><strong>Name:</strong> ${property.propertyName}</li>
						<li><strong>Location:</strong> ${property.address}, ${property.zipcode}</li>
						<li><strong>Price:</strong> ₹ ${property.basePrice}</li>
						<li><strong>Beds:</strong> ${property.bedrooms}, <strong>Baths:</strong> ${property.bathrooms}</li>
					</ul>
				</div>

				<!-- Submit Button -->
				<div class="d-grid">
					<button type="submit" class="btn btn-primary rounded-3">Send Inquiry</button>
				</div>
			</form>
		</div>
	</div>
</div>	
		 <!-- pop up  -->
		 <!-- Inquiry Success Modal -->
<div class="modal fade" id="inquirySuccessModal" tabindex="-1" aria-labelledby="inquirySuccessModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="inquirySuccessModalLabel">Inquiry Submitted</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Your inquiry has been successfully submitted. Our agent will contact you soon.
      </div>
    </div>
  </div>
</div>
		 		
		
				<!-- end contact -->

			</div>
		</section>
	</main>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function () {
    $('#inquiryForm').on('submit', function (e) {
      e.preventDefault(); // prevent full-page reload

      $.ajax({
        url: '/savebuyerinquiry',
        method: 'POST',
        data: $(this).serialize(),
        success: function (response) {
          $('#inquiryForm')[0].reset(); // clear form
          // Show success modal
          var successModal = new bootstrap.Modal(document.getElementById('inquirySuccessModal'));
          successModal.show();
        },
        error: function () {
          alert('Error submitting inquiry. Please try again later.');
        }
      });
    });
  });
</script>

</body>
</html>
