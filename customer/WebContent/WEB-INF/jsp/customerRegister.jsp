<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<link rel="stylesheet" href="../css/mystyle.css" type="text/css"/>

<title>Insert title here</title>
<style type="text/css">

form label{

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

</style>
</head>
<body>

<div class="cForm">
<h3>CUSTOMER REGISTRATION</h3>

<form:form action="customerRegister" modelAttribute="customerBo" method="post" >
<label>NAME</label><form:input path="name"/>
<label>EMAIL</label><form:input path="email"/>
<label>PASSWORD</label><form:password path="password"/>
<label>ADDRESS</label><form:input path="address"/>
<label>MOBILE</label><form:input path="mobile"/>
<form:button value="register">Save</form:button>
</form:form>
</div>

<span>${msg}</span>
</body>
</html>