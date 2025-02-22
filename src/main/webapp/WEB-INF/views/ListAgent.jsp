<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List of Agents</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 40px;
        }
        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        table {
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
        }
        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
        }
        .table thead {
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>List of Agents</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover shadow-lg">
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
