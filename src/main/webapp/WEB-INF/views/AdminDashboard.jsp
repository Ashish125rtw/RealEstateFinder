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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
							<h5 class="card-title"><i class="fa-solid fa-building"></i> Total Properties</h5>
							<h3>${totalProperties}</h3>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title"><i class="fa-solid fa-user-tie"></i> Total Agents</h5>
							<h2>${totalAgents}</h2>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title"><i class="fa-solid fa-users"></i> Total Users</h5>
							<h3>${totalUsers}</h3>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="card info-card">
						<div class="card-body">
							<h5 class="card-title"><i class="fa-solid fa-envelope"></i> Pending Inquiries</h5>
							<h3>${pendingInquiries}</h3>
							<h2>0</h2>
						</div>
					</div>
				</div>
				<!-- End Dashboard Cards -->

			</div>
			<canvas id="myChart"></canvas>
			
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
	<script>
    var ctx = document.getElementById('myChart').getContext('2d');

    // Dynamic data from JSP
    var labels = ['Total Properties', 'Total Agents', 'Total Users', 'Pending Inquiries'];
    var dataValues = [
        ${totalProperties}, 
        ${totalAgents}, 
        ${totalUsers}, 
        ${pendingInquiries}
    ];

    var myChart = new Chart(ctx, {
        type: 'bar', // Change to 'line', 'pie', etc.
        data: {
            labels: labels,
            datasets: [{
                label: 'Dashboard Statistics',
                data: dataValues,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
	
	

</body>
</html>
