<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Agents</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- DataTables CSS -->
    <link href="https://cdn.jsdelivr.net/npm/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f6f9;
        }
        
        h2 {
            font-weight: bold;
            color: #0d47a1;
            text-align: center;
            margin-bottom: 20px;
        }
        .table thead {
            background-color: #0d47a1;
            color: white;
        }
        .table-hover tbody tr:hover {
            background-color: #e3f2fd;
        }
    </style>
</head>
<body>

    <!-- Include Navbar -->
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container">
        <h2>List of Agents</h2>

        <div class="table-responsive">
            <table id="agentTable" class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>License No</th>
                        <th>Agency Name</th>
                        <th>Experience (Years)</th>
                        <th>Rating</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through agentList -->
                    <c:forEach items="${agentList}" var="agent">
                        <tr>
                            <td>${agent.agentId}</td>
                            <td>${agent.licenseNo}</td>
                            <td>${agent.agencyName}</td>
                            <td>${agent.experienceYears}</td>
                            <td>${agent.rating}</td>
                            <td>${agent.address}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery and DataTables -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#agentTable').DataTable({
                "paging": true,
                "lengthMenu": [5, 10, 25, 50],
                "pageLength": 10,
                "ordering": true,
                "searching": true
            });
        });
    </script>

</body>
</html>
