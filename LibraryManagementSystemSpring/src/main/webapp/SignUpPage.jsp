<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SignUpPage</title>
<style>
body {
	background-image: url("/Images/LibraryBackground.jpg");
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

h1, h2 {
	color:white;
	text-align: center;
}

form {
	margin: 0 auto;
	width: 80%;
	text-align: left;
	padding: 1em;
}

label {
	color:white;
	font-weight: bold;
	display: block;
	margin-bottom: 0.5em;
}

input[type="text"], input[type="email"], textarea, input[type="password"]
	{
	width: 100%;
	padding: 0.5em;
	font-size: 1em;
	margin-bottom: 1em;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"], button {
	padding: 0.5em;
	font-size: 1em;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: white;
	cursor: pointer;
	margin: 0.5em;
}

input[type="radio"] {
	 display: inline-block;
	margin-right: 0.5em;
}

nav {
	display: flex;
	justify-content: center;
	margin-top: 1em;
}

button {font-size: 18px;
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
    <h1>Welcome To SignUp Page</h1>
	<h2>Register Here</h2>
	<form action="add" method="post">
		<label for="firstName">First Name: </label> 
			<input type="text"  name="firstName" required pattern="[A-Za-z]{4,10}" title="only Uppercase & Lowercase"><br><br> 
		
        <label for="lastName">Last Name: </label> 
       		<input type="text" id="lastName" name="lastName" required pattern="[A-Za-z]{4,10}" title="only Uppercase & Lowercase"><br><br>
         
        <label for="gender">Male</label><input type="radio" id="" name="gender" value="Male"><label for="gender">Female</label> 
			<input type="radio" name="gender" value="Female"><br><br> 
		
		<label for="phone">Phone Number</label> 
        	<input type="text"  name="phone" required pattern="[0-9]{10}"><br><br>
		
		<label for="address">Address</label>
			<textarea rows="2" cols="4" name="address" required></textarea><br><br> 
				
		<label for="Email">Email: </label> 
			<input type="email"  name="Email" required pattern="[A-Za-z._$]+@[a-z0-9.]+\.[a-z]{2,}" title="ex : abc@xyz.co include lowercase letters and numbers and proper domain name."><br><br>
        
        <label for="password">Password: </label> 
        	<input type="password" id="password" name="Password" required pattern="[A-Za-Z0-9]{8,16}" title="must be from 8 -16 character's include lowercase letters and numbers"><br><br>			
        
      
		
        <input type="submit" name="Done">
	</form>
	<br>
	<br>
	<nav>
		<a href="/"><button>Back To Home</button></a> 
        <a href="login"><button>To Login</button></a>
	</nav>

</body>
</html>