<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<link rel="stylesheet" href="../css/mystyle.css" type="text/css"/>

<title>Insert title here</title>
<style type="text/css">

html,body{
		background:linear-gradient(#ffa17f,#00223e);
		background-repeat: no-repeat;
		height: 100%;

}
.container{
	width: 300px;
	border: 1px solid;
		background:linear-gradient(gray,lightgray);
		

	background-size: cover;
	
}
/* form label{

display:block ;
margin: 5px;


}
form input{

font-size: 20px;
font-weight: lighter;
border-radius: 5px;
width: 200px;

}
form button{
display: block;
margin: 10px;
padding: 7px;
width: 100px;

}
.cForm{

width: 300px;
margin: 250px auto;
padding:20px;
background-color: rgba(20,15,26,.5);



}

.cForm h3{

text-align: center;
}
 */
</style> 
</head>
<body>

<div class="container">
<h3>CUSTOMER REGISTRATION</h3>

<form:form action="customerRegister" modelAttribute="customerBo" method="post" >

<div class="input"><label for="name">NAME</label><form:input path="name" id="name" name="name"/></div>

<div class="input"><label for="email">EMAIL</label><form:input path="email" id="email"/></div>

<div class="input"><label for="password">PASSWORD</label><form:password path="password" id="password"/></div>

<div class="input"><label for="address">ADDRESS</label><form:input path="address" id="address"/></div>

<div class="input"><label for="mobile">MOBILE</label><form:input path="mobile" id="mobile" maxlength="10"/></div>

<div class="btn"><form:button value="register">Save</form:button></div>

</form:form>
</div>

<span>${msg}</span>
</body>
</html>