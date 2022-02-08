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
							<a class="nav-link" href="./index.jsp"> log in</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="#"> sign up </a>
						</li>
					</ul>
				</div>	
			</div>
			
			<div class="container mt-4">
				<div class="row justify-content-center">
					<div class="col-md-6">
						<div class="mb-3">
							<label for="firstName" class="form-label">First Name</label>
							<input type="text" class="form-control" id="firstname" name="firstName"/>
						</div>
						
						
						<div class="mb-3">
							<label for="lastName" class="form-label">Last Name</label>
							<input type="text" class="form-control" id="lastName" name="lastName"/>
						</div>
						
						
						
						<div class="mb-3">
							<label for="userName" class="form-label">userName</label>
							<input type="text" class="form-control" id="userName" name="userName"/>
						</div>
						
						<div class="mb-3">
							<label for="password" class="form-label">password</label>
							<input type="password" class="form-control" id="password" name="password"/>
						</div>
						
						<div class="mb-3">
							<button type="submit" class="btn btn-outline-success"> Sign Up</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>