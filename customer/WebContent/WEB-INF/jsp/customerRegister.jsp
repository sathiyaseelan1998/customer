<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<link rel="stylesheet" href="../css/mystyle.css" type="text/css"/>

<title>Insert title here</title>
</head>
<body>
<div class="myform">
<form:form action="customerRegister" modelAttribute="customerBo" method="post" >
<form:input path="name"/>
<form:input path="email"/>
<form:input path="password"/>
<form:input path="address"/>
<form:input path="mobile"/>
<form:button>Save</form:button>
</form:form>
</div>
</body>
</html>