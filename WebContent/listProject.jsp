<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Project</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
</head>
<body>

	<jsp:include page="navbar.jsp" />

	<div class="container">
		<br>
		<p>
			<a href="ProjectController.do?action=insert">Add Project</a>
		</p>
		<table class="table table-hover table-responsive table-striped">
			<thead>
				<tr>
					<th>Project ID</th>
					<th>Project Name</th>
					<th>Status</th>
					<th>Description</th>
					<th>Start Date</th>
					<th>Finish Date</th>
					<th>View Status</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${projects}" var="project">
					<tr>
						<td><c:out value="${project.projectID}"></c:out></td>
						<td><c:out value="${project.projectName}"></c:out></td>
						<td><c:out value="${project.status}"></c:out></td>
						<td><c:out value="${project.description}"></c:out></td>
						<fmt:setLocale value="en_US" />
						<td><fmt:formatDate pattern="dd/MM/yyy"
								value="${project.startDate}" /></td>
						<td><fmt:formatDate pattern="dd/MM/yyy"
								value="${project.finishDate}" /></td>
						<td><c:out value="${project.viewStatus}"></c:out></td>
						<td><a
							href="ProjectController.do?action=edit&projectID=<c:out value="${project.projectID }"/>">Update</a></td>
						<td><a
							href="ProjectController.do?action=delete&projectID=<c:out value="${project.projectID }"/>">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>