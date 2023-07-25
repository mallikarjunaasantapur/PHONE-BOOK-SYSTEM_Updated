<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Phone Book</title>
<%@include file="component/allCss.jsp" %>
<style>
.back-img{
background:url("img/c5.png");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size:cover;
}
</style>

</head>
<body>
<%@include file="component/navabr.jsp" %>



<div class="container-fluid back-img text-center text-white ">
<h1></h1>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>