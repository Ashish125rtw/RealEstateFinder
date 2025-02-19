<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registered Users</title>
    
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
        table {
            border-radius: 10px;
            overflow: hidden;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-primary">Registered Users</h2>
    
    <table class="table table-bordered table-striped table-hover shadow-lg">
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
            <c:forEach items="${userList}" var="m">
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

<!-- Bootstrap JS (Optional for interactive features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
