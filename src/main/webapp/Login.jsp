<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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

    /* Login container styling */
    .login-container {
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        padding: 20px 30px;
        width: 300px;
        text-align: center;
    }

    .login-container label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #555;
        text-align: left;
    }

    .login-container input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    .login-container input:focus {
        border-color: #007BFF;
        outline: none;
        box-shadow: 0 0 4px rgba(0, 123, 255, 0.5);
    }

    .login-container button {
        width: 100%;
        padding: 10px;
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    .login-container button:hover {
        background-color: #0056b3;
    }

    /* Register button styling */
 .register-container {
        margin-top: 10px;
    }

    .register-container a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
    }

    .register-container a:hover {
        text-decoration: underline;
    }

   
</style>
</head>
<body>
    
    <div class="login-container">
    <h1 style="text-align: center;">Login Here</h1>
        <form action="login" method="post">
            <label for="un">Username:</label>
            <input id="un" name="username" type="text" required><br>
            <label for="pwd">Password:</label>
            <input id="pwd" name="password" type="password" required><br>
            <button type="submit">Login</button>
        </form>
        <div class="register-container">
             New User? create an account <a href="register.jsp">register</a>
        </div>
    </div>
    <c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>
