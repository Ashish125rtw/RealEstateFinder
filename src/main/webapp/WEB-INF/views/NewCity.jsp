<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New City</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
            margin: 0;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            text-align: left;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 15px;
            width: 100%;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
    <script>
        function validateForm() {
            const cityName = document.getElementById("cityName").value.trim();
            const stateId = document.getElementById("stateId").value;
            if (cityName === "" || stateId === "Select State") {
                alert("Please fill out all fields correctly.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

    <div class="container">
        <h2>Add New City</h2>
        <form action="/savecity" method="post" onsubmit="return validateForm()">
            <label for="cityName">City Name:</label>  
            <input type="text" id="cityName" name="cityName" required>
            
            <label for="stateId">State:</label>
            <select id="stateId" name="stateId">
                <option value="Select State">Select State</option>
                <c:forEach items="${allstate}" var="s">
                    <option value="${s.stateId}">${s.stateName}</option>
                </c:forEach>
            </select>
            
            <button type="submit">Save</button>
        </form>
    </div>

</body>
</html>
	