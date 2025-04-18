<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Property Listings</title>

<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/datatables.net-bs5/css/dataTables.bootstrap5.min.css"
	rel="stylesheet">
	<!-- Favicon -->
<link href="/assets/img/favicon.png" rel="icon">

<style>
body {
	background-color: #f4f6f9;
}

h2 {
	font-weight: bold;
	color: #0d47a1;
	text-align: center;
	margin-bottom: 20px;
}

.table thead {
	background-color: #0d47a1;
	color: white;
}

.table-hover tbody tr:hover {
	background-color: #e3f2fd;
}
</style>
</head>
<body>

	<!-- Include Navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<h2>Available Properties</h2>

		<div class="table-responsive">
			<table id="propertyTable"
				class="table table-bordered table-striped table-hover">
				<thead>
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

						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!-- Loop through propertyList -->
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
							<td><a href="ViewProperty/${property.propertyId}"
								target="_blank" class="btn btn-info btn-sm"> View </a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

	<!-- jQuery and DataTables -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#propertyTable').DataTable({
				"paging" : true,
				"lengthMenu" : [ 5, 10, 25, 50 ],
				"pageLength" : 10,
				"ordering" : true,
				"searching" : true
			});
		});
	</script>

</body>
</html>
