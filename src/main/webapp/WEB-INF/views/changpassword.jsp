<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            padding: 50px;
        }
        .container {
            width: 300px;
            margin: auto;
            padding: 50px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px #0000001a;
        }
        input, button {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
        }
        button {
            background: blue;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background: darkblue;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Change Password</h2>
        <form action="updatepassword" method="get">
            <input type="hidden" name="email" value="${param.email}"> <!-- Capture user email -->
            <input type="password" name="newpassword" placeholder="Enter New Password" required><br>
            <input type="password" name="confirmpassword" placeholder="Confirm New Password" required><br>
            <button type="submit">Update Password</button>
        </form>
    </div>

</body>
</html>
