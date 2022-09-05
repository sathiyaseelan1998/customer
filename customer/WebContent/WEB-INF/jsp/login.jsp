<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

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
	background:linear-gradient(to right bottom, #ffa17f,#00223e);
	display: flex;
	justify-content: center;
	align-items: center;
	color: white;
	
}
.container{

width:400px;
background-color: rgba(0,0,0,.3);
padding: 10px;
display: relative;;
}
.group label{

display: block;
padding-bottom: 5px;
}
.group input{

width: 100%;
}
.group{

margin-bottom: 15px;

}
.container .icon{

width: 50px;
height: 50px;
background-color: white;
border-radius: 50%;
position: absolute;
left:20px;
top:10px;

}


</style>
</head>
<body>
<div class="container">
<h3>LOGIN</h3>
<form:form action="login" modelAttribute="customerBo" method="post">
<div class="icon">

</div>
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
