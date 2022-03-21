

<%@page import="com.emergentes.Producto"%>
<%
    Producto prod = (Producto) request.getAttribute("prod");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Los datos de el producto son: </h1>
        <p>Producto: <strong> <%= prod.getProducto() %> </strong> </p>
        <p>La categoria del producto es:  </p>
        <ul>
            <%
                String categoria[] = prod.getCategoria();
                if (categoria != null){
                    for (int i=0; i < categoria.length; i++){
                        
                 
            %>
            <li> <strong> <%= categoria[i] %> </strong></li>
            <%
                   }
                }
            %>
        </ul>
        <p>Existencia: <strong> <%= prod.getExistencia() %> </strong> </p>
        <p>Precio: <strong> <%= prod.getPrecio() %> </strong> </p>
        <a href="index.jsp">Volver</a>
    </body>
</html>
