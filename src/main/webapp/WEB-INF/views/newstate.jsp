<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Enter State Name</title>
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
            margin-bottom: 5px;
            text-align: left;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function validateForm() {
            const stateName = document.getElementById("stateName").value.trim();
            if (stateName === "") {
                alert("Please enter a valid state name.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

    <div class="container">
        <h2>Enter State Name</h2>
        <form action="/savestate" method="post" onsubmit="return validateForm()">
            <label for="stateName">State Name:</label>
            <input type="text" id="stateName" name="stateName" required>
            <button type="submit">Save</button>
        </form>
    </div>

</body>
</html>
