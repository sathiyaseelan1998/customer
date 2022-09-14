<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
	font-family: 'Poppins',sans-serif;
}

.menu{

width: 100%;
background-color: #2F4F4F;
padding: 10px;

}

ul{

display: flex;
justify-content: space-between;

}

ul li{

list-style: none;
color:white;
margin: 3px;
}

ul li a{

text-decoration: none;
position: relative;
color: white;
}

ul li a::BEFORE {
	
	content: "";
	width:0%;
	height:2px;
	background-color: orange;
	position: absolute;
	bottom: -2px;
	transition:all 0.5s ease;

}
ul li a:HOVER::BEFORE {

width: 100%;

	
}
.menu ul li i{

font-size: 25px;
}

</style>
</head>
<body>
<div class="menu">
	
	<ul>
		<li><i class="material-icons">computer</i></li>
		<li><a href="#">Home</a></li>
		<li><a href="#">Contact</a></li>
		<li><a href="register">Register</a></li>
		<li><a href="customerView">View</a></li>
		<li><a href="login">Login</a></li>
	
	</ul>
	</div>
</body>
</html>