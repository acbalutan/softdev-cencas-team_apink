<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/docs.min.js"></script>
</head>

<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);
if(status){  
	%>
	  <div class="alert alert-success" role="alert" style="position: absolute; top: 40%; left: 33%;">
        <strong> You have successfully logged in!</strong> You will be redirected to page containing your guidelines
      </div>
	
	<%
session.setAttribute("session","TRUE");

%> <META http-equiv="refresh" content="2.5;URL=profile.jsp"> <%
}  
else  
{  
out.print("Sorry, username or password error"); 
%> <META http-equiv="refresh" content="1;URL=login.jsp"> <%
}  
%>  