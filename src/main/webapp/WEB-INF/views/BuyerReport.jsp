<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Admin | Buyer Report</title>
<jsp:include page="AdminCss.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.bootstrap5.min.css" />

<link
	href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.bootstrap5.min.css" />
	
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Buyer Report</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Buyer Report</li>
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
									<table id="userTable"
										class="table table-bordered table-striped table-hover shadow-lg">
										<thead class="table-dark">
											<tr>
												<th>ID</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Email</th>
												<th>Contact</th>
												<th>Gender</th>
												<th>Role</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${users}" var="m">
												<tr>
													<td>${m.userId}</td>
													<td>${m.firstName}</td>
													<td>${m.lastName}</td>
													<td>${m.email}</td>
													<td>${m.contactNum}</td>
													<td>${m.gender}</td>
													<td>${m.role}</td>

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

	<!-- DataTables Buttons -->
	<script
		src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.bootstrap5.min.js"></script>

	<!-- JSZip and PDFMake for Excel and PDF -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

	<!-- Buttons HTML5 export and print -->
	<script
		src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.print.min.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							$('#userTable')
									.DataTable(
											{
												paging : true,
												lengthMenu : [ 5, 10, 15 ], 
												pageLength : 5,
												ordering : true,
												searching : true,
												dom : '<"row mb-3"<"col-sm-6"B><"col-sm-6 text-end"l>>' +

									            '<"row"<"col-sm-12"tr>>' +
									            '<"row mt-3"<"col-sm-6"i><"col-sm-6 d-flex justify-content-end"p>>',
												buttons : [ 'copy', 'csv',
														'excel', 'pdf', 'print' ]
											});
						});
	</script>

</body>
</html>
