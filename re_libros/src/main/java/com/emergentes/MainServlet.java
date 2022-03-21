
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP-J
 */
@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        // 1
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String[] medio = request.getParameterValues("medio");
        // 2
        Libros libro = new Libros();
        // 3
        libro.setTitulo(titulo);
        libro.setAutor(autor);
        libro.setResumen(resumen);
        libro.setMedio(medio);
        // 4
        request.setAttribute("lib", libro);
        // 5
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }


}
