<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enter state name</title>
</head>
<body>

	<form action="/savestate" method="post">
    <label for="stateName">State Name:</label>
    <input type="text" id="stateName" name="stateName" required>
    <button type="submit">Save</button>
</form>
	
</body>
</html>