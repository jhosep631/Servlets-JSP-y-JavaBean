<%-- 
    Document   : salida
    Created on : 21 mar. 2022, 13:43:56
    Author     : HP-J
--%>
<%@page import="com.emergentes.Registro"%>
<%
    Registro reg = (Registro) request.getAttribute("reg");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Los datos registrados son: </h1>
        <p>Nombre: <strong> <%= reg.getNombre() %> </strong> </p>
        <p>Apellidos: <strong> <%= reg.getApellidos() %> </strong> </p>
        <p>Correo electronico: <strong> <%= reg.getCorreo() %> </strong> </p>
        <p>Contraseña: <strong> <%= reg.getContra() %> </strong> </p>
        <a href="index.jsp">Volver</a>
    </body>
</html>
