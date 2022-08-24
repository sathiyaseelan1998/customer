<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 


<title>Insert title here</title>
<style type="text/css">

form label{

display: block;

}

</style>
</head>
<body>
<h1>CUSTOMER REGISTRATION</h1>
<form:form action="customerRegister" modelAttribute="customerBo" method="post" >
<label>NAME</label><form:input path="name"/>
<label>EMAIL</label><form:input path="email"/>
<label>PASSWORD</label><form:input path="password"/>
<label>ADDRESS</label><form:input path="address"/>
<label>MOBILE</label><form:input path="mobile"/>
<form:button value="register">Save</form:button>
</form:form>

<span>${msg}</span>
</body>
</html>