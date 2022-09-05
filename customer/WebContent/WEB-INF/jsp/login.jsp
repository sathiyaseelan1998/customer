<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<title>Insert title here</title>
</head>
<body>
<div class="container">
<h3>LOGIN</h3>
<form:form action="login" modelAttribute="customerBo" method="post">
<div class="group">
<label for="email">Email</label>
<form:input path="email" id="email"/>
</div>

<div class="group">
<label for="password">Password</label>
<form:password path="password" id="password"/>
</div>

<div class="btn">
<form:button>Login</form:button>
</div>

</form:form>
</div>
</body>
</html> 
