<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
 	background: rgb(63,94,251);
	/* background: radial-gradient(circle, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%); */ 
		background: radial-gradient(circle, gray,black); 	
		
	display: flex;
	justify-content: center;
	align-items: center;
	color: white;
	
}
.container{

width:400px;
background-color: rgba(0,0,0,.2);
padding: 10px;
border:none;
border-radius:20px;
position: relative;
box-shadow: 5px 0px 5px 0px black;


}
.group label{

display: block;
padding-bottom: 5px;
}
.group input{

width: 100%;
height: 35px;
border:none;
border-radius: 20px;
outline: none;
padding: 10px;
}
.group{

margin-bottom: 15px;

}
.container .icon{

width: 70px;
height: 70px;
background: rgb(252,205,128);
background: linear-gradient(90deg, rgba(252,205,128,1) 0%, rgba(209,122,142,1) 55%, rgba(220,159,174,1) 100%);       
border-radius: 50%;
position: absolute;
left:170px;
top:-45px;
display: flex;
justify-content: center;
align-items: center;
box-shadow: 5px 0px 5px 0px black;

}

.icon .fa-user{

		font-size: 45px;
        color: black;
      	
}


.btn button{
	
	width: 100%;
	height: 30px;
	border: none;
	border-radius: 20px;
	background: linear-gradient(-90deg, rgba(252,205,128,1) 0%, rgba(209,122,142,1) 55%, rgba(220,159,174,1) 100%);       
	margin-top: 10px;
	margin-bottom: 10px;
	box-shadow: 5px 0px 5px 0px black;
	cursor: pointer;
	
}

.container h3{

text-align:center;
margin-top: 15px;
letter-spacing: 2px;
}
.msg {

position: absolute;
left: 0px;
top: 0px;
background-color:rgba(255,0,0,.7);
background-color:tomato;
padding: 15px 10px;
width: 100%;
margin: 5px 10px;
border-radius: 10px;
}
.group.success input{

border-color: green;
}
.group.error input{
border-color: red;

}
</style>

   <script type="text/javascript">
/* const form=document.getElementById("form");
const email=document.getElementById("email");
const password=document.getElementById("password");
 */

/* form.addEventListener("submit",e=>{
    
    
    e.preventDefault();
    checkInput();

}); */

function checkInput(){

    console.log("hi....");

	const form=document.getElementById("form");
	const email=document.getElementById("email");
	const password=document.getElementById("password");

    const emailId=email.value;
    const pass=password.value;
    console.log(emailId);

    if(name===""){

        setError(name,"name can't be blank")
    }
    else{

        setSuccess(name);
    }

}
function setError(input,message){

    const forms=input.parentElement;
    const error=forms.querySelector("errors");
    forms.className="group error";
    error.innerText=message;
}

function setSuccess(input){

    const forms=input.parentElement;
    forms.className="group success";


}


</script>



</head>
<body>
<div class="container">

<div class="icon">
<i class="fa fa-user" ></i>
</div>

<h3>LOGIN</h3>

<form:form action="customerLogin" modelAttribute="customerBo" method="post" id="form">

<div class="group">
<label for="email">Email</label>
<form:input path="email" id="email"/>
<form:errors></form:errors>
</div>

<div class="group">
<label for="password">Password</label>
<form:password path="password" id="password"/>
<form:errors></form:errors>
</div>

<div class="btn">
<form:button type="submit" onclick="checkInput()">Login</form:button>
</div>

</form:form>

</div>
<c:if test="${!empty msg}">
<div class="msg">
<span>${msg}</span>

</div>
</c:if>
</body>
</html> 
