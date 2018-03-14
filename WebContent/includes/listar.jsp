<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.Iterator" %>
    <%
    LibroModelo libroModelo = new LibroModelo();
    ArrayList<Libro> libros = libroModelo.selectAll();
    %>

			<table class="table table-striped">
			<thead class="thead-dark">
				<tr><th>Titulo</th><th>Autor</th></tr>
			</thead>
			<tbody>
			
			<%
			Iterator<Libro> i = libros.iterator();
			Libro libro;
			while(i.hasNext()){
				libro = i.next();
				%>
				<tr>
					<td>
						<%=libro.getTitulo()%>
					</td>
					<td>
						<%=libro.getAutor()%>
					</td>
					<td>
						<a href="ver.jsp?id=<%=libro.getId()%>">ver</a>
					</td>
				</tr>
				<%
			}//fin while
			%>

			</tbody>
			</table>
		