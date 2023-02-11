<%@page import="com.quest.LibraryManagementSystemSpring.models.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style>
body {
	background-image:url("/Images/LibraryBackground.jpg");
	background-size: cover;
	font-family: Arial, sans-serif;
	color: #333;
}
form {
	width: 50%;
	margin: 0 auto;
	text-align: left;
}
h2 {
	color:white;
	margin-left:43%; 
}
label {
	width: 120px;
	display: inline-block;
}

input[type="text"] {
	width: 60%;
	padding: 5px;
}

button[type="submit"] {
	margin-left:14%;
	width: 60%;
	padding: 5px;
	margin-top: 10px;
	background-color: #666967;
	color: white;
	border: none;
}
</style>
</head>
<body>
	<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setDateHeader("Expires", -1);
	
	User user = (User)request.getAttribute("user");
	%>
	<h2>Update User</h2>
	<form action="/user/update" method="post">
		<label>Id:</label>
			<input type="text" id="Id" name="Id" value="<%=user.getId()%>" placeholder="<%=user.getId()%>" readonly><br><br>
		<label for="firstName">FirstName:</label> 
			<input type="text" id="firstName" name="firstName" value="<%=user.getFirstName()%>" placeholder="<%=user.getFirstName()%>" ><br><br> 
		<label for="lastName">lastName:</label>
			<input type="text" id="lastName" name="lastName" value="<%=user.getLastName()%>" placeholder="<%=user.getLastName()%>"><br><br> 
		<label for="gender">gender:</label> 
			<input type="text" id="gender" name="gender" value="<%=user.getGender()%>" placeholder="<%=user.getGender()%>"><br><br>
		<label for="email">email:</label> 
			<input type="text"id="email" name="email" value="<%=user.getEmail()%>" placeholder="<%=user.getEmail()%>"><br><br> 
		<label for="phone">phone:</label> 
			<input type="text" id="phone"name="phone" value="<%=user.getPhone()%>" placeholder="<%=user.getPhone()%>"><br><br> 
		<label for="password">password</label>
			<input type="text" id="password" name="password" value="<%=user.getPassword()%>" placeholder="<%=user.getPassword()%>"><br><br>
		<label for="address">address</label> 
			<input type="text" id="address" name="address" value="<%=user.getAddress()%>" placeholder="<%=user.getAddress()%>"><br><br> 
		<button type="submit">Update</button>
	</form>
</body>
</html>