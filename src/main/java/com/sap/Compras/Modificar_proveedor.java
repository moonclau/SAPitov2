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
 * @author Marii
 */
@WebServlet(name = "Modificar_proveedor", urlPatterns = {"/Modificar_proveedor"})
public class Modificar_proveedor extends HttpServlet {

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
        
        String clave_prov= request.getParameter("clave_prov");
        String rfc_prov = request.getParameter("rfc_prov");
        String razo_prov = request.getParameter("razo_prov");
        String dir_prov = request.getParameter("dir_prov");
        String tel_prov = request.getParameter("tel_prov");
        String correo_prov = request.getParameter("correo_prov");
        String agr_est = request.getParameter("agr_est");
        String cuent_cont = request.getParameter("cuent_cont");
        String lim_cred = request.getParameter("lim_cred");
        String dias_cred = request.getParameter("dias_cred");
        String agr_bnco = request.getParameter("agr_bnco");
        String num_cuenta = request.getParameter("num_cuenta");
        String clave_cuenta = request.getParameter("clave_cuenta");
        
        Conexion c = new Conexion();
        
        c.actualizar("'"+razo_prov+"','"+rfc_prov+"','"+dir_prov+"','"+agr_est+"',"+tel_prov+",'"+correo_prov
                +"',"+cuent_cont+","+num_cuenta+",'"+agr_bnco+"',"+dias_cred+","+lim_cred, "Proveedor", "clave= "+clave_prov);
        
        response.sendRedirect("Compras/Edit_prod.jsp");

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
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
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

