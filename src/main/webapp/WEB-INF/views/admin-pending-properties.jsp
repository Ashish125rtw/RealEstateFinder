<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pending Properties</title>
    <jsp:include page="AdminCss.jsp" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .property-card img {
            max-height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }
        .property-card {
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .btn-group {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <jsp:include page="AdminHeader.jsp" />
    <jsp:include page="AdminSidebar.jsp" />

    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Pending Property Approvals</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active">Pending Properties</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <div class="container-fluid">
                <c:if test="${empty pendingProperties}">
                    <div class="alert alert-info text-center">No properties pending approval.</div>
                </c:if>

                <div class="row">
                    <c:forEach var="property" items="${pendingProperties}">
                        <div class="col-md-6 col-lg-4 mb-4">
                            <div class="card property-card h-100">
                                <img src="${property.imageUrls}" class="card-img-top" alt="Property Image">
                                <div class="card-body">
                                    <h5 class="card-title">${property.title}</h5>
                                    <p><strong>Address:</strong> ${property.address}</p>
                                    <p><strong>Description:</strong> ${property.description}</p>
                                    <p><strong>Price:</strong> ₹${property.basePrice}</p>
                                    <p><strong>Status:</strong> ${property.status}</p>

                                    <div class="d-flex gap-2">
                                        <form action="approve-property" method="post" class="w-50">
                                            <input type="hidden" name="propertyId" value="${property.propertyId}" />
                                            <button type="submit" class="btn btn-success w-100">✅ Approve</button>
                                        </form>

                                        <form action="reject-property" method="post" class="w-50">
                                            <input type="hidden" name="propertyId" value="${property.propertyId}" />
                                            <button type="submit" class="btn btn-danger w-100">❌ Reject</button>
                                        </form>
                                    </div>
                                </div>	
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="AdminFooter.jsp" />
    <jsp:include page="AdminJs.jsp" />
</body>
</html>
