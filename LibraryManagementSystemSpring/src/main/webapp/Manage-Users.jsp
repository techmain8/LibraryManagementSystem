<%@page import="com.quest.LibraryManagementSystemSpring.models.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage | Books</title>
<style>
body {
	background-image: url("/Images/LibraryBackground.jpg");
	background-size: cover;
	font-family: Arial, sans-serif;
	color: #333;
}

form {
	width: 50%;
	margin-left: 40%;
	text-align: left;
}

table {
	margin-left: 12%;
	width : 80%;
	border: thick white;
	border-collapse: collapse;
}
sbutton {
	padding: 5px;
	background-color: #4CAF50;
	color: white;
	border: none;
	justify-content: center;
}
h2 {
	color: white;
	text-align: center;
}

th, td {
	color:white;
	border: 1px solid black;
	padding: 8px;
	text-align: center;
}

th {
	color:black;
	background-color: #f2f2f2;
}

label {
	width: 120px;
	display: inline-block;
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
input[type="text"] {
	width: 40%;
	padding: 5px;
}

input[type="submit"] {
	width: 20%;
	padding: 5px;
	margin-top: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
}

#test a {
	padding: 5px;
	margin-top: 10px;
	margin-left: 46%;
}
</style>
</head>
<body>
	<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setDateHeader("Expires", -1);

	List<User> users = (List<User>) request.getAttribute("Users");
	%>
	<div id="test">
		<a href="/admin/home"><button>Admin|Home</button></a>
	</div>
	<h2>Search Users</h2>
	<form action="/user/search" method="post">
		<input type="text" name="value" placeholder="Search">
		<button type="submit" >Search</button>
	</form>
	<h2>List of Users</h2>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>FirstName</th>
				<th>lastName</th>
				<th>gender</th>
				<th>email</th>
				<th>phone</th>
				<th>password</th>
				<th>address</th>
				<th>Edit Action</th>
				<th>Delete Action</th>
			</tr>
		</thead>
		<tbody>
			<%
		for (User user : users) {
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getFirstName()%></td>
			<td><%=user.getLastName()%></td>
			<td><%=user.getGender()%></td>
			<td><%=user.getEmail()%></td>
			<td><%=user.getPhone()%></td>
			<td><%=user.getPassword()%></td>
			<td><%=user.getAddress()%></td>
			<td><a href="update/<%=user.getId()%>">Update</a></td>
			<td><a href="remove/<%=user.getId()%>" style="color: red">Remove</a>
			</td>
		</tr>
		<%
		}
		%>
		</tbody>
	</table>
</body>
</html>