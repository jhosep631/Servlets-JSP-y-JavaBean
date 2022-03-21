<%-- 
    Document   : index
    Created on : 21 mar. 2022, 14:47:48
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
        <div style="align-items: center">
            <div>
        <h1>Registro de libros</h1>
        <form action="MainServlet" method="POST">
            <label>Titulo: </label>
            <input type="text" name="titulo" value="" />
            <br><br>
            <label>Autor: </label>
            <input type="text" name="autor" value="" />
            <br><br>
            <label>Resumen: </label>
            <textarea name="resumen" rows="4" cols="20">
            </textarea>
            <br><br>
            <table>
                <tr>
                    <td>Medio: </td>
                    <td>
                        <input type="radio" name="medio" value="Fisico" /> Fisico
                        <br>
                        <input type="radio" name="medio" value="Magnetico" /> Magnetico
                    </td>
                </tr>
            </table>
            <br><br>
            <input type="submit" value="Enviar" />
        </form>
            </div>
        </div>
    </body>
</html>
