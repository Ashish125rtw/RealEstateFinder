<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Agent | Dashboard</title>

<jsp:include page="AgentCss.jsp"></jsp:include>
<link
	href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="AgentHeader.jsp"></jsp:include>
	<jsp:include page="AgentSidebar.jsp"></jsp:include>

	 <main id="main" class="main">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="AgentDashboard">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>

        <!-- Dashboard Overview -->
        <section class="section dashboard">
            <div class="row">
                <!-- Total Properties -->
                <div class="col-lg-3 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Total Properties</h5>
                            <h3>${totalProperties}</h3>
                        </div>
                    </div>
                </div>

                <!-- Total Agents -->
                <div class="col-lg-3 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Total Agents</h5>
                            <h3>${totalAgents}</h3>
                        </div>
                    </div>
                </div>

                <!-- Total Users -->
                <div class="col-lg-3 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Total Users</h5>
                            <h3>${totalUsers}</h3>
                        </div>
                    </div>
                </div>

                <!-- Pending Inquiries -->
                <div class="col-lg-3 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Pending Inquiries</h5>
                            <h3>${pendingInquiries}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
	
				<!-- End Dashboard Cards -->

			

		
	<jsp:include page="AgentFooter.jsp"></jsp:include>
	<jsp:include page="AgentJs.jsp"></jsp:include>

	<!-- jQuery and DataTables Scripts -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#inquiriesTable').DataTable({
				"paging" : true, // Enable pagination
				"searching" : true, // Enable search filter
				"ordering" : true, // Enable column sorting
				"pageLength" : 5, // Number of rows per page
				"lengthMenu" : [ 5, 10, 20, 50 ]
			// Dropdown for rows per page
			});
		});
	</script>

</body>
</html>
