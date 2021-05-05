<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Location</title>
</head>
<body>
	<form method="post" action="saveloc">
		Id:<input type="text" name="id" /> 
		Code:<input type="text" name="code" />
		Name:<input type="text" name="name" />
		Type: Urban<input type="radio" name="type" value="Urban"/>
		Rural<input type="radio" name="type" value="Rural"/> 
		<input type="submit" value="save">
	</form>
	${message}
	<br/>
	<a href="view">View All Locations</a>
</body>
</html>