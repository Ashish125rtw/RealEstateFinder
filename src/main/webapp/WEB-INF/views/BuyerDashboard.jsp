<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Buyer | Dashboard</title>

<jsp:include page="BuyerCss.jsp"></jsp:include>
<link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
</head>
<body>
	<jsp:include page="BuyerHeader.jsp"></jsp:include>
	<jsp:include page="BuyerSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="buyerdashboard">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>

		<!-- Dashboard Overview -->
		<section class="section dashboard">
			<div class="row">

				<!-- Dashboard Cards -->
				<div class="col-lg-4 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Total Properties</h5>
							<h3>${totalProperties}</h3>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Saved Properties</h5>
							<h3>${savedProperties}</h3>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Scheduled Visits</h5>
							<h3>${scheduledVisits}</h3>
						</div>
					</div>
				</div>
				<!-- End Dashboard Cards -->

			</div>

			<!-- Quick Links -->
			<div class="row mt-4">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Quick Links</h5>
							<div class="list-group">
								<a href="ListProperty" class="list-group-item list-group-item-action">🏠 View Properties</a>
								<a href="savedProperties" class="list-group-item list-group-item-action">💾 Saved Properties</a>
								<a href="scheduleVisit" class="list-group-item list-group-item-action">📅 Schedule a Visit</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Quick Links -->

		</section>
	</main>

	<jsp:include page="BuyerFooter.jsp"></jsp:include>
	<jsp:include page="BuyerJs.jsp"></jsp:include>

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.table').DataTable(); // Apply pagination & sorting to tables
		});
	</script>

</body>
</html>