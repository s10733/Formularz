<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link HREF="bootstrap.css" REL="stylesheet" TYPE="text/css" >
<link HREF="bootstrap-theme.css" REL="stylesheet" TYPE="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj Kontakt </title>
</head>
<body>
<div class="container ">
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
	<form action="dodane.jsp">
	<table>
		<th>Dodaj do ksiązki adresowej :</th>
		<tr><td> Nazwa własna kontaktu: </td><td> <input type="text" name="nazwa" placeholder="nazwa"/></td></tr>
		<tr><td> Imie: </td><td><input type="text" name="imie" placeholder="imie"/></td></tr>
		<tr><td> Nazwisko </td><td><input type="text" name="nazwisko" placeholder="nazwisko"/></td></tr>
		<tr><td> Adres: </td><td><input type="text" name="adres" placeholder="adres"/></td></tr>
		<tr><td> E-mail: </td><td><input type="e-mail" name="email" placeholder="e-mail"/></td></tr>
		<tr><td> Telefon: </td><td><input type="text" name="numer" placeholder="telefon"/></td></tr>
		</table>
		<input class="btn btn-success" type="submit" value="Dodaj"/> 
		</form>
	</div>
	</div>
	</div>
</body>
</html>