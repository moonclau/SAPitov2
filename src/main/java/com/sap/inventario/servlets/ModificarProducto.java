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
 * @author claudia
 */
@WebServlet(name = "ModificarProducto", urlPatterns = {"/ModificarProducto"})
public class ModificarProducto extends HttpServlet {

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
        Conexion c=new Conexion();
        String clave = request.getParameter("clave");
        String nombre = request.getParameter("nombre");
        String tipo = request.getParameter("tipo");
        String unidad = request.getParameter("unidad");
        String cantidad = request.getParameter("cantidad");
        String costounitario = request.getParameter("costounitario");
        String iva = request.getParameter("iva");
        String costov=request.getParameter("costo");
        String fecha= request.getParameter("fecha");
        double vcosto=Double.parseDouble(costounitario);
        double viva=Double.parseDouble(iva);
        double monto=(vcosto*viva)+vcosto;
         c.actualizar("clave='"+clave+"',"
                 + "nombre='"+nombre+"',"
                 + "tipo='"+tipo+"',"
                 + "unidad='"+unidad+"',"
                 + "existencia="+cantidad+","
                 + "costounitario="+costounitario+","
                 + "iva="+iva+","
                 + "costo="+costov+","
                 + "fecha='"+fecha+"',"
                 + "monto_total="+monto+""
                 ,"producto"
                 ,"clave='"+clave+"'and operacion='existente'");

         response.sendRedirect("Inventario/InventarioProductoModificar.jsp");
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
            Logger.getLogger(ModificarProducto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ModificarProducto.class.getName()).log(Level.SEVERE, null, ex);
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
