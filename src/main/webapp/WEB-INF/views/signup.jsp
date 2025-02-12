<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .signup-container {
            background: white;
            padding: 50px;
            width: 350px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
        }
        .signup-container h1 {
            margin-bottom: 20px;
            color: #333;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        .login-link {
            margin-top: 15px;
            font-size: 14px;
        }
        .login-link a {
            color: #007bff;
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
        .gender-options {
   	 		display: flex;
    		align-items: center;
    		gap: 10px; /* Adds spacing between options */
		}

		.gender-options label {
    		display: flex;
    		align-items: center;
    		gap: 5px;
		}
        
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>Create an Account</h1>
        <form action="saveuser" method="post">
    	<input type="text" name="firstName" placeholder="First Name" required>
        <input type="text" name="lastName" placeholder="Last Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="contactNum" placeholder="Contact Number" required>
    	<input type="password" name="password" placeholder="Password" required>
    	
    	<div class="gender-options">
    	<label>Gender :</label>
    	<label>
        	<input type="radio" name="gender" value="Male" required> Male
    	</label>
    	<label>
        	<input type="radio" name="gender" value="Female" required> Female
    	</label>
    	<label>
        	<input type="radio" name="gender" value="Other" required> Other
    	</label>
		</div>
    
        <input type="text" name="role" placeholder="Role" required>
        <button type="submit">Sign Up</button>
        
</form>
        
        <p class="login-link">Already have an account? </p>
        <a href="login">Click here for login</a>
        
    </div>
</body>
</html>
