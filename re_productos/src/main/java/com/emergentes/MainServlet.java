
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
        String producto = request.getParameter("producto");
        String[] categoria = request.getParameterValues("categoria");
        String existencia = request.getParameter("existencia");
        String precio = request.getParameter("precio");
        // 2
        Producto produc = new Producto();
        // 3
        produc.setProducto(producto);
        produc.setCategoria(categoria);
        produc.setExistencia(existencia);
        produc.setPrecio(precio);
        // 4
        request.setAttribute("prod", produc);
        // 5
        request.getRequestDispatcher("salida.jsp").forward(request, response);
        
    }

}
