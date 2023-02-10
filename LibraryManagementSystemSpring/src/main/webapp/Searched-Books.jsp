<%@page import="com.quest.LibraryManagementSystemSpring.models.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searched | books</title>
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

	List<Book> books = (List<Book>) request.getAttribute("books");
	%>
	<div id="test">
		<a href="/book" ><button>Add-Another-Book</button></a><br>
		<a href="Manage-Books"><button>All Books</button></a>
	</div>
	<h2>Search Books</h2>
	<form action="/book/search" method="post">
		<input type="text" name="value" placeholder="Search">
		<button type="submit" >Search</button>
	</form>
	<h2>List of Books</h2>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>ISBN</th>
				<th>Publication Year</th>
				<th>Publisher</th>
				<th>Author</th>
				<th>Category</th>
				<th>Price</th>
				<th>Edit Action</th>
				<th>Delete Action</th>
			</tr>
		</thead>
		<tbody>
			<%
		for (Book book : books) {
		%>
		<tr>
			<td><%=book.getId()%></td>
			<td><%=book.getTitle()%></td>
			<td><%=book.getISBN()%></td>
			<td><%=book.getPublicationYear()%></td>
			<td><%=book.getPublisher()%></td>
			<td><%=book.getAuthor()%></td>
			<td><%=book.getCategory()%></td>
			<td><%=book.getPrice()%></td>
			<td><a href="update/<%=book.getId()%>">Update</a></td>
			<td><a href="remove/<%=book.getId()%>" style="color: red">Remove</a>
			</td>
		</tr>
		<%
		}
		%>
		</tbody>
	</table>
	
</body>
</html>