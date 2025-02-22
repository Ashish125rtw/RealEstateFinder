<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 40px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .card {
            max-width: 500px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-primary">User Details</h2>
    
    <div class="card shadow-lg">
        <div class="card-body">
            <p><strong>ID:</strong> ${user.userId}</p>
            <p><strong>First Name:</strong> ${user.firstName}</p>
            <p><strong>Last Name:</strong> ${user.lastName}</p>
            <p><strong>Email:</strong> ${user.email}</p>
            <p><strong>Contact:</strong> ${user.contactNum}</p>
            <p><strong>Gender:</strong> ${user.gender}</p>
            <p><strong>Role:</strong> ${user.role}</p>
        </div>
    </div>
    
    <div class="text-center mt-3">
        <a href="${pageContext.request.contextPath}/ListUser" class="btn btn-secondary">Back to List</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
