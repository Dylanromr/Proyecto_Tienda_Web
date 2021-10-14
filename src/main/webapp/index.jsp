<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INICIO DE SESION</title>
<link rel="stylesheet" href="css/estilos_1.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
</head>
<body>

<div class = "login">

<br><br><br><br>
<h3><center>Login Tienda</h3>

<form action="usuario" method="post">
<input type="hidden" name="tipo" value="iniciarSesion" />
<!-- user name -->
<label for = "usuario">usuario</label>
<input type = "text" name="nombre" placeholder = "nombre de usuario"> 

<!-- passsword -->
<label for = "clave">clave</label>
<input type = "password" name="clave" placeholder = "contraseña">
<br><br>

<input type  = "submit" value ="iniciar sesion">
<c:set var="mensaje" value="${requestScope.mensaje}" />
<c:if test="${not empty mensaje}">
</c:if>

<br><br>
<a href = "#">REGISTRESE</a>
  
</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<script src="js/script.js"></script>
</body>
</html>