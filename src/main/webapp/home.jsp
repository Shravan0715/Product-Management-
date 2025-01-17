<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f2f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    div {
        text-align: center;
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 40%;
    }

    h1 {
        color: #333;
        font-size: 2.5em;
        margin-bottom: 30px;
    }

    a {
        text-decoration: none;
        margin: 10px;
    }

    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1em;
        margin: 10px;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
        background-color: #45a049;
        transform: scale(1.1);
    }

    @media (max-width: 768px) {
        div {
            width: 80%;
            padding: 20px;
        }

        button {
            width: 100%;
            margin: 10px 0;
        }
    }
</style>


</head>

<body>
<div>
<h1>Home Page</h1>
	<a href="add-product"><button>Add Product</button></a>
	<a href="fetch-products"><button>Fetch</button></a>
	<a href="logout"><button>Logout</button></a>
</div>
	
	
	<c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>