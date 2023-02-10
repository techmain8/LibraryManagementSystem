<%@page import="com.quest.LibraryManagementSystemSpring.models.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Management</title>
<style>
body {
	background-image: url("/Images/LibraryBackground.jpg");
	background-size: cover;
	font-family: Arial, sans-serif;
	color: #333;
}

.container {
	width: 40%;
	margin: 80px auto;
	text-align: center;
}

h2 {
	color:white;
	font-size: 36px;
	margin-bottom: 40px;
	text-align: center;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 80%;
	margin: 0 auto;
}

label {
	color:white;
	font-size: 18px;
	margin-bottom: 8px;
	width: 100%;
	text-align: center;
}

input[type="text"], input[type="number"] {
	width: 100%;
	height: 40px;
	margin-bottom: 20px;
	font-size: 18px;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 0 8px;
}

input[type="submit"], button {
	padding: 10px 20px;
	width: 40%;
	height: 40px;
	margin-top: 20px;
	background-color: #333;
	color: #fff;
	font-size: 18px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
#test {
	text-align: center;
	margin-top: 40px;
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
	<!--  If u want to have user access u have to paste this inside -->
	 <!-- String username = (String)session.getAttribute("username");
	
	if(username == null){
		response.sendRedirect("/");
	} -->
	
	 <h2>Add Book</h2>
	 <div class="container">
  	<form action="/book/add" method="post">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" required ><br><br>

    <label for="ISBN">ISBN:</label>
    <input type="text" id="ISBN" name="ISBN" required pattern="[ISBN]+[0-9]{1,9}"><br><br>

    <label for="publicationYear">Publication Year:</label>
    <input type="text" id="publicationYear"  name="publicationYear" required pattern="[0-9]{4,4}"><br><br>

    <label for="publisher">Publisher:</label>
    <input type="text" id="publisher" name="publisher" required pattern="[a-zA-Z]{1,15}"><br><br>

    <label for="author">Author:</label>
    <input type="text" id="author" name="author" required pattern="[a-zA-Z]{1-15}"><br><br>
    
    <label for="category">Category</label>
    <input type="text" id="category" name="category" required pattern="[a-zA-Z]{1-15}"><br><br>
    
    <label for="price">Price</label>
    <input type="text" id="price" name="price" required pattern="[0-9]{1,6}"><br><br>

    <Button type="submit" >Add Book</Button>
  </form>
  <br><br>
  <div id="test">
  		<a href="/book/Manage-Books" ><button>Manage-Books</button></a>
  </div>
	
  </div>
</body>
</html>