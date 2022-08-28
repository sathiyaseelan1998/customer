<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Insert title here</title>
</head>
<body>

<table>

<tr>

<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>PASSWORD</th>
<th>MOBILE</th>
<th>ADDRESS</th>

</tr>

<c:forEach items="${list}" var="l">
<tr>
<td>${l.id}</td>
<td>${l.name}</td>
<td>${l.email}</td>
<td>${l.password}</td>
<td>${l.address}</td>
<td>${l.mobile}</td>
</tr>


</c:forEach>


</table>

</body>
</html>