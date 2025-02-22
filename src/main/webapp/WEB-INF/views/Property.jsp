<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Property</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style type="text/css">
   		
    
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Add New Property</h2>
        <form action="/saveproperty" method="post" class="needs-validation" novalidate >
            <div class="mb-3">
                <label for="title" class="form-label">Title:</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="mb-3">
                <label for="propertyName" class="form-label">Property Name:</label>
                <input type="text" class="form-control" id="propertyName" name="propertyName" required>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address:</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>
            <div class="mb-3">
                <label for="zipcode" class="form-label">Zip Code:</label>
                <input type="text" class="form-control" id="zipcode" name="zipcode" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="basePrice" class="form-label">Base Price:</label>
                <input type="number" class="form-control" id="basePrice" name="basePrice" required>
            </div>
            <div class="mb-3">
                <label for="otherPriceDescription" class="form-label">Other Price Description:</label>
                <input type="text" class="form-control" id="otherPriceDescription" name="otherPriceDescription">
            </div>
            <div class="mb-3">
                <label for="bedrooms" class="form-label">Bedrooms:</label>
                <input type="number" class="form-control" id="bedrooms" name="bedrooms" required>
            </div>
            <div class="mb-3">
                <label for="bathrooms" class="form-label">Bathrooms:</label>
                <input type="number" class="form-control" id="bathrooms" name="bathrooms" required>
            </div>
            <div class="mb-3">
                <label for="furnishingStatus" class="form-label">Furnishing Status:</label>
                <select class="form-select" id="furnishingStatus" name="furnishingStatus" required>
                    <option value="">-- Select Furnishing Status --</option>
                    <option value="Furnished">Furnished</option>
                    <option value="Semi-Furnished">Semi-Furnished</option>
                    <option value="Unfurnished">Unfurnished</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="yearBuilt" class="form-label">Year Built:</label>
                <input type="number" class="form-control" id="yearBuilt" name="yearBuilt" required>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Status:</label>
                <select class="form-select" id="status" name="status" required>
                    <option value="">-- Select Status --</option>
                    <option value="Active">Active</option>
                    <option value="Not active">Not Active</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>