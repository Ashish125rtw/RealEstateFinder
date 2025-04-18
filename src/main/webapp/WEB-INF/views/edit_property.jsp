<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Property</title>
    <jsp:include page="SellerCss.jsp"/>
</head>
<body>
<jsp:include page="SellerHeader.jsp"/>
<jsp:include page="SellerSidebar.jsp"/>

<main id="main" class="main">
    <div class="pagetitle">
        <h1>Edit Property</h1>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body">
                <form action="updateProperty" method="post">
                    <input type="hidden" name="propertyId" value="${property.propertyId}" />

                    <div class="mb-3">
                        <label class="form-label">Property Name</label>
                        <input type="text" class="form-control" name="propertyName" value="${property.propertyName}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Title</label>
                        <input type="text" class="form-control" name="title" value="${property.title}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Address</label>
                        <input type="text" class="form-control" name="address" value="${property.address}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Base Price</label>
                        <input type="number" class="form-control" name="basePrice" value="${property.basePrice}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Bedrooms</label>
                        <input type="number" class="form-control" name="bedrooms" value="${property.bedrooms}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Bathrooms</label>
                        <input type="number" class="form-control" name="bathrooms" value="${property.bathrooms}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Year Built</label>
                        <input type="number" class="form-control" name="yearBuilt" value="${property.yearBuilt}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Zipcode</label>
                        <input type="text" class="form-control" name="zipcode" value="${property.zipcode}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Furnishing Status</label>
                        <select class="form-select" name="furnishingStatus" required>
                            <option value="Furnished" ${property.furnishingStatus == 'Furnished' ? 'selected' : ''}>Furnished</option>
                            <option value="Semi-Furnished" ${property.furnishingStatus == 'Semi-Furnished' ? 'selected' : ''}>Semi-Furnished</option>
                            <option value="Unfurnished" ${property.furnishingStatus == 'Unfurnished' ? 'selected' : ''}>Unfurnished</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Other Price Description</label>
                        <input type="text" class="form-control" name="otherPriceDescription" value="${property.otherPriceDescription}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select class="form-select" name="status" required>
                            <option value="Active" ${property.status == 'Active' ? 'selected' : ''}>Active</option>
                            <option value="Pending" ${property.status == 'Pending' ? 'selected' : ''}>Pending</option>
                            <option value="Sold" ${property.status == 'Sold' ? 'selected' : ''}>Sold</option>
                            <option value="Rejected" ${property.status == 'Rejected' ? 'selected' : ''}>Rejected</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <textarea class="form-control" name="description" rows="4" required>${property.description}</textarea>
                    </div>

                    <!-- Optional: show existing image -->
                    <div class="mb-3">
                        <label class="form-label">Current Image</label><br>
                        <img src="${property.imageUrls}" alt="Property Image" style="max-width: 300px;" class="img-thumbnail">
                    </div>

                    <!-- Optional: you could add image upload here -->
                    
                    <div class="mb-3">
                        <label class="form-label">Update Image (URL)</label>
                        <input type="text" class="form-control" name="imageUrls" value="${property.imageUrls}">
                    </div>
                    

                    <button type="submit" class="btn btn-success">Update Property</button>
                    <a href="seller_properties" class="btn btn-secondary">Cancel</a>
                </form>
            </div>
        </div>
    </section>
</main>

<jsp:include page="SellerFooter.jsp"/>
<jsp:include page="SellerJs.jsp"/>
</body>
</html>
