<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="conexion.Conexion"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PROVEEDORES</title>
<link rel="stylesheet" href="css/estilos_1.css">
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	
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
}
%>
	
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
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
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Usuarios.jsp">Usuarios</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Clientes.jsp">Clientes</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:light" class="btn btn-outline-light" href="Proveedores.jsp">Proveedores</a>
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

<table width="100%" align="center" class="table">
  <thead>
    <tr>
      <th colspan="2" scope="col"><center>
        <h5>Formulario de  Registro Proveedores</h5></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th colspan="2" scope="row"><input type="submit" name="btnins" value="Registrar" class="btn btn-primary" />
        <input type="submit" name="btncon" value="Consultar" class="btn btn-secondary" />
        <input type="submit" name="btnact" value="Actualizar" class="btn btn-success" />
        <input type="submit" name="btneli" value="Eliminar" class="btn btn-danger" /></th>
    </tr>
    <tr>
      <th scope="row">NIT</th>
      <th width="45%" >Telefono</th>
      </tr>
    <tr>
      <th scope="row"><input name="NIT" type="text" id="NIT" placeholder = " # NIT"  value="<%=d%>" /></th>
      <td><input name="telefono" type="text" id="telefono"placeholder = " # TELEFONO"  value="<%=e%>" /></td>
      </tr>
    <tr>
      <th width="55%" scope="row">Nombre Proveedor</th>
      <th>Ciudad</th>
    </tr>
    <tr>
      <th scope="row"><input name="nombres" type="text" id="nombres" placeholder = " # NOMBRE PROVEEDOR"  value="<%=u%>" /></th>
      <td><input name="ciudad" type="text" id="ciudad"placeholder = "CIUDAD"  value="<%=r%>" /></td>
    </tr>
    <tr>
      <th scope="row">Direccion</th>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <th scope="row"><input name="direccion" type="text" id="direccion" placeholder = " # DIRECCION"  value="<%=u%>" /></th>
      <td>&nbsp;</td>
      </tr>
      <tr>
      <th scope="row">&nbsp;</th>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      </tr>
  </tbody>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</body>
</html>