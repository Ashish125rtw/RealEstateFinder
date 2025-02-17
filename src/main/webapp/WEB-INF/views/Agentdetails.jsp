<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agent Details</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    .compact-form .form-group {
        margin-bottom: 0.5rem; /* Reduce spacing between form groups */
    }
    .compact-form .form-control {
        padding: 0.25rem 0.5rem; /* Smaller padding for inputs */
        font-size: 0.875rem; /* Smaller font size */
    }
    .compact-form label {
        margin-bottom: 0.25rem; /* Reduce spacing below labels */
        font-size: 0.875rem; /* Smaller font size for labels */
    }
    .compact-form .btn {
        padding: 0.25rem 0.5rem; /* Smaller button padding */
        font-size: 0.875rem; /* Smaller button font size */
    }
   </style>

</head>
<body>
<div class="container mt-5">
	<h2 class="mb-4">Add New Agent</h2>
	<form action="saveagent" method="post" class="needs-validation" novalidate>
        <div class="form-group">
            <label for="userId">Agent Id:</label>
            <input type="text" class="form-control" id="userId" name="userId" required>
        </div>
        <div class="form-group">
            <label for="licenseNo">License No:</label>
            <input type="text" class="form-control" id="licenseNo" name="licenseNo" required>
        </div>
        <div class="form-group">
            <label for="agencyName">Agency Name:</label>
            <input type="text" class="form-control" id="agencyName" name="agencyName" required>
        </div>
        <div class="form-group">
            <label for="experienceYears">Experience (Years):</label>
            <input type="number" class="form-control" id="experienceYears" name="experienceYears" required>
        </div>
        <div class="form-group">
            <label for="rating">Rating:</label>
            <input type="number" step="0.1" class="form-control" id="rating" name="rating" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>