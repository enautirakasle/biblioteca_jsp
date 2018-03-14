<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String nombre = request.getParameter("fname");
String apellido = request.getParameter("lname");
String accionVer = request.getParameter("ver");
String accionEliminar = request.getParameter("eliminar");
String boton1 = request.getParameter("boton1");

out.println(nombre + " " + apellido);
out.println("<br>");
out.println(accionVer + " " + accionEliminar);
out.println(boton1);
%>
</body>
</html>