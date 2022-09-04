<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<link rel="stylesheet" href="../css/mystyle.css" type="text/css"/>

<title>customer</title>
 <style type="text/css">

body{
		background:linear-gradient(#ffa17f,#00223e);
		background-repeat: no-repeat;
		font-family: serif,sans-serif,fantasy;
		

}
.container{
	width: 300px;
	border: none;
	background-color:rgba(0,0,0,.3);
	margin:100px auto ;
	padding: 10px;
	color: white;
	border-radius: 10px;
	box-shadow: 5px 0px 5px 0px black;
	
	
}
.container label{

	display: block;
}
.box{
	margin-bottom: 8px;

}
.box input{

width: 100%;
box-sizing: border-box;
padding: 7px 10px;
margin: 5px 0px;
border-radius: 5px;
border: none;

}
.btn button{

padding: 10px 0px;
text-align: center;
border: none;
border-radius: 10px;
width: 50%;
background-color:black;
color: white; 
box-shadow: 3px 0px 5px 0px black;

}
.btn{
text-align: center;
margin-top: 3px;
}
.container h3{
text-align: center;
color: black;
text-shadow:0px 0px 3px white;
margin-bottom: 0px;
}
hr{

background-color: gray;
opacity: .5;

}
</style>
</head>
<body>

<div class="container">
<h3>CUSTOMER REGISTRATION</h3><hr>

<form:form action="customerRegister" modelAttribute="customerBo" method="post" >

<div class="box"><label for="name">NAME</label><form:input path="name" id="name" name="name"/></div>

<div class="box"><label for="email">EMAIL</label><form:input path="email" id="email"/></div>

<div class="box"><label for="password">PASSWORD</label><form:password path="password" id="password"/></div>

<div class="box"><label for="address">ADDRESS</label><form:input path="address" id="address"/></div>

<div class="box"><label for="mobile">MOBILE</label><form:input path="mobile" id="mobile" maxlength="10"/></div>

<div class="btn"><form:button value="register">save</form:button></div>

</form:form>
</div>

<span>${msg}</span>
</body>
</html>