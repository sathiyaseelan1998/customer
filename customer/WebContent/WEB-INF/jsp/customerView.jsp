<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

display: flex;
justify-content: center;
align-items: center;
height: 100vh;
	background: linear-gradient(to left bottom, #304352,#d7d2cc);


}
th{
background-color: navy;
color: white;
text-align: left;
border-color: black;
}
table ,th ,td{

border-bottom:none;
border-collapse: collapse;
padding:7px;

}
table{

width: 100%;

}

tr:nth-child(even){
	background: linear-gradient(to right top, #304352,#d7d2cc);


}
tr:hover {
	color: white;
}
.cap{

text-transform: capitalize;

}
.container{

width: 900px;
background-color: rgba(0,0,0,.2);
box-sizing: border-box;
padding: 10px;
box-shadow: 3px 0px 5px 0px black;

}
i:HOVER {
	
	color: white;
	cursor: pointer;
}

</style>
</head>
<body>
<div class="container">
<table>

<tr>

<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>PASSWORD</th>
<th>MOBILE</th>
<th>ADDRESS</th>
<th>EDIT</th>
<th>DELETE</th>


</tr>

<c:forEach items="${list}" var="l">
<tr>
<td>${l.id}</td>
<td class="cap">${l.name}</td>
<td>${l.email}</td>
<td>${l.password}</td>
<td class="cap">${l.address}</td>
<td>${l.mobile}</td>
<td><a href="edit?id=${l.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a></td>
<td><a href="delete?id=${l.id}"><i class="fa fa-trash-o" style="font-size:24px ;"></i></a></td>
			
</tr>


</c:forEach>


</table>
</div>
</body>
</html>