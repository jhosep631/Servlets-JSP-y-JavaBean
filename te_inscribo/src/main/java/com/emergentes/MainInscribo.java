/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
@WebServlet(name = "MainInscribo", urlPatterns = {"/MainInscribo"})
public class MainInscribo extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        // 1
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String[] curso = request.getParameterValues("curso");
        // 2
        Inscripcion inscrip = new Inscripcion();
        // 3
        inscrip.setNombre(nombre);
        inscrip.setApellido(apellido);
        inscrip.setCurso(curso);
        // 4
        request.setAttribute("ins", inscrip);
        // 5
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }

}
