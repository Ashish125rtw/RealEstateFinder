<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New Inquiry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            text-align: left;
            margin-top: 10px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            resize: none;
            height: 80px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            margin-top: 15px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Inquiry Form</h2>
        <form action="saveInquiry" method="post">
            <label for="propertyId">Property ID:</label>
            <input type="text" id="propertyId" name="propertyId" required/>

            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" required/>

            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>

            <label for="status">Status:</label>
            <input type="text" id="status" name="status" required/>

            <button type="submit">Submit Inquiry</button>
        </form>
    </div>

</body>
</html>
