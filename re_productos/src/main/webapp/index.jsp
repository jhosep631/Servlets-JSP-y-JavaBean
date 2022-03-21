<%-- 
    Document   : index
    Created on : 21 mar. 2022, 14:06:07
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
        <h1>Registro de productos</h1>
        <form action="MainServlet" method="POST">
            <label>Producto: </label>
            <input type="text" name="producto" value="" />
            <br><br>
            <label>Categoria: </label>
            <select name="categoria">
                <option>Nuevos</option>
                <option>Estrella</option>
                <option>Seguidores</option>
                <option>Apoyo</option>
                <option>Temporada</option>
                <option>A la baja</option>
            </select>
            <br><br>
            <label>Existencia: </label>
            <input type="text" name="existencia" value="" />
            <br><br>
            <label>Precio: </label>
            <input type="text" name="precio" />
            <br><br>
            <input type="submit" value="ENVIAR" />
        </form>
    </body>
</html>
