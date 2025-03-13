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
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        body {
            background-color: #f4f6f9;
        }
        
        
        .profile-pic {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
        }
    </style>
</head>
<body>
    
    <!-- Navbar -->
    <jsp:include page="navbar.jsp"></jsp:include>
    
    <div class="container">
        <h2 class="text-center text-primary">User Details</h2>
        
        <div class="card shadow-lg">
            <div class="card-body">
                <table class="table table-bordered">
                    <tr>
                        <td rowspan="7" class="text-center align-middle">
                            <img src="${user.profilePicPath}" alt="Profile" class="profile-pic">
                        </td>
                        <td><strong><i class="fas fa-id-badge"></i> ID:</strong></td>
                        <td>${user.userId}</td>
                    </tr>
                    <tr>
                        <td><strong><i class="fas fa-user"></i> First Name:</strong></td>
                        <td>${user.firstName}</td>
                    </tr>
                    <tr>
                        <td><strong><i class="fas fa-user"></i> Last Name:</strong></td>
                        <td>${user.lastName}</td>
                    </tr>
                    <tr>
                        <td><strong><i class="fas fa-envelope"></i> Email:</strong></td>
                        <td>${user.email}</td>
                    </tr>
                    <tr>
                        <td><strong><i class="fas fa-phone"></i> Contact:</strong></td>
                        <td>${user.contactNum}</td>
                    </tr>
                    <tr>
                        <td><strong><i class="fas fa-venus-mars"></i> Gender:</strong></td>
                        <td>${user.gender}</td>
                    </tr>
                    <tr>
                        <td><strong><i class="fas fa-user-shield"></i> Role:</strong></td>
                        <td>${user.role}</td>
                    </tr>
                </table>
            </div>
        </div>
        
        <div class="text-center mt-3">
            <a href="${pageContext.request.contextPath}/ListUser" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back to List</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
