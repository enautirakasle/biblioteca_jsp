<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%
  // define el titulo a mostrar en la pagina.
  String sTitle = "Principal";
  if (request.getParameter("title") != null) { 
    sTitle = request.getParameter("title").toString();
  }

  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=sTitle%> - badbit.org</title>
</head>
<body>

  <div id="container">
asdf
  </div>
</body>
</html>