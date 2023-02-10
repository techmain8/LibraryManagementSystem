<%@page import="com.quest.LibraryManagementSystemSpring.models.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
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
	
	Book book = (Book)request.getAttribute("book");
	%>
	<h2>Update Book</h2>
	<form action="/book/update" method="post">
		<label>Id:</label>
			<input type="text" id="Id" name="Id" value="<%=book.getId()%>" placeholder="<%=book.getId()%>" readonly><br><br>
		<label for="title">Title:</label> 
			<input type="text" id="title" name="title" value="<%=book.getTitle()%>" placeholder="<%=book.getTitle()%>" ><br><br> 
		<label for="ISBN">ISBN:</label>
			<input type="text" id="ISBN" name="ISBN" value="<%=book.getISBN()%>" placeholder="<%=book.getISBN()%>"><br><br> 
		<label for="publicationYear">Publication Year:</label> 
			<input type="text" id="publicationYear" name="publicationYear" value="<%=book.getPublicationYear()%>" placeholder="<%=book.getPublicationYear()%>"><br><br>
		<label for="publisher">Publisher:</label> 
			<input type="text"id="publisher" name="publisher" value="<%=book.getPublisher()%>" placeholder="<%=book.getPublisher()%>"><br><br> 
		<label for="author">Author:</label> 
			<input type="text" id="author"name="author" value="<%=book.getAuthor()%>" placeholder="<%=book.getAuthor()%>"><br><br> 
		<label for="category">Category</label>
			<input type="text" id="category" name="category" value="<%=book.getCategory()%>" placeholder="<%=book.getCategory()%>"><br><br>
		<label for="price">Price</label> 
			<input type="text" id="price" name="price" pattern="[0-9]{1,6}" value="<%=book.getPrice()%>" placeholder="<%=book.getPrice()%>"><br><br> 
		<button type="submit">Update</button>
	</form>
</body>
</html>