<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link HREF="bootstrap.css" REL="stylesheet" TYPE="text/css" >
<link HREF="bootstrap-theme.css" REL="stylesheet" TYPE="text/css" >
<title>Zarejestruj się !</title>
</head>
<body>
<div class="container ">
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
	<table>
	<form action="zarejestrowany.jsp">
	<th>ZAREJESTRUJ SIĘ !</th>
	<tr><td>Login:</td><td>  <input type="text" name="login" placeholder="login"/></td></tr>
	<tr><td>Hasło:</td><td>  <input type="password" name="pass" placeholder="password"/></td></tr>
	<tr><td>Imię:</td><td>   <input type="text" name="firstname" placeholder="imie"/></td></tr>
	<tr><td>E-mail:</td><td> <input type="e-mail" name="email" placeholder="e-mail"/></td></tr>
	<tr><td><input class="btn btn-success" type="submit" value="Rejestruj"/></td></tr>
	</form>
	<tr><td><a href="loguj.jsp"><button class="btn btn-success">Zaloguj się</button></a></td></tr>
	</table>
	</div>
	</div>
</div>
</body>
</html>