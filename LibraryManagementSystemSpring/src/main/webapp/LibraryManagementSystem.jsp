<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LibraryManagementSystem</title>
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
    <p>Login Successful</p>
    <nav>
        <a href="/"><button>LogOut</button></a>
        <a href="update-user"><button>Update User</button></a>
        <hr> 
        
        <p>Things You Can Do Here:</p>
            <ul>
                <li><a href="books"><button>Books</button></a></li>
                <li><a href="user"><button>Users</button></a></li>
                
            </ul>
    </nav>
</body>
</html>