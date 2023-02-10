<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<style>
body {
	background-color: burlywood;
	background-image: url("/Images/LibraryBackground.jpg");
	font-family: Arial, sans-serif;
}

header {
	background-color: lightblue;
	padding: 20px;
	text-align: center;
}

h1 {
	display: inline-block;
	margin-left: 0%;
	font-size: 24px;
}

nav a {
	display: inline-block;
	margin: 0 10px;
}

.title {
	color:white;
	text-align: center;
	margin-top: 50px;
}

footer {
	background-color: lightgray;
	padding: 20px;
	text-align: center;
	position: absolute;
	bottom: 0;
	width: 100%;
}

#footer h5 {
	margin: 0;
}
</style>
</head>
<body>
	<header>
		<h1>Library Management</h1>
		<nav>
			
			<a href="login"><button>Login</button></a> 
			<a href="register"><button>SignUp</button></a>
			<a href="/admin"><button>Admin-login</button></a>
		</nav>
	</header>
	<br>
	<div class="title">
		<h2>Library Management System Web Application</h2>
	</div>
	<footer>
		<p>Copyright &copy; Library Management System 2023</p>
		<div id="footer">
			<h4>Quest Team 5</h4>
			<h5>Abhishek Ghasane</h5>
		</div>
	</footer>
</body>
</html>