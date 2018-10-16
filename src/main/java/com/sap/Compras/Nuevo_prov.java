/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets.compras;

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
 * @author Erick
 */
@WebServlet(name = "Nuevo_prov", urlPatterns = {"/Nuevo_prov"})
public class Nuevo_prov extends HttpServlet {

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
        String rfc = request.getParameter("rfc");
        String social = request.getParameter("social");
        String dirprov = request.getParameter("dirprov");
        String numprov = request.getParameter("numprov");
        String corprov = request.getParameter("corrprov");
        String agr_est = request.getParameter("agr_est");
        String contagr = request.getParameter("contagr");
        String limtcredagr= request.getParameter("limtcredagr");
        String daycredagr=request.getParameter("daycredagr");
        String banco_agr = request.getParameter("banco_agr");
        String numcuagr= request.getParameter("numcuagr");
        String keycuentagr=request.getParameter("keycuentagr");
            
        c.insertar("rfc,ra_social,direccion,Telefono,correo,estado,cuenta,limitecredito,diascredito,banco,numcuenta,clavecuenta","Proveedor",
                "'"+rfc+"','"+social+"','"+ dirprov+"','"+numprov+"',"+corprov+","+agr_est+","+contagr+",'"+limtcredagr+"',"+daycredagr+","+ banco_agr+","+ numcuagr+","+ keycuentagr);
            
            response.sendRedirect("Compras/Nuevo_prod.jsp");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Nuevo_prov.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Nuevo_prov.class.getName()).log(Level.SEVERE, null, ex);
        }
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
            Logger.getLogger(Nuevo_prov.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Nuevo_prov.class.getName()).log(Level.SEVERE, null, ex);
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
