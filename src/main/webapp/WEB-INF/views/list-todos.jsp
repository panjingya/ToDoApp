<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Do</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
Hi ${name} <br/>
<div class="container">
<table class="table table-striped">
	<caption>
		Your Todos are
	</caption>
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is completed?</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td>${todo.targetDate}</td>
				<td>${todo.done}</td>
				<td><a class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div>
	<a class="btn btn-success" href="/add-todo">Add</a>
</div>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>