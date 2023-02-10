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
	font-family: Arial, sans-serif;
	text-align: center;
}

h1 {
	color:white;
	margin-top: 50px;
}

form {
	display: inline-block;
	margin-top: 50px;
	text-align: left;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
}

label {
	color:white;
	font-weight: bold;
	margin-right: 10px;
}

input[type="text"], input[type="email"], input[type="password"] {
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #ccc;
	width: 200px;
}

input[type="submit"] {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border-radius: 5px;
	border: none;
	cursor: pointer;
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
	margin-top: 50px;
	display: flex;
	justify-content: center;
}

button {
	padding: 10px 20px;
	background-color: #666967;
	color: black;
	border-radius: 5px;
	border: 1px solid #ccc;
	cursor: pointer;
	margin-right: 10px;
}
p{
color: white;
}
</style>
</head>
<body>
    <h1>Admin's Login Page</h1>
    <p>Please Enter Email And Password For Login<p>
    <form action="/admin/home" method="post">
	    <label for="Email">Email: </label>
	    	<input type="email" name="Email" placeholder="Enter Email" title="Email" required pattern="[A-Za-z._$]+@[a-z0-9.]+\.[a-z]{2,}" title="ex : abc@xyz.co include lowercase letters and numbers and proper domain name."><br>
	    <label for="Password">Password: </label>
		    <input type="password" name="Password" placeholder="Enter Password" title="Password" required pattern="[A-Za-Z0-9]{8,16}" title="must be from 8-16 character's include lowercase letters and numbers"><br>
	    <input type="submit" value="Login" id="submit">	
    </form>
    <br>
    <nav>
	    <a href="/"><button style="size: 50px;">Back to Home</button></a>
	    <a href="/admin/home"><button>Admin-HomePage</button></a>
    </nav>
</body>
</html>