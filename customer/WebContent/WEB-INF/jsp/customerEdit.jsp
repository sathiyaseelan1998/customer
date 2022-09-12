<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<link rel="stylesheet" href="../css/mystyle.css" type="text/css"/>

<title>Insert title here</title>
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
	font-family: 'Poppins',sans-serif;
}
body{

	width:100vw;
	height:100vh;
	background: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);
	display: flex;
	justify-content: center;
	align-items: center;
	color: white;
	
}
.container{

	border: none;
	border-radius:10px;
	width: 700px;
	background-color: rgba(0,0,0,.3);
	box-sizing: border-box;
	box-shadow: 3px 0px 5px 0px black;
	
	
}

.content form .customer-details{
	display: flex;
	flex-wrap:wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
	padding: 10px;
}
form label{
display: block;

}
.box input{
	
	height: 35px;
	width: 100%;
	padding: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
	border-bottom-width:2px;
	outline:none;
	margin: 3px 0px;
}

.box{

	width: 45%;
	margin-bottom: 10px;

}

.btn{
	padding: 10px;
	margin-top: -5px;
	margin-bottom: 5px;
}
button{

	height: 35px;
	width: 100%;
	border: none;
	border-radius: 5px;
	background: linear-gradient(to left bottom, #051937, #004d7a, #008793, #00bf72, #a8eb12);
	font-size: 18px;
	color:white;
	box-shadow: 3px 0px 5px 0px black;
 	cursor: pointer;
   	
}
h3{

	text-align: center;
	color: white;
	text-shadow:0px 0px 3px black;
	margin-bottom: 0px;
	margin-top: 5px;

}
hr{
	margin-top: 5px;
	background: linear-gradient(to left bottom, #051937, #004d7a, #008793, #00bf72, #a8eb12);
	height: 3px;
	border: none;

}
.customer-details .box input:hover {
	border-color: #00bf72;
}



</style>
</head>
<body>
 <div class="container">
	<h3>CUSTOMER UPDATE</h3><hr>
	<div class="content">
	<form:form action="customerEdit" modelAttribute="customerBo" method="post" >
	<div class="customer-details">
<form:hidden path="id"/>

<div class="box"><label for="name">NAME</label><form:input path="name" id="name" name="name"/></div>

<div class="box"><label for="email">EMAIL</label><form:input path="email" id="email"/></div>

<div class="box"><label for="password">PASSWORD</label><form:password path="password" id="password"/></div>

<div class="box"><label for="address">ADDRESS</label><form:input path="address" id="address"/></div>

<div class="box"><label for="mobile">MOBILE</label><form:input path="mobile" id="mobile" maxlength="10"/></div>
</div>
<div class="btn"><form:button value="register">update</form:button></div>

</form:form>
</div>
</div>

<label>${msg}</label>

</body>
</html>