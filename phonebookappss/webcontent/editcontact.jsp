<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="component/allCss.jsp" %>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ContactDAO" %>
<%@page import="java.util.List"%>
<%@page import="com.entity.Contact" %>
<%@page import="com.servlet.EditContact" %>
<%@page import="com.servlet.AddContact" %>
<%@page import="com.servlet.RegisterServlet" %>
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
<body>
<%@include file="component/navabr.jsp" %>
<%if(user==null)
{
	session.setAttribute("invalidMsg", "Login Please..");
	response.sendRedirect("login.jsp");
}%>
<div class="container-fluid back-img">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Add Contact Page</h4>
<% 
	String errorMsg=(String)session.getAttribute("failedMsg");


if(errorMsg!=null){
	%>
	<p class="text-danger text-center"><%=errorMsg %></p>
<% 
session.removeAttribute("failedMsg");
}
%>

<form action="update" method="post">
<%
int cid=Integer.parseInt(request.getParameter("cid"));
ContactDAO dao=new ContactDAO(DbConnect.getConn());
Contact c=dao.getContactByID(cid);
%>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input value="<%=c.getName() %>" name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
     <div class="form-group">
     </div>
     </div>
     
    <label for="exampleInputEmail1">Email address</label>
    <input value="<%=c.getEmail() %>" name="email" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div class="form-group">
    <label for="exampleInputEmail1">Enter Phone Number</label>
    <input value="<%=c.getPhno() %>" name="phno" type="text" class="form-control" id="exampleInputPhone" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
    <textarea rows="3" cols="" placeholder="Enter About" name="about" class="form-control"><%=c.getAbout() %></textarea>
    </div>
  
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-success">Update Contact</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>