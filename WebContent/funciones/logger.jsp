<%@page import="modelo.UsuarioModelo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*"%>
<%
	String dni = request.getParameter("dni");
	String contrasena = request.getParameter("contrasena");
	
	if (dni != null && contrasena != null) {
		UsuarioModelo usuarioModelo = new UsuarioModelo();
		Usuario usuario = usuarioModelo.get(dni, contrasena);
		
		if (usuario == null) {//mandar a login
			response.sendRedirect("../index.html");
		
		} else {
			session.setAttribute("usuarioLog", usuario);
			response.sendRedirect("../sistema.jsp");
			return;
		//	out.print("<h1>asdf</h1>");
			
		}
	}else{
		response.sendRedirect("../index.html");
	}
%>
