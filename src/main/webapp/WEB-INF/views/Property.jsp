<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Property</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
    .invalid-feedback {
        display: none;
        width: 100%;
        margin-top: 0.25rem;
        font-size: 0.875em;
        color: #dc3545;
    }
    
    .was-validated .form-control:invalid,
    .form-control.is-invalid {
        border-color: #dc3545;
        padding-right: calc(1.5em + 0.75rem);
        background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 12' width='12' height='12' fill='none' stroke='%23dc3545'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23dc3545' stroke='none'/%3e%3c/svg%3e");
        background-repeat: no-repeat;
        background-position: right calc(0.375em + 0.1875rem) center;
        background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
    }
    
    .was-validated .form-control:valid,
    .form-control.is-valid {
        border-color: #198754;
        padding-right: calc(1.5em + 0.75rem);
        background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%23198754' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e");
        background-repeat: no-repeat;
        background-position: right calc(0.375em + 0.1875rem) center;
        background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
    }
</style>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow p-4" style="width: 40rem;">
        <h2 class="text-center mb-4">Add New Property</h2>
        <form action="/saveproperty" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
            
            <div class="mb-3">
                <label for="title" class="form-label">Title:</label>
                <input type="text" class="form-control" id="title" name="title" required
                       pattern=".{5,100}" title="Title must be between 5 and 100 characters">
                <div class="invalid-feedback">
                    Please provide a valid title (5-100 characters).
                </div>
            </div>
            
            <div class="mb-3">
                <label for="propertyName" class="form-label">Property Name:</label>
                <input type="text" class="form-control" id="propertyName" name="propertyName" required 
                       pattern=".{3,50}" title="Property name must be between 3 and 50 characters">
                <div class="invalid-feedback">
                    Please provide a valid property name (3-50 characters).
                </div>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Address:</label>
                <input type="text" class="form-control" id="address" name="address" required
                       minlength="5" title="Address must be at least 5 characters">
                <div class="invalid-feedback">
                    Please provide a valid address (minimum 5 characters).
                </div>
            </div>

            <div class="mb-3">
                <label for="zipcode" class="form-label">Zip Code:</label>
                <input type="text" class="form-control" id="zipcode" name="zipcode" required
                       pattern="[0-9]{5,10}" title="Zip code must be 5-10 digits">
                <div class="invalid-feedback">
                    Please provide a valid zip code (5-10 digits).
                </div>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea class="form-control" id="description" name="description" required
                          minlength="20" maxlength="500" title="Description must be between 20 and 500 characters"></textarea>
                <div class="invalid-feedback">
                    Please provide a description (20-500 characters).
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="basePrice" class="form-label">Base Price:</label>
                    <input type="number" class="form-control" id="basePrice" name="basePrice" required
                           min="1" step="0.01" title="Base price must be greater than 0">
                    <div class="invalid-feedback">
                        Please provide a valid base price (greater than 0).
                    </div>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="otherPriceDescription" class="form-label">Other Price Description:</label>
                    <input type="text" class="form-control" id="otherPriceDescription" name="otherPriceDescription">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="bedrooms" class="form-label">Bedrooms:</label>
                    <input type="number" class="form-control" id="bedrooms" name="bedrooms" required
                           min="0" max="20" step="1" title="Number of bedrooms must be between 0 and 20">
                    <div class="invalid-feedback">
                        Please provide a valid number of bedrooms (0-20).
                    </div>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="bathrooms" class="form-label">Bathrooms:</label>
                    <input type="number" class="form-control" id="bathrooms" name="bathrooms" required
                           min="0" max="20" step="0.5" title="Number of bathrooms must be between 0 and 20">
                    <div class="invalid-feedback">
                        Please provide a valid number of bathrooms (0-20, increments of 0.5 allowed).
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label for="furnishingStatus" class="form-label">Furnishing Status:</label>
                <select class="form-select" id="furnishingStatus" name="furnishingStatus" required>
                    <option value="">-- Select Furnishing Status --</option>
                    <option value="Furnished">Furnished</option>
                    <option value="Semi-Furnished">Semi-Furnished</option>
                    <option value="Unfurnished">Unfurnished</option>
                </select>
                <div class="invalid-feedback">
                    Please select a furnishing status.
                </div>
            </div>

            <div class="mb-3">
                <label for="yearBuilt" class="form-label">Year Built:</label>
                <input type="number" class="form-control" id="yearBuilt" name="yearBuilt" required
                       min="1800" max="2025" step="1" title="Year built must be between 1800 and current year">
                <div class="invalid-feedback">
                    Please provide a valid year built (1800-2025).
                </div>
            </div>

            <div class="mb-3">
                <label for="status" class="form-label">Status:</label>
                <select class="form-select" id="status" name="status" required>
                    <option value="">-- Select Status --</option>
                    <option value="Active">Active</option>
                    <option value="Not active">Not Active</option>
                </select>
                <div class="invalid-feedback">
                    Please select a status.
                </div>
            </div>

            <div class="mb-3">
                <label for="propertyPic" class="form-label">Upload Property Images (Max 2):</label>
                <input type="file" class="form-control" id="propertyPic" name="propertyPic" accept="image/*" multiple required>
                <div class="invalid-feedback">
                    Please upload at least one property image (maximum 2).
                </div>
            </div>

            <button type="submit" class="btn btn-primary w-100">Add Property</button>
        </form>
    </div>
</div>
	

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
		
	<!-- Form Validation Script -->
	<script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (() => {
            'use strict'
            
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            const forms = document.querySelectorAll('.needs-validation')
            
            // Validate file input for max 2 files
            const fileInput = document.getElementById('propertyPic');
            fileInput.addEventListener('change', function() {
                if (this.files.length > 2) {
                    this.setCustomValidity('You can upload a maximum of 2 images');
                } else if (this.files.length === 0) {
                    this.setCustomValidity('Please upload at least one image');
                } else {
                    this.setCustomValidity('');
                }
            });
            
            // Loop over them and prevent submission
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    
                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
</body>
</html>