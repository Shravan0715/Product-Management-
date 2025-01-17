<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Products</title>
<style>
    /* Global styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #eef3fc;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    /* Centered container */
    div {
        width: 40%;
        background-color: #ffffff;
        padding: 30px 20px;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        text-align: center;
    }

    /* Page title */
    h1 {
        font-size: 2.5em;
        color: #ffffff;
        background-color: #007BFF;
        padding: 15px;
        margin: 0 -20px 30px -20px;
        border-radius: 10px 10px 0 0;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
    }

    /* Form styling */
    form {
        display: flex;
        flex-direction: column;
        align-items: stretch;
        gap: 15px;
    }

    form input[type="text"] {
        width: 95%;
        padding: 12px 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
        background-color: #f9f9f9;
        transition: border-color 0.3s ease;
    }

    form input[type="text"]:focus {
        border-color: #007BFF;
        outline: none;
    }

    /* Buttons */
    button {
        background-color: #007BFF;
        color: #ffffff;
        border: none;
        padding: 12px 20px;
        font-size: 1em;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
        background-color: #0056b3;
        transform: scale(1.05);
    }

    a {
        text-decoration: none;
    }

    a:hover button {
        background-color: #0056b3;
    }

    /* Placeholder text */
    input::placeholder {
        color: #888;
        font-style: italic;
    }

    /* Responsive design */
    @media (max-width: 768px) {
        div {
            width: 90%;
            padding: 20px;
        }

        h1 {
            font-size: 2em;
        }
    }
</style>

</head>

<body>
	<div align="center">
	<span><h1>Add Product</h1></span>
	
	<form action="add-product" method="post">
		Product Name: <input type="text" name="name" placeholder="Enter product name"><br>
		Product Description: <input type="text" name="description" placeholder="Enter product descripition"><br>
		Product Image Link: <input type="text" name="imageLink" placeholder="Enter image link of product"><br>
		Product Price: <input type="text" name="price" placeholder="Enter product price"><br>
		Product Category: <input type="text" name="category" placeholder="Enter product category"><br>
		<button>Add</button>
	</form><br>
	
	<a href="home"><button>Back</button></a>
</div>
	
</body>
</html>