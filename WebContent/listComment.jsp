<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="index1.jsp">Person</a></li>
        <li><a href="index2.jsp">Project</a></li>
        <li><a href="index3.jsp">Comment</a></li>
        <li><a href="index4.jsp">Test</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>


	<div class="container">
		<br>
		<p>
			<a href="CommentController.do?action=insert">Add Comment</a>
		</p>
		<table class="table table-hover table-responsive table-striped">
			<thead>
				<tr>
					<th>Comment ID</th>
					<th>Description</th>
					<th>Status</th>
					<th>Comment Time</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${comments}" var="comment">
					<tr>
						<td><c:out value="${comment.commentID}"></c:out></td>
						<td><c:out value="${comment.description}"></c:out></td>
						<td><c:out value="${comment.status}"></c:out></td>
						<td><c:out value="${comment.commentTime}"></c:out></td>
						<td><a
							href="CommentController.do?action=edit&commentID=<c:out value="${comment.commentID }"/>">Update</a></td>
						<td><a
							href="CommentController.do?action=delete&commentID=<c:out value="${comment.commentID }"/>">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script src="js/bootstrap.min.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>