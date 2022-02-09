<%@ page import="com.model.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	
	<body>
		<div class="container-fluid">
			<div class="container bg-light">
				<div class="navbar navbar-expand-lg navbar-light ">
					<a class="navbar-brand">
						JSP
					</a>
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="#"> log in</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="#"> sign up </a>
						</li>
					</ul>
					
					<form action="logout" method="post">
						<button class='btn btn-outline-danger'>
							logout
						</button>
					</form>
				</div>	
			</div>
			
			<div class="container mt-4">
				<h1> Hello ${activeUser } </h1>
				
				<table class="table table-primary">
					<thead>	
						<tr>
							<th> First Name </th>
							<th> Last Name </th>
							<th> Username </th>
							<th> password </th>
						</tr>
					</thead>
					
					
					<tbody>
					<%
					
						List<User> users = (List<User>) request.getAttribute("users");
						for(User user : users) {
					%>	
						<tr>
							<td> <%= user.getFirstName() %></td>
							<td> <%= user.getLastName() %></td>
							<td> <%= user.getUserName() %></td>
							<td> <%= user.getPassword() %></td>
							
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>