<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List of Agents</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        
        .navbar {
            margin-bottom: 0;
            padding: 10px;
        }
        
        .content-wrapper {
            max-width: 95%;
            margin: 20px auto; 
        }
      
        .table-container {
            padding: 20px;
            border-radius: 10px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table {
            margin-bottom: 0;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
            padding: 12px;
        }
        .table thead {
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body>

<!-- Include Navbar -->
<%@ include file="navbar.jsp" %>

<!-- Main Content -->
<div class="content-wrapper">
    <h2 class="text-center mb-4">List of Agents</h2>

    <div class="table-container">
        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
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
                    <c:forEach items="${agentList}" var="agent">
                        <tr>
                            <td>${agent.userId}</td>
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
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
