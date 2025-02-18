<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Inquiry</title>
</head>
<body>
    <h2>Inquiry Form</h2>
    <form action="saveInquiry" method="post">
        <label>Property ID:</label>
        <input type="text" name="propertyId" required/><br><br>
        
        <label>User ID:</label>
        <input type="text" name="userId" required/><br><br>
        
        <label>Message:</label>
        <textarea name="message" required></textarea><br><br>

        <label>Status:</label>
        <input type="text" name="status" required/><br><br>

        <input type="submit" value="Submit Inquiry"/>
    </form>
</body>
</html>
