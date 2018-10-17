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
import java.util.ArrayList;
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
@WebServlet(name = "ModificarCliente", urlPatterns = {"/ModificarCliente"})
public class ModificarCliente extends HttpServlet {

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
        String cliente = request.getParameter("modificarIdCliente");
        Conexion c = new Conexion();
        //usuario usu = new usuario();
         ArrayList lista = c.consulta("id,clave_cliente,nombre,apellido_paterno,apellido_materno,direccion,cp,municipio,estado,pais,rfc,cuenta_contable,"
                + "cuenta_bancaria,razon_social","cliente", "id = "+cliente, 14);
        if(!lista.isEmpty()){
            request.getSession().setAttribute("cliente",lista);
        //int i = c.insercionRegistro(usu.getId_emp(),  "rh", "Modifica empleado");
            response.sendRedirect("Ventas/ModificarResultado.jsp");
        }else{
            //int i = c.insercionRegistro(usu.getId_emp(),  "rh", "Intento modificar empleado");
            request.getSession().setAttribute("motivo", "El cliente no existe");
            response.sendRedirect("Ventas/Error.jsp");
        }
        
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
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(ModificarCliente.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ModificarCliente.class.getName()).log(Level.SEVERE, null, ex);
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
