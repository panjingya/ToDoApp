<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Do</title>
</head>
<body>
Hi ${name} <br/>
<table>
	<caption>
		Your Todos are
	</caption>
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is completed?</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td>${todo.targetDate}</td>
				<td>${todo.done}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<a class="button" href="/add-todo">Add</a>
</body>
</html>