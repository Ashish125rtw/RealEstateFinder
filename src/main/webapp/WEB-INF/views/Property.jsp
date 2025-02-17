<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Property</title>
</head>
<body>
    <h2>Add New Property</h2>
    <form action="/saveproperty" method="post">
        <label>Title:</label> <input type="text" name="title" required><br>
        <label>Property Name:</label> <input type="text" name="propertyName" required><br>
        <label>Address:</label> <input type="text" name="address" required><br>
        <label>Zip Code:</label> <input type="text" name="zipcode" required><br>
        <label>Description:</label> <textarea name="description" required></textarea><br>
        <label>Base Price:</label> <input type="number" name="basePrice" required><br>
        <label>Other Price Description:</label> <input type="text" name="otherPriceDescription"><br>
        <label>Bedrooms:</label> <input type="number" name="bedrooms" required><br>
        <label>Bathrooms:</label> <input type="number" name="bathrooms" required><br>
        <label>Furnishing Status:</label> 
        <select name="furnishingStatus">
            <option>-- select Furnishing status --</option>
            <option>Furnished</option>
            <option>Semi-Furnished</option>
            <option>Unfurnished</option>
        </select><br>
        <label>Year Built:</label> <input type="number" name="yearBuilt" required><br>
       <label>Status:</label>
        <select name="status">
            <option> -- Select Status -- </option>
            <option>Active</option>
            <option>Not active</option>
        
        </select><br>

        <button type="submit">Save</button>
    </form>
</body>
</html>
