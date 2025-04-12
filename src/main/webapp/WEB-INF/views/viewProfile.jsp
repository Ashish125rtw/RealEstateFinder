<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.grownited.entity.UserEntity" %>
<%@ page session="true" %>
<%
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
    <div class="container mt-5 mb-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow rounded">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Your Profile</h4>
                    </div>
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img src="<%= user.getProfilePicPath() %>" alt="Profile Picture" class="rounded-circle" style="width: 120px; height: 120px; object-fit: cover;">
                        </div>
                        <p><strong>Full Name:</strong> <%= user.getFirstName() + " " + user.getLastName() %></p>
                        <p><strong>Email:</strong> <%= user.getEmail() %></p>
                        <p><strong>Phone:</strong> <%= user.getContactNum() %></p>
                        <a href="editProfile" class="btn btn-warning mt-3 w-100">Edit Profile</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
