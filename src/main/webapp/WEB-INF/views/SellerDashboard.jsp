<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="assets/img/favicon.png" rel="icon">
    <title>Seller | Dashboard</title>

    <jsp:include page="SellerCss.jsp" />
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
</head>
<body>
    <jsp:include page="SellerHeader.jsp" />
    <jsp:include page="SellerSidebar.jsp" />

    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="SellerDashboard">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>

        <!-- Dashboard Overview -->
        <section class="section dashboard">
            <div class="row">
                <!-- Total Properties -->
                <div class="col-lg-4 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Total Properties</h5>
                            <h3>${totalProperties}</h3>
                        </div>
                    </div>
                </div>

                <!-- Pending Inquiries -->
                <div class="col-lg-4 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Pending Inquiries</h5>
                            <h3>${pendingInquiries}</h3>
                        </div>
                    </div>
                </div>

                <!-- Total Sales -->
                <div class="col-lg-4 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Total Sales</h5>
                            <h3>${totalSales}</h3>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Your Listings on Dashboard -->
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Your Latest Listings</h5>
                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Property Name</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Year Built</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sellerProperties}" var="prop">
                            <tr>
                                <td>${prop.propertyId}</td>
                                <td>${prop.propertyName}</td>
                                <td>${prop.basePrice}</td>
                                <td>${prop.status}</td>
                                <td>${prop.yearBuilt}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
            
        </section>
    </main>
	
	
    <jsp:include page="SellerFooter.jsp" />
    <jsp:include page="SellerJs.jsp" />

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.table').DataTable(); // Enable DataTables
        });
    </script>
</body>
</html>
