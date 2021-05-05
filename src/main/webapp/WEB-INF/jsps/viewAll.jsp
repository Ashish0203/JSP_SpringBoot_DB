<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Saved Locations</title>
</head>
<body>
<h3>Locations:</h3>
	<table>
		<tr>
			<th>ID</th>
			<th>CODE</th>
			<th>NAME</th>
			<th>TYPE</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${list}" var="location">
			<tr>
			<td>${location.id}</td>
			<td>${location.code}</td>
			<td>${location.name}</td>
			<td>${location.type}</td>
			<td><a href ="editLocation?id=${location.id}">edit</a></td>
			<td><a href ="delLocation?id=${location.id}">delete</a></td>
			</tr>
		</c:forEach>
	</table><br/>
	<a href="showCreate">Add New Location</a>
</body>
</html>