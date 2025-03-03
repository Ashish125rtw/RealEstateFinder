<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Admin | List User</title>
<jsp:include page="AdminCss.jsp"></jsp:include>
<link
	href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
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
							Users<span>/all</span>
			</h5>
			<table id="userTable" class="table table-bordered table-striped table-hover shadow-lg">
										<thead class="table-dark">
											<tr>
												<th>ID</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Email</th>
												<th>Contact</th>
												<th>Gender</th>
												<th>Role</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${userList}" var="m">
												<tr>
													<td>${m.userId}</td>
													<td>${m.firstName}</td>
													<td>${m.lastName}</td>
													<td>${m.email}</td>
													<td>${m.contactNum}</td>
													<td>${m.gender}</td>
													<td>${m.role}</td>
													<td><a href="viewUser/${m.userId}"
														class="btn btn-info btn-sm">View</a> <a
														href="editUser/${m.userId}" class="btn btn-warning btn-sm">Edit</a>
														<a href="deleteUser/${m.userId}"
														class="btn btn-danger btn-sm"
														onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
													</td>
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
	        $('#userTable').DataTable({
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
