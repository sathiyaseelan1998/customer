<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<style type="text/css">

.msg{

background-color: lightgreen;
padding:15px 10px;
margin: 5px 10px;
width: 100%;
border-radius: 10px;

}


</style>

</head>
<body>
<div class="msg">
${msg}
</div>
<a href="profile">Profile</a>
<c:if test="${!empty msg}">

</c:if>
</body>
</html>