<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Property Details - RealEstate</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/2.5.0/remixicon.css" rel="stylesheet">

  <!-- Main CSS -->
  <style>
    :root {
      --primary-color: #012970;
      --secondary-color: #4154f1;
      --light-color: #f6f9ff;
      --gray-color: #4d5499;
      --text-color: #012970;
      --border-color: #eceef1;
    }
    
    body {
      font-family: "Open Sans", sans-serif;
      background: #f6f9ff;
      color: #444444;
    }
    
    a {
      color: var(--secondary-color);
      text-decoration: none;
    }
    
    a:hover {
      color: var(--primary-color);
      text-decoration: none;
    }
    
    .pagetitle {
      margin-bottom: 10px;
    }
    
    .pagetitle h1 {
      font-size: 24px;
      margin-bottom: 0;
      font-weight: 600;
      color: var(--primary-color);
    }
    
    .breadcrumb {
      font-size: 14px;
      color: #899bbd;
      font-weight: 600;
    }
    
    .breadcrumb a {
      color: #899bbd;
      transition: 0.3s;
    }
    
    .breadcrumb a:hover {
      color: var(--secondary-color);
    }
    
    .breadcrumb .breadcrumb-item::before {
      color: #899bbd;
    }
    
    .breadcrumb .active {
      color: var(--secondary-color);
      font-weight: 600;
    }
    
    .card {
      margin-bottom: 30px;
      border: none;
      border-radius: 10px;
      box-shadow: 0 0 30px rgba(1, 41, 112, 0.1);
    }
    
    .card-header, .card-footer {
      border-color: var(--border-color);
      background-color: #fff;
      color: #798eb3;
      padding: 15px;
    }
    
    .card-header {
      border-bottom: 1px solid var(--border-color);
    }
    
    .card-title {
      padding: 20px 0 15px 0;
      font-size: 18px;
      font-weight: 600;
      color: var(--primary-color);
      font-family: "Poppins", sans-serif;
    }
    
    .card-title span {
      color: #899bbd;
      font-size: 14px;
      font-weight: 400;
    }
    
    .card-img-overlay {
      background-color: rgba(255, 255, 255, 0.6);
    }
    
    .back-to-top {
      position: fixed;
      visibility: hidden;
      opacity: 0;
      right: 15px;
      bottom: 15px;
      z-index: 99999;
      background: var(--secondary-color);
      width: 40px;
      height: 40px;
      border-radius: 4px;
      transition: all 0.4s;
    }
    
    .back-to-top i {
      font-size: 24px;
      color: #fff;
      line-height: 0;
    }
    
    .back-to-top:hover {
      background: #6776f4;
      color: #fff;
    }
    
    .property-img {
      border-radius: 10px;
      overflow: hidden;
      height: 400px;
      object-fit: cover;
      width: 100%;
    }
    
    .property-details-table th {
      width: 30%;
      color: var(--primary-color);
      font-weight: 600;
    }
    
    .property-details-table td {
      color: #444444;
    }
    
    .property-badge {
      position: absolute;
      top: 20px;
      right: 20px;
      z-index: 10;
      padding: 8px 15px;
      background-color: var(--secondary-color);
      color: white;
      font-weight: 600;
      border-radius: 25px;
    }
    
    .price-tag {
      font-size: 24px;
      color: var(--secondary-color);
      font-weight: 700;
    }
    
    .property-feature {
      display: inline-block;
      margin-right: 15px;
      margin-bottom: 10px;
    }
    
    .property-feature i {
      color: var(--secondary-color);
      margin-right: 5px;
    }
    
    .header {
      transition: all 0.5s;
      z-index: 997;
      height: 60px;
      box-shadow: 0px 2px 20px rgba(1, 41, 112, 0.1);
      background-color: #fff;
      padding-left: 20px;
    }
  </style>
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
      <a href="/" class="logo d-flex align-items-center">
        <img src="/assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">RealEstate</span>
      </a>
    </div>
    <!-- Include your navbar here -->
    <jsp:include page="navbar.jsp"></jsp:include>
  </header><!-- End Header -->

  <main id="main" class="main" style="margin-top: 60px; padding: 20px;">
    <div class="pagetitle">
      <h1>Property Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/">Home</a></li>
          <li class="breadcrumb-item"><a href="/ListProperty">Properties</a></li>
          <li class="breadcrumb-item active">Property Details</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-8">
          <div class="card">
            <div class="card-body pt-3">
              <div class="position-relative mb-4">
                <div class="property-badge">
                  <c:choose>
                    <c:when test="${property.status eq 'Available'}">Available</c:when>
                    <c:when test="${property.status eq 'Sold'}">Sold</c:when>
                    <c:when test="${property.status eq 'Pending'}">Pending</c:when>
                    <c:otherwise>For Sale</c:otherwise>
                  </c:choose>
                </div>
                <img src="${property.imageUrls}" class="property-img" alt="${property.propertyName}">
              </div>
              
              <h2 class="card-title">${property.propertyName}</h2>
              <h6 class="text-muted mb-3">${property.address}, ${property.zipcode}</h6>
              
              <div class="d-flex justify-content-between align-items-center mb-4">
                <div class="price-tag">$${property.basePrice}</div>
                <div>
                  <span class="property-feature"><i class="bi bi-house-door"></i> ${property.yearBuilt}</span>
                  <span class="property-feature"><i class="bi bi-person-workspace"></i> ${property.bedrooms} Beds</span>
                  <span class="property-feature"><i class="bi bi-water"></i> ${property.bathrooms} Baths</span>
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
                  <table class="table property-details-table">
                    <tr>
                      <th>Property ID</th>
                      <td>${property.propertyId}</td>
                    </tr>
                    <tr>
                      <th>Title</th>
                      <td>${property.title}</td>
                    </tr>
                    <tr>
                      <th>Zip Code</th>
                      <td>${property.zipcode}</td>
                    </tr>
                    <tr>
                      <th>Base Price</th>
                      <td>$${property.basePrice}</td>
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

        <div class="col-lg-4">
          <!-- Contact Agent Card -->
          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
              <img src="/assets/img/agent-profile.jpg" alt="Agent" class="rounded-circle" style="width: 100px;">
              <h2>Contact Agent</h2>
              <h3>Real Estate Agent</h3>
              <div class="social-links mt-2">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
            <div class="card-body">
              <form class="row g-3">
                <div class="col-12">
                  <label for="yourName" class="form-label">Your Name</label>
                  <input type="text" name="name" class="form-control" id="yourName" required>
                </div>
                <div class="col-12">
                  <label for="yourEmail" class="form-label">Your Email</label>
                  <input type="email" name="email" class="form-control" id="yourEmail" required>
                </div>
                <div class="col-12">
                  <label for="yourPhone" class="form-label">Your Phone</label>
                  <input type="text" name="phone" class="form-control" id="yourPhone" required>
                </div>
                <div class="col-12">
                  <label for="yourMessage" class="form-label">Message</label>
                  <textarea class="form-control" name="message" rows="5" id="yourMessage" required>I'm interested in ${property.propertyName}.</textarea>
                </div>
                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit">Send Message</button>
                </div>
              </form>
            </div>
          </div>

          <!-- Similar Properties Card -->
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Similar Properties</h5>
              <div class="similar-property d-flex border-bottom pb-3 mb-3">
                <img src="/assets/img/property-1.jpg" alt="Property" style="width: 80px; height: 60px; object-fit: cover; border-radius: 5px;">
                <div class="ps-3">
                  <h6 class="m-0"><a href="#" class="text-dark">Modern Apartment</a></h6>
                  <p class="text-muted mb-0">$240,000</p>
                  <small><i class="bi bi-geo-alt"></i> New York</small>
                </div>
              </div>
              <div class="similar-property d-flex border-bottom pb-3 mb-3">
                <img src="/assets/img/property-2.jpg" alt="Property" style="width: 80px; height: 60px; object-fit: cover; border-radius: 5px;">
                <div class="ps-3">
                  <h6 class="m-0"><a href="#" class="text-dark">Family House</a></h6>
                  <p class="text-muted mb-0">$350,000</p>
                  <small><i class="bi bi-geo-alt"></i> San Francisco</small>
                </div>
              </div>
              <div class="similar-property d-flex">
                <img src="/assets/img/property-3.jpg" alt="Property" style="width: 80px; height: 60px; object-fit: cover; border-radius: 5px;">
                <div class="ps-3">
                  <h6 class="m-0"><a href="#" class="text-dark">Luxury Villa</a></h6>
                  <p class="text-muted mb-0">$820,000</p>
                  <small><i class="bi bi-geo-alt"></i> Miami</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer" style="margin-top: 40px; background-color: #fff; border-top: 1px solid #e3e6f0; padding: 20px 0;">
    <div class="copyright">
      &copy; Copyright <strong><span>RealEstate</span></strong>. All Rights Reserved
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.36.0/apexcharts.min.js"></script>

  <!-- Main JS File -->
  <script>
    // Show/hide back-to-top button
    const backtotop = document.querySelector('.back-to-top');
    if (backtotop) {
      window.addEventListener('scroll', () => {
        if (window.scrollY > 100) {
          backtotop.classList.add('active');
        } else {
          backtotop.classList.remove('active');
        }
      });
    }
  </script>
</body>

</html>