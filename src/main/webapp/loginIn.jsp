
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="domain.Registred" scope="session" />

<jsp:setProperty name="user" property="*" /> 

<jsp:useBean id="userlogin" class="services.UserRegistred" scope="application" />

<% 

if(userlogin.check(user) && userlogin.checkPass(user)){
	
		response.sendRedirect("main.jsp");
	}

	else{
		
		response.sendRedirect("loguj.jsp");
	}


%>