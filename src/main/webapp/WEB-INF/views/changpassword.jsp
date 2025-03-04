<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Password</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="col-md-6 offset-md-3">
            <h2 class="text-center mb-4">Change Password</h2>
            
            <!-- Display error message -->
            <c:if test="${not empty error}">
                <div class="alert alert-danger">${error}</div>
            </c:if>

            <!-- Display success message -->
            <c:if test="${not empty msg}">
                <div class="alert alert-success">${msg}</div>
            </c:if>

            <form action="${pageContext.request.contextPath}/updatepassword" method="post">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="otp">OTP:</label>
                    <input type="text" class="form-control" id="otp" name="otp" required>
                </div>

                <div class="form-group">
                    <label for="password">New Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Update Password</button>
            </form>
        </div>
    </div>
</body>
</html>
