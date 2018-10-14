/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.ventas.servlets;

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
 * @author asus
 */
@WebServlet(name = "OrdendeVenta", urlPatterns = {"/OrdendeVenta"})
public class OrdendeVenta extends HttpServlet {

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
        String clave = request.getParameter("claveOrdendeVenta");
        String fecha = request.getParameter("fechaOrdendeVenta");
        String direccion = request.getParameter("direccionOrdendeVenta");
        String cantidad = request.getParameter("cantidadOrdendeVenta");
        String descripcion = request.getParameter("descripcionOrdendeVenta");
        String vendedor = request.getParameter("vendedorOrdendeVenta");
        String preciounitario = request.getParameter("preciounitarioOrdendeVenta");
        String preciototal = request.getParameter("preciototalOrdendeVenta");
        String idPOV = request.getParameter("idpedidoOrdendeVenta");
       
        Conexion c = new Conexion();
        
        c.insertar("clave_ordenventa,fecha,direccion,cantidad,descripcion_venta,vendedor,precio_unitario,precio_total,idpedido,","cliente","'"+clave+"','"+fecha+"','"+direccion+"',"+cantidad+",'"+descripcion+"','"+vendedor+"',"+preciounitario+","+preciototal+","+idPOV+"");
       
         response.sendRedirect("Ventas/Orden de Venta.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

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
            Logger.getLogger(OrdendeVenta.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OrdendeVenta.class.getName()).log(Level.SEVERE, null, ex);
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
