package com.sap.rh.servlets;

import com.sap.conexion.Conexion;
import java.io.IOException;
import java.sql.SQLException;
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
@WebServlet(urlPatterns = {"/ContratarEmpleado"})
public class ContratarEmpleado extends HttpServlet {

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
        String curp = request.getParameter("curpContratarEmp");
        String rfc = request.getParameter("rfcContratarEmp");
        String nombre = request.getParameter("nombreContratarEmp");
        String area = request.getParameter("areaContratarEmp");
        String paterno = request.getParameter("paternoContratarEmp");
        String puesto = request.getParameter("puestoContratarEmp");
        String materno = request.getParameter("maternoContratarEmp");
        String tel = request.getParameter("telContratarEmp");
        String edad = request.getParameter("edadContratarEmp");
        String horario = request.getParameter("horarioContratarEmp");
        String lugar = request.getParameter("lugarContratarEmp");
        String activ = request.getParameter("activContratarEmp");
        String dir = request.getParameter("dirContratarEmp");
        String sueldo = request.getParameter("sueldoContratarEmp");
        String nac = request.getParameter("nacContratarEmp");
        String cuenta = request.getParameter("cuentaContratarEmp");
        Conexion c = new Conexion();
        HttpSession sesion = request.getSession(true);
        c.insertar("nombre,primer_apellido,segundo_apellido,nacionalidad,curp,rfc,edad,lugar_nacimiento,direccion,telefono,area,"
                + "puesto,horario,actividad,sueldo,cuenta,status,contrasena", "empleado",
                "'"+nombre+"','"+paterno+"','"+materno+"','"+nac+"','"+curp+"','"+rfc+"',"+edad+",'"+lugar+"','"+dir+"','"+tel+"',"+area
                        +","+puesto+",'"+horario+"','"+activ+"',"+sueldo+",'"+cuenta+"','Activo','sap123'");
        c.insertar("id_emp,area,des", "log", sesion.getAttribute("usuario")+",'"+sesion.getAttribute("area")+"','Contratacion de empleado'");
        response.sendRedirect("RH/ContratarEmpleado.jsp");
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
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ContratarEmpleado.class.getName()).log(Level.SEVERE, null, ex);
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
