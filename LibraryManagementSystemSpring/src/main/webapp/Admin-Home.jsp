<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin's Page</title>
<style>
body {
	background-image: url("/Images/LibraryBackground.jpg");
	font-family: Arial, sans-serif;
	text-align: center;
}

h1 {
	color: white; font-size : 36px;
	margin-bottom: 20px;
	font-size: 36px;
}

nav {
	margin-top: 20px;
	display: inline-block;
	text-align: left;
}

nav ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

nav a {
	display: block;
	padding: 10px;
	color: #333;
	text-decoration: none;
}
button {
	padding: 10px 20px;
	background-color: #333;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
p {
	color: white;
}
</style>
</head>
<body>
	<h1>Welcome</h1>
	<p>Admin | Login Successful</p>
	<nav>
		<a href="/"><button>LogOut</button></a>
		<hr>
		<p>Things You Can Do Here:
		<ul>
			<li><a href="book"><button>Books</button></a></li>
			<li><a href="author"><button>Authors</button></a></li>
			<li><a href="User"><button>Users</button></a></li>
		</ul>
	</nav>
</body>
</html>