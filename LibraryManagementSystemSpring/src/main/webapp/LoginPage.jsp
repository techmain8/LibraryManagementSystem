<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LoginPage</title>
<style>
body {
	background-image: url("/Images/LibraryBackground.jpg"); 
	font-family :Arial, sans-serif;
	text-align: center;
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}
h1 {
	color:white;
	font-size: 36px;
	margin: 40px 0;
}
p{
color: white;
}
form {
	margin: 40px 0;
	display: inline-block;
	text-align: left;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
}
label {
	color:white;
	font-size: 20px;
	display: block;
	margin-bottom: 10px;
}

input[type="email"], input[type="password"] {
	font-size: 18px;
	padding: 10px;
	width: 300px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

#submit {
	font-size: 20px;
	padding: 10px 20px;
	background-color: #666967;
	color: white;
	border-radius: 5px;
	border: none;
}
nav {
	margin-top: 20px;
}
button {
	font-size: 18px;
	padding: 10px 20px;
	background-color: #666967;
	color: white;
	border-radius: 5px;
	border: none;
	margin-right: 20px;
}
</style>

</head>
<body>
	<h1>Welcome To Login Page</h1>
	<p>Please Enter Email And Password For Login</p>
	<form action="main" method="post">
		<label for="Email">Email: </label> 
			<input type="email" name="Email" placeholder="Enter Email" title="Email" required pattern="[A-Za-z._$]+@[a-z0-9.]+\.[a-z]{2,}" title="ex : abc@xyz.co include lowercase letters and numbers and proper domain name."><br>
		<label for="Password">Password: </label> 
			<input type="password" name="Password" placeholder="Enter Password" title="Password" required pattern="[A-Za-Z0-9]{8,16}"title="must be from 8-16 character's include lowercase letters and numbers"><br>
		<input type="submit" value="Login" id="submit">
	</form>
	<br>
	<nav>
		<a href="/"><button style="size: 50px;">Back to Home</button></a> 
		<a href="register"><button>To SignUp</button></a>
	</nav>
</body>
</html>