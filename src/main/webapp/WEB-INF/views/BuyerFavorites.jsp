<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Buyer | Saved Properties</title>

<jsp:include page="BuyerCss.jsp" />
<link
	href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
</head>
<body>

	<jsp:include page="BuyerHeader.jsp" />
	<jsp:include page="BuyerSidebar.jsp" />

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Saved Properties</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="BuyerDashboard">Home</a></li>
					<li class="breadcrumb-item active">Saved Properties</li>
				</ol>
			</nav>
		</div>

		<section class="section dashboard">
			<div class="row">
				<c:if test="${empty favorites}">
					<div class="alert alert-info text-center">You haven't saved
						any properties yet.</div>
				</c:if>

				<c:forEach var="prop" items="${favorites}">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100 shadow-sm">
							<img src="${prop.imageUrls}" class="card-img-top"
								style="height: 200px; object-fit: cover;" alt="Property Image">
							<div class="card-body">
								<h5 class="card-title">${prop.propertyName}</h5>
								<p class="card-text text-truncate">${prop.description}</p>


								<div class="d-flex justify-content-between">
									<a href="/ViewProperty/${prop.propertyId}"
										class="btn btn-outline-primary btn-sm w-50 me-2">View</a> 
										<a
										href="/remove-favorite/${prop.propertyId}"
										class="btn btn-outline-danger btn-sm w-50">Remove</a>
								</div>
								
								
								

							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>
	</main>

	<jsp:include page="BuyerFooter.jsp" />
	<jsp:include page="BuyerJs.jsp" />

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.table').DataTable(); // Optional if you want a table version later
		});
	</script>

</body>
</html>
