<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .signup-wrapper {
            height: 90vh; 
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .signup-container {
            background: white;
            padding: 40px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }

        .signup-container h2 {
            margin-bottom: 20px;
            color: #007bff;
            font-weight: bold;
        }

        .form-control {
            margin-bottom: 15px;
            height: 45px;
            font-size: 16px;
        }

        .btn-primary {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 5px;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .gender-options {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        .gender-options label {
            font-size: 16px;
        }

        .login-link {
            margin-top: 15px;
            font-size: 14px;
        }

        .login-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %> <!-- ✅ Navbar stays on top as usual -->

    <div class="signup-wrapper"> 
        <div class="signup-container">
            <h2>Create an Account</h2>

            <form action="saveuser" method="post">
                <input type="text" name="firstName" class="form-control" placeholder="First Name" required>
                <input type="text" name="lastName" class="form-control" placeholder="Last Name" required>
                <input type="email" name="email" class="form-control" placeholder="Email" required>
                <input type="text" name="contactNum" class="form-control" placeholder="Contact Number" required>
                <input type="password" name="password" class="form-control" placeholder="Password" required>

                <div class="gender-options">
                    <label>Gender:</label>
                    <label><input type="radio" name="gender" value="Male" required> Male</label>
                    <label><input type="radio" name="gender" value="Female" required> Female</label>
                    <label><input type="radio" name="gender" value="Other" required> Other</label>
                </div>

                <select name="role" class="form-control" required>
                    <option value="" disabled selected>Select Role</option>
                    <option value="Admin">Admin</option>
                    <option value="Buyer">Buyer</option>
                    <option value="Seller">Seller</option>
                    <option value="Agent">Agent</option>
                </select>

                <button type="submit" class="btn btn-primary">Sign Up</button>
            </form>

            <p class="login-link">Already have an account? <a href="login">Click here for login</a></p>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
