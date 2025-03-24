<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Admin | Dashboard</title>

<jsp:include page="AdminCss.jsp"></jsp:include>
<link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>

		<!-- Dashboard Overview -->
		<section class="section dashboard">
			<div class="row">

				<!-- Dashboard Cards -->
				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Total Properties</h5>
							<h3>${totalProperties}</h3>
							
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Total Agents</h5>
							
							<h2>${totalAgents}</h2>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Total Users</h5>
							<h3>${totalUsers}</h3>
							
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title">Pending Inquiries</h5>
							<h3>${pendingInquiries}</h3>
							<h2>0</h2>
						</div>
					</div>
				</div>
				<!-- End Dashboard Cards -->

			</div>

			<!-- Recent Activities -->
			<div class="row mt-4">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Recent User Inquiries</h5>
							<table class="table table-bordered table-striped">
								<thead class="table-dark">
									<tr>
										<th>ID</th>
										<th>User</th>
										<th>Message</th>
										<th>Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${recentInquiries}" var="inquiry">
										<tr>
											<td>${inquiry.id}</td>
											<td>${inquiry.userName}</td>
											<td>${inquiry.message}</td>
											<td>${inquiry.date}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- Quick Links -->
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Quick Links</h5>
							<div class="list-group">
								<a href="listProperties.jsp" class="list-group-item list-group-item-action">🏠 Manage Properties</a>
								<a href="listAgents.jsp" class="list-group-item list-group-item-action">👤 Manage Agents</a>
								<a href="listUsers.jsp" class="list-group-item list-group-item-action">👥 Manage Users</a>
								<a href="inquiries.jsp" class="list-group-item list-group-item-action">📩 View Inquiries</a>
								<a href="reports.jsp" class="list-group-item list-group-item-action">📊 Reports & Analytics</a>
							</div>
						</div>
					</div>
				</div>
				<!-- End Quick Links -->

			</div>

		</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>

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
