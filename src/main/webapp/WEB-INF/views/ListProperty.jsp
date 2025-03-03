<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Property</title>

<jsp:include page="AdminCss.jsp"></jsp:include>
<link
	href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
</head>
</head>
<body class="bg-light">

	<%@ include file="navbar.jsp"%>
	<jsp:include page="AgentHeader.jsp"></jsp:include>
	<jsp:include page="AgentSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>List Property</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List Property</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">
				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Manage<span>/all</span>
									</h5>
									<table id="propertyTable" class="table table-bordered table-striped table-hover shadow-lg">
									
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
						</div>
						<!-- End Reports -->
					</div>
				</div>
				<!-- End Left side columns -->
				<!-- Right side columns -->
				<!-- End Right side columns -->
			</div>
		</section>
	</main>
	
	<!-- main content end  -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>


	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			let table = new DataTable('#myTable');
		});
		
		
	    $(document).ready(function() {
	        $('#propertyTable').DataTable({
	            "paging": true,  // Enables pagination
	            "lengthMenu": [5, 10, 25, 50], // Allows selection of items per page
	            "pageLength": 5, // Default rows per page
	            "ordering": true, // Enables column sorting
	            "searching": true, // Enables search filter
	        });
	    });
	</script>
						
</body>
</html>
