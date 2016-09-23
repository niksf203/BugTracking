<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="PersonController?action=listPerson">Person</a></li>
					<li><a href="ProjectController?action=listProject">Project</a></li>
					<li><a href="CommentController?action=listComment">Comment</a></li>
					<li><a href="TestController?action=listTest">Test</a></li>
					<li><a href="AssignController?action=listAssign">Assign</a></li>
					<li><a href="IssueController?action=listIssue">Issue</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
<div class="container">
	<form class="form-horizontal" action="LoginController" method="post">
		<div class="col-md-12">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>Sign In</h3>
					</div>
				
					<div class="panel-body">
					<div>
					<p class="text-danger"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></p>
					</div>
					
					 <div class="form-group col-lg-12">
					<input type="text" name="username" class="form-control" placeholder="Username" />
					</div>
					
					<div class="form-group col-lg-12">
					<input type="text" name="password" class="form-control" placeholder="Password" />
					</div>
						<input type="submit" class="btn btn-default" value="Login"/>
					</div>
					
				</div>
			</div>
		</div>
	</form>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>