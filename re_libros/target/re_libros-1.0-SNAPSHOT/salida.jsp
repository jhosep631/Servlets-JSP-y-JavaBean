<%-- 
    Document   : salida
    Created on : 21 mar. 2022, 15:16:19
    Author     : HP-J
--%>
<%@page import="com.emergentes.Libros"%>
<%
    Libros lib = (Libros) request.getAttribute("lib");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Los datos del libro son: </h1>
        <p>Titulo: <strong> <%= lib.getTitulo() %> </strong> </p>
        <p>Autor: <strong> <%= lib.getAutor() %> </strong> </p>
        <p>Resumen: <strong> <%= lib.getResumen() %> </strong> </p>
        <p>Medio: </p>
        <ul>
            <%
                String medio[] = lib.getMedio();
                if (medio != null){
                    for (int i=0; i < medio.length; i++){
                        
                 
            %>
            <li> <strong> <%= medio[i] %> </strong></li>
            <%
                   }
                }
            %>
        </ul>
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
