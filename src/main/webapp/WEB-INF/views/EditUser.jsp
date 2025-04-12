<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-primary text-center">Edit User</h2>
    
    <form action="${pageContext.request.contextPath}/updateUser" method="post">

        <input type="hidden" name="userId" value="${user.userId}">
        
        <div class="mb-3">
            <label class="form-label">First Name:</label>
            <input type="text" name="firstName" value="${user.firstName}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Last Name:</label>
            <input type="text" name="lastName" value="${user.lastName}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Email:</label>
            <input type="email" name="email" value="${user.email}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Contact:</label>
            <input type="text" name="contactNum" value="${user.contactNum}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Gender:</label>
            <select name="gender" class="form-control">
                <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
                <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Role:</label>
         <select name="role" class="form-control" required>
            	<option value="Buyer" ${user.role == 'Buyer' ? 'selected' : '' } > Buyer</option>
            	<option value="Seller" ${user.role == 'Seller' ? 'selected' : '' } > Seller</option>
            	<option value="Agent" ${user.role == 'Agent' ? 'selected' : '' } > Agent</option>
            </select> 
            
        </div>

        <button type="submit" class="btn btn-success">Update User</button>
        <a href="/ListUser" class="btn btn-secondary" type="button">Cancel</a>
        
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
