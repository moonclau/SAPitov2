package com.sap.rh.servlets;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Windows 10 Pro
 */
@WebServlet(urlPatterns = {"/EliminarNomina"})
public class EliminarNomina extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String nomina = request.getParameter("eliminarIdNomina");
            Conexion c = new Conexion();
            HttpSession sesion = request.getSession(true);
            ArrayList lista =  c.consulta("id", "nomina", "id = " + nomina, 1);
            if(!lista.isEmpty()){
                c.insertar("id_emp,area,des", "log", sesion.getAttribute("usuario")+",'"+sesion.getAttribute("area")+"','Eliminacion de la nomina "+nomina+"'");
                c.actualizar("situacion = 3", "nomina", "id = " + nomina);
                response.sendRedirect("RH/EliminarNomina.jsp");
            }else{
                c.insertar("id_emp,area,des", "log", sesion.getAttribute("usuario")+",'"+sesion.getAttribute("area")+"','Intento de eliminacion de la nomina "+nomina+"'");
                sesion.setAttribute("motivo", "La nómina no existe");
                response.sendRedirect("RH/Error.jsp");
            }
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
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EliminarNomina.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EliminarNomina.class.getName()).log(Level.SEVERE, null, ex);
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
