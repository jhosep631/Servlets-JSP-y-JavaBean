<%-- 
    Document   : index
    Created on : 21 mar. 2022, 12:00:14
    Author     : HP-J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscripcion en curso</h1>
        <form action="MainInscribo" method="POST">
            <label>Nombre: </label>
            <input type="text" name="nombre" />
            <br><br>
            <label>Apellidos: </label>
            <input type="text" name="apellido" />
            <br><br>
            <label>Curso: </label>
            <select name="curso">
                <option>1ro</option>
                <option>2do</option>
                <option>3ro</option>
                <option>4to</option>
                <option>5to</option>
                <option>6to</option>
            </select>
            <br><br>
            <input type="submit" value="Envio" />
        </form>
    </body>
</html>
