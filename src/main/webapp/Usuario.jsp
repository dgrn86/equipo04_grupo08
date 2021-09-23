<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario</title>
</head>
<body>
<!--VARIABLES GLOBALES-->
<%!	
int buscar_cedula;
String email_usuario="", nombre_usuario="", password="", usuario="";%>
<%
if(request.getParameter("buscar_cedula")!=null){

buscar_cedula=Integer.parseInt(request.getParameter("buscar_cedula"));
email_usuario=request.getParameter("email_usuario");
nombre_usuario=request.getParameter("nombre_usuario");
password=request.getParameter("password");
usuario=request.getParameter("usuario");
}
if(request.getParameter("men")!=null){
	String mensaje=request.getParameter("men");
	out.print("<script type='text/javascript'>alert('"+mensaje+"');</script>");
}
%>

<form action="Usuario" method="post">
<div><label>Cédula Usuario:</label><input type="number" name="cedula_usuario" pattern="[1-9]+" title="digite solo numeros" value="<%=buscar_cedula%>"></div>
<div><label>Email Usuario:</label><input type="text" name="email_usuario" value="<%=email_usuario%>"></div>
<div><label>Nombre Usuario:</label><input type="text" name="nombre_usuario" value="<%=nombre_usuario%>"></div>
<div><label>Password:</label><input type="password" name="password" value="<%=password%>"></div>
<div><label>Usuario:</label><input type="text" name="usuario" value="<%=usuario%>"></div>

<div><input type="submit" name="insertar" value="Registrar">

<input type="submit" name="actualizar" value="Actualizar">
<input type="submit" name="eliminar" value="Eliminar"></div>
</form>
<hr>
<form action="Usuario" method="post">

<fieldset>
<legend>Consultar Usuario</legend>
<div><label>Cédula Usuario:</label><input type="number" name="buscar_cedula">
<input type="submit" name="consultar" value="Consultar"></div>
</fieldset>
</form>
</body>
</html>