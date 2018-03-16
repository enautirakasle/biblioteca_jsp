<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.*" %>
    <%if(request.getParameter("guardar").equals("guardar")){
    	if(request.getParameter("titulo")!= null &&  request.getParameter("autor")!= null ){
    		String titulo = request.getParameter("titulo");
    		String autor = request.getParameter("autor");
    		Libro libro = new Libro();
    		libro.setTitulo(titulo);
    		libro.setAutor(autor);
    		LibroModelo libroModelo = new LibroModelo();
    		libroModelo.insert(libro);
    	}
    }
    	%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Title</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
			<div class="row">
				<div class="col">
					<form action="#" method="post" enctype="multipart/form-data">>
						<table>
						<thead>
						<tr><th></th><th></th></tr>
						</thead>
						<tbody>
						<tr><td>Titulo</td><td><input type="text" name="titulo"/></td></tr>
						<tr><td>Autor</td><td><input type="text" name="autor"/></td></tr>
						<tr><td>Foto</td><td><input type="file" name="foto"/></td></tr>
						<tr><td></td><td><input type="submit" name="guardar" value="guardar"/></td></tr>
						</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</html>