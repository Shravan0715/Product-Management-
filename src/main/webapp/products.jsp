<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    h1 {
        color: #333;
        font-size: 2em;
        margin-bottom: 20px;
    }

    div {
        margin: 20px auto;
        padding: 20px;
        width: 80%;
        background: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 8px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    table th, table td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
    }

    table th {
        background-color: #4CAF50;
        color: white;
        font-weight: bold;
    }

    table td {
        color: #555;
    }

    table img {
        border-radius: 8px;
        transition: transform 0.2s ease;
    }

    table img:hover {
        transform: scale(1.1);
    }

    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #45a049;
    }

    a {
        text-decoration: none;
    }

    a:hover button {
        background-color: #3e8e41;
    }

    .alert {
        color: red;
        font-weight: bold;
    }
</style>
</head>

<body>
	<div align="center">
		<h1>Products</h1>
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Image</th>
				<th>Description</th>
				<th>Price</th>
				<th>Category</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="p" items="${products}">
				<tr>
					<th>${p.name}</th>
					<th><img height="150px" width="150px" alt="${p.name }"
						src="${p.imageLink }"></th>
					<th>${p.description }</th>
					<th>${p.price }</th>
					<th>${p.category }</th>
					<th><a href="editRecord?id=${p.id}"><button>Edit</button></a></th>
					<th><a href="deleteRecord?id=${p.id}"><button>delete</button></a></th>
				</tr>
			</c:forEach>

		</table><br><br>
		<a href="home"><button>Back</button></a>
	</div>


	<c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>
