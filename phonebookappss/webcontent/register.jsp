<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
<style>
.back-img{
background:url("img/bg.png");
width:100%;
height:100vh;
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body style="background-color:#f7faf8;">
<%@include file="component/navabr.jsp" %>

<div class="container-fluid back-img">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div style="margin-top:150px"> 
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Registartion</h4>
<% String sucssMsg=(String)session.getAttribute("sucssMsg");
	String errorMsg=(String)session.getAttribute("errorMsg");
if(sucssMsg!=null){
%>
	<p class="text-success text-center"><%=sucssMsg  %></p>
<% 
session.removeAttribute("sucssMsg");
}

if(errorMsg!=null){
	%>
	<p class="text-danger text-center"><%=sucssMsg  %></p>
<% 
session.removeAttribute("errorMsg");
}
%>
<form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
     <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-primary">Register</button>
  </div>
  </div>
</form>
</div>
</div>
</div>
</div>
</div></div>
<div style="margin-top:92px"> 
<%@include file="component/footer.jsp" %>
</div>
</body></html>
