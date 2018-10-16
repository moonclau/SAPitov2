/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import com.sap.conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author montse
 */
@WebServlet(name = "AgregarEntrada", urlPatterns = {"/AgregarEntrada"})
public class AgregarEntrada extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Conexion c = new Conexion();
        String eclave = request.getParameter("clave");
        String enombre = request.getParameter("nombre");
        String eexistencia = request.getParameter("existencia");
        String ecostounitario = request.getParameter("costounitario");
        String eiva = request.getParameter("iva");
        String ecostototal = request.getParameter("costototal");
        String emontototal = request.getParameter("montototal");
        String efecha = request.getParameter("fecha");
        
        c.insertar("clave,nombre,existencia,costounitario, iva,costo,monto_total, fecha","producto",
                "'"+eclave+"',"
                       + "'"+enombre+"',"
                       + ""+eexistencia+","
                       + ""+ecostounitario+","
                       + ""+eiva+","
                       + ""+ecostototal+","
                       + ""+emontototal+","
                       + "'"+efecha+"',"
                       );
        
         response.sendRedirect("Inventario/InventarioAgregarEntrada.jsp");
                   
//        
    }


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AgregarEntrada.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AgregarEntrada.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
