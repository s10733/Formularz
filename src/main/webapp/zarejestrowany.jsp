<%@page import="domain.Registred" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link HREF="bootstrap.css" REL="stylesheet" TYPE="text/css" >
<link HREF="bootstrap-theme.css" REL="stylesheet" TYPE="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zarejestrowany !</title>
</head>
<body>
<jsp:useBean id="Registred" class="domain.Registred" scope="application" />

<jsp:setProperty name="Registred" property="*" /> 

<jsp:useBean id="UserRegistred" class="services.UserRegistred" scope="application" />

<%
UserRegistred.add(Registred);
%>

<p> Użytkownik o loginie:  <jsp:getProperty name="Registred" property="login"></jsp:getProperty> został dodany</p>

<p> Użytkownicy korzystający z naszej strony: </p>

<%

  for (Registred regi : UserRegistred.getAllRegistredUsers()) {
	  out.println("<p>"+regi.getLogin());
  	
  }
%>

<p><a href="loguj.jsp">Zaloguj się</a></p>

</body>
</html>