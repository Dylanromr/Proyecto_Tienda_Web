<%@page import="javax.swing.JOptionPane"%>
<%@page import="conexion.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<title>USUARIOS</title>
<!--  <link rel="stylesheet" href="css/estilos_1.css">-->
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/5c755a5e47.js" crossorigin="anonymous"></script>
</head>
<body>

<div id="main-content">
<header id="header">
	<jsp:include page="encabezado.jsp" />
	Hola! ${sessionScope.usuario.nombre_usuario}
</header>
<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
		<nav id="nav">
				<nav class="navbar navbar-expand-lg navbar-light bg-dark">
				  <div class="container-fluid">
				    <a class="btn-outline light" href="#">Menu Tienda</a>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" aria-current="page" href="principal.jsp">Inicio</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:light" class="btn btn-outline-light" href="Usuarios.jsp">Usuarios</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Clientes.jsp">Clientes</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Proveedores.jsp">Proveedores</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Productos.jsp">Productos</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="RegistrarVenta.jsp">Ventas</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Reportes.jsp">Reportes</a>
				        </li>
				        </ul>
				    </div>
				  </div>
			</nav>
		</nav>


<%
Conexion con=new Conexion();
con.getConexion();
String d="",u="",c="",r="",e="";
if(request.getParameter("doc")!=null){
d=request.getParameter("doc");
u=request.getParameter("us");
c=request.getParameter("cl");
r=request.getParameter("ro");
e=request.getParameter("es");
JOptionPane.showMessageDialog(null, d+u+c+r+e);
}
%>

<div class= "usuario"">
<form action="ServletGestionUsuario" method="post">

<table width="55%" align="center" class="table">
  <thead>
    <tr>
      <th colspan="5" scope="col"><center>
        <h5>Formulario de  Registro Usuarios</h5></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th colspan="5" scope="row"><input type="submit" name="btnins" value="Registrar" class="btn btn-primary" />
        <input type="submit" name="btncon" value="Consultar" class="btn btn-secondary" />
        <input type="submit" name="btnact" value="Actualizar" class="btn btn-success" />
        <input type="submit" name="btneli" value="Eliminar" class="btn btn-danger" /></th>
    </tr>
    <tr>
      <th scope="row">Cedula</th>
      <td>Usuario</td>
      <td>Contrase?a</td>
      <td width="11%" colspan="2" rowspan="5">&nbsp;</td>
      </tr>
    <tr>
      <th scope="row"><input type="text" name="doc"  value="<%=d%>" placeholder = " # CEDULA" /></th>
      <td><input type="text" name="est"  value="<%=e%>"placeholder = "USER" /></td>
      <td><input type="password" name="cla"  value="<%=c%>"placeholder = "PASSWORD" /></td>
      </tr>
    <tr>
      <th width="36%" scope="row">Nombres - Apellidos</th>
      <td width="28%">E-mail</td>
      <td width="25%">&nbsp;</td>
      </tr>
    <tr>
      <th scope="row"><input type="text" name="usu"  value="<%=u%>" placeholder = " # NOMBRE COMPLETO" /></th>
      <td><input type="text" name="rol"  value="<%=r%>"placeholder = "DIRECCION DE CORREO" /></td>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <th scope="row">&nbsp;</th>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      </tr>
  </tbody>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</body>
</html>