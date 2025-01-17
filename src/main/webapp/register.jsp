<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
body {
        font-family: Arial, sans-serif;
        background-color: #f3f4f6;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    /* Register container styling */
    .register-container {
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        padding: 20px 30px;
        width: 300px;
        text-align: center;
    }

    .register-container label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #555;
        text-align: left;
    }

    .register-container input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    .register-container input:focus {
        border-color: #007BFF;
        outline: none;
        box-shadow: 0 0 4px rgba(0, 123, 255, 0.5);
    }

    .register-container button {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        margin-bottom: 10px;
    }

    .register-container button:hover {
        background-color: #218838;
    }

    .login-link {
        margin-top: 10px;
    }

    .login-link a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
    }

    .login-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="register-container">
        <h1>Register Here</h1>
        <form action="register" method="post">
            <label for="name">Name:</label>
            <input id="name" name="name" type="text" placeholder="Enter your full name" required>
            
            <label for="username">Username:</label>
            <input id="username" name="username" type="text" placeholder="Choose a username" required>
            
            <label for="password">Password:</label>
            <input id="password" name="password" type="password" placeholder="Enter your password" required>
            
            <label for="confirm_password">Confirm Password:</label>
            <input id="confirm_password" name="cpassword" type="password" placeholder="Re-enter your password" required>
            
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="Login.jsp">Login</a>
        </div>
    </div>
    <c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
	
</html>