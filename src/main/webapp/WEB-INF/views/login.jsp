<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
<form action="/login" method="post">
	Name: <input type="text" name="name" />
	Password: <input type="password" name="password" />
	<br>
	<input type="submit" value="login"> 
</form>
<p><font color="red">${errorMsg}</font></p>
</body>
</html>