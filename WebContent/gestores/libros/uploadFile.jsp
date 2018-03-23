<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
    <%
    File file ;
    ServletContext context = pageContext.getServletContext();
    String filePath = context.getInitParameter("javakoak");
    int maxFileSize = 5000 * 1024;
    int maxMemSize = 5000 * 1024;
    DiskFileItemFactory factory = new DiskFileItemFactory();
    // maximum size that will be stored in memory
    factory.setSizeThreshold(maxMemSize);
    
    // Location to save data that is larger than maxMemSize.
    factory.setRepository(new File("d:\\temp"));

    // Create a new file upload handler
    ServletFileUpload upload = new ServletFileUpload(factory);
    
    // maximum file size to be uploaded.
    upload.setSizeMax( maxFileSize );
    try { 
        // Parse the request to get file items.
        List fileItems = upload.parseRequest(request);

        // Process the uploaded file items
        Iterator i = fileItems.iterator();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>JSP File upload</title>");  
        out.println("</head>");
        out.println("<body>");
        
        while ( i.hasNext () ) {
           FileItem fi = (FileItem)i.next();
           if ( !fi.isFormField () ) {
              // Get the uploaded file parameters
              String fieldName = fi.getFieldName();
              String fileName = fi.getName();
              boolean isInMemory = fi.isInMemory();
              long sizeInBytes = fi.getSize();
           
              // Write the file
              if( fileName.lastIndexOf("\\") >= 0 ) {
                 file = new File( filePath + 
                 fileName.substring( fileName.lastIndexOf("\\"))) ;
              } else {
                 file = new File( filePath + 
                 fileName.substring(fileName.lastIndexOf("\\")+1)) ;
              }
              fi.write( file ) ;
              out.println("Uploaded Filename: " + filePath + 
              fileName + "<br>");
           }
        }
        out.println("</body>");
        out.println("</html>");
     } catch(Exception ex) {
        System.out.println(ex);
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
