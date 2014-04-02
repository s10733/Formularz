<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link HREF="bootstrap.css" REL="stylesheet" TYPE="text/css" >
<link HREF="bootstrap-theme.css" REL="stylesheet" TYPE="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zaloguj się</title>
</head>
<body>
<div class="container ">
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
	<form action="loginIn.jsp">
	<input class="form-control" type="text" name="login" placeholder="login" size="5"/>
	<input class="form-control" type="password" name="pass" placeholder="password" size="5"/>
	<input class="btn btn-success" type="submit" value="Zaloguj"/> 
	</div>
	</form>
	</div>
	<div class="col-md-4 col-md-offset-4">
	<a href="rejestruj.jsp"><button class="btn btn-success">Rejestracja</button></a>
	</div>
</div>
</body>
</html>