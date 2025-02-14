<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New City</title>
</head>
<body>

    <form action="/savecity" method="post">
        <label for="cityName">City Name:</label>  
        <input type="text" id="cityName" name="cityName" required>
        <button type="submit">Save</button>
    </form>

</body>
</html>
