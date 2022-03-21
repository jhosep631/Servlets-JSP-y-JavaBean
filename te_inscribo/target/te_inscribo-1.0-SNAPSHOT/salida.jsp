<%@page import="com.emergentes.Inscripcion"%>
<%
    Inscripcion ins = (Inscripcion) request.getAttribute("ins");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Se inscribio con los datos</h1>
        <p>Su nombre es: <%= ins.getNombre() %> </p>
        <p>Su apellido es: <%= ins.getApellido() %> </p>

        <p>El curso en el que se inscribio es:  </p>
        <ul>
            <%
                String curso[] = ins.getCurso();
                if (curso != null){
                    for (int i=0; i < curso.length; i++){
                        
                 
            %>
            <li><%= curso[i] %></li>
            <%
                   }
                }
            %>
        </ul>
        <br>
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>