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
							<a class="nav-link" href="./signup.jsp"> sign up </a>
						</li>
					</ul>
				</div>
			</div>
				<div class="container mt-4">
					<div class="row justify-content-center">
						<div class="alert alert-danger" role="alert">
							${errorMessage }
						</div>
						<div class="col-md-6">
							<form action="login" method="post">
								<div class="mb-3">
									<label for="userName" class="form-label">Username</label>
									<input type="text" id="userName" name="userName" class="form-control"/>
								</div>
								
								<div class="mb-3">
									<label for="password" class="form-label">password</label>
									<input type="text" id="password" name="password" class="form-control"/>
								</div>
								
								<div class="mb-3" class="form-label">
								<button class="btn btn-outline-success">Log In</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				
			</div>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>