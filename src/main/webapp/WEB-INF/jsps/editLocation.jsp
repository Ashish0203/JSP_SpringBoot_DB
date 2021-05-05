<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Location</title>
</head>
<body>
	<form method="post" action="editLoc">
		Id:<input type="text" name="id" value="${loc.id}" readonly/> 
		Code:<input type="text" name="code" value="${loc.code}"/>
		Name:<input type="text" name="name" value="${loc.name}"/>
		Type: 
		
		<c:choose>
		<c:when test="${loc.type=='Urban'}">
		Urban<input type="radio" name="type" value="Urban" checked/>
		Rural<input type="radio" name="type" value="Rural"/>
		</c:when>
		<c:when test="${loc.type=='Rural'}">
		Urban<input type="radio" name="type" value="Urban"/>
		Rural<input type="radio" name="type" value="Rural" checked/>
		</c:when>
		 </c:choose>
		<input type="submit" value="save">
	</form>
</body>
</html>