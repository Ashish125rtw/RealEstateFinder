<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Property List</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

    <div class="container mt-5">
        <h2 class="text-center mb-4">Property Listings</h2>

        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Zip Code</th>
                        <th>Description</th>
                        <th>Base Price</th>
                        <th>Other Price Details</th>
                        <th>Bedrooms</th>
                        <th>Bathrooms</th>
                        <th>Furnishing</th>
                        <th>Year Built</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${propertyList}" var="property">
                        <tr>
                            <td>${property.propertyId}</td>
                            <td>${property.propertyName}</td>
                            <td>${property.address}</td>
                            <td>${property.zipcode}</td>
                            <td>${property.description}</td>
                            <td>${property.basePrice}</td>
                            <td>${property.otherPriceDescription}</td>
                            <td>${property.bedrooms}</td>
                            <td>${property.bathrooms}</td>
                            <td>${property.furnishingStatus}</td>
                            <td>${property.yearBuilt}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
