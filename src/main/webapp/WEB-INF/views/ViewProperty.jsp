<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Details | Real Estate</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <script src="assets/js/bootstrap.bundle.min.js"></script>
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
        <jsp:include page="navbar.jsp" />
    </header><!-- End Header -->

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

        <section class="section">
            <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="position-relative mb-4">
                                <span class="badge bg-success property-badge">
                                    <c:choose>
                                        <c:when test="${property.status eq 'Available'}">Available</c:when>
                                        <c:when test="${property.status eq 'Sold'}">Sold</c:when>
                                        <c:when test="${property.status eq 'Pending'}">Pending</c:when>
                                        <c:otherwise>For Sale</c:otherwise>
                                    </c:choose>
                                </span>
                                <img src="${property.imageUrls}" class="img-fluid rounded property-img" alt="${property.propertyName}">
                            </div>
                           
                            <h2 class="card-title">${property.title}</h2>
                            <h6 class="text-muted mb-3"><i class="bi bi-geo-alt"></i> ${property.address}, ${property.zipcode}</h6>
                            
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <span class="badge bg-primary price-tag">₹ ${property.basePrice}</span>
                                <div>
                                    <span class="me-3"><i class="bi bi-house"></i> ${property.yearBuilt}</span>
                                    <span class="me-3"><i class="bi bi-person"></i> ${property.bedrooms} Beds</span>
                                    <span><i class="bi bi-droplet"></i> ${property.bathrooms} Baths</span>
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
                                        <tr><th>Property ID</th><td>${property.propertyId}</td></tr>
                                        <tr><th>Name </th><td>${property.propertyName}</td></tr>
                                        <tr><th>Zip Code</th><td>${property.zipcode}</td></tr>
                                        <tr><th>Base Price</th><td> ₹ ${property.basePrice}</td></tr>
                                        <tr><th>Other Price Details</th><td>${property.otherPriceDescription}</td></tr>
                                        <tr><th>Bedrooms</th><td>${property.bedrooms}</td></tr>
                                        <tr><th>Bathrooms</th><td>${property.bathrooms}</td></tr>
                                        <tr><th>Furnishing Status</th><td>${property.furnishingStatus}</td></tr>
                                        <tr><th>Year Built</th><td>${property.yearBuilt}</td></tr>
                                        <tr><th>Status</th><td>${property.status}</td></tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
        </section>	
    </main>
</body>
</html>
