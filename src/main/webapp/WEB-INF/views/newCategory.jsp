<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Category</title>
</head>
<body>

<h2>Add New Category</h2>

<form action="/saveCategory" method="post">
    <label>Category Name:</label>
    <input type="text" name="categoryName" required><br>

    <label>Description:</label>
    <textarea name="description"></textarea><br>

    <label>Active:</label>
    <input type="checkbox" name="active" value="true"><br>

    <button type="submit">Save Category</button>
</form>

</body>
</html>
