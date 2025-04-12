<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Admin | Dashboard</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- DataTables CSS -->
<link
	href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
<!-- Buttons CSS -->
<link
	href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap5.min.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="AgentDashboard">Home</a></li>
					<li class="breadcrumb-item active">Messages</li>
				</ol>
			</nav>
		</div>

		<!-- Recent User Inquiries -->
		<div class="row mt-4">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Recent User Inquiries</h5>
						<table id="inquiriesTable"
							class="table table-bordered table-striped">
							<thead class="table-dark">
								<tr>
									<th>Name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Message</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${messages}" var="msg">
									<tr>
										<td>${msg.name}</td>
										<td>${msg.email}</td>
										<td>${msg.phone}</td>
										<td>${msg.message}</td>
										<td><a href="deleteuserInquiry?id=${msg.id}"
											class="btn btn-sm btn-danger"
											onclick="return confirm('Are you sure you want to delete this inquiry?');">
												Delete </a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<!-- DataTables Scripts -->
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

	<!-- DataTables Buttons Scripts -->
	<script
		src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.bootstrap5.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.colVis.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#inquiriesTable').DataTable({
				paging : true,
				searching : true,
				ordering : true,
				pageLength : 5,
				lengthMenu : [ 5, 10, 20, 50 ],
				dom : 'Bfrtip', // Button layout
				buttons : [ 'copy', 'excel', 'pdf', 'print' ]
			});
		});
	</script>
</body>
</html>
