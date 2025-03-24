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
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
</head>
<body>
    <jsp:include page="AgentHeader.jsp"></jsp:include>
    <jsp:include page="AgentSidebar.jsp"></jsp:include>
    
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="agentdashboard">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>
        
        <!-- Dashboard Overview -->
        <section class="section dashboard">
            <div class="row">
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
                            <h5 class="card-title">Total Users</h5>
                            <h3>${totalUsers}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="card info-card">
                        <div class="card-body">
                            <h5 class="card-title">Pending Inquiries</h5>
                            <h3>${pendingInquiries}</h3>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Recent User Inquiries -->
            <div class="row mt-4">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Recent User Inquiries</h5>
                            <table id="inquiriesTable" class="table table-bordered table-striped">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Message</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${messages}" var="msg">
                                        <tr>
                                            <td>${msg.name}</td>
                                            <td>${msg.email}</td>
                                            <td>${msg.phone}</td>
                                            <td>${msg.message}</td>
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
    
    <jsp:include page="AgentFooter.jsp"></jsp:include>
    <jsp:include page="AgentJs.jsp"></jsp:include>
    
    <!-- jQuery and DataTables Scripts -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function() {
            $('#inquiriesTable').DataTable({
                "paging": true,
                "searching": true,
                "ordering": true,
                "pageLength": 5,
                "lengthMenu": [5, 10, 20, 50]
            });
            
           
        });
    </script>
</body>
</html>
