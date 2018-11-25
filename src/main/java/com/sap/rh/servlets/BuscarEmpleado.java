package com.sap.rh.servlets;

import com.sap.conexion.Conexion;
import java.io.IOException;
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
@WebServlet(urlPatterns = {"/BuscarEmpleado"})
public class BuscarEmpleado extends HttpServlet {

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
        HttpSession sesion = request.getSession(true);
        String empleado = request.getParameter("buscarIdEmpleado");
        String area = request.getParameter("buscarAreaEmpleado");
        Conexion c = new Conexion();
        ArrayList lista;
        if(!area.isEmpty() && !empleado.isEmpty()){
            lista = c.consulta("id,nombre,primer_apellido,segundo_apellido,nacionalidad,curp,rfc,edad,lugar_nacimiento,direccion,telefono,"
                    + "area,puesto,horario,actividad,sueldo,cuenta,status","empleado", "id = "+empleado+" and area = "+area, 18);
        }else{
            if(!area.isEmpty() && empleado.isEmpty()){
                lista = c.consulta("id,nombre,primer_apellido,segundo_apellido,nacionalidad,curp,rfc,edad,lugar_nacimiento,direccion,telefono,"
                    + "area,puesto,horario,actividad,sueldo,cuenta,status", "empleado", "area = "+area, 18);
            }else{
                if(area.isEmpty() && !empleado.isEmpty()){
                    lista = c.consulta("id,nombre,primer_apellido,segundo_apellido,nacionalidad,curp,rfc,edad,lugar_nacimiento,direccion,telefono,"
                    + "area,puesto,horario,actividad,sueldo,cuenta,status", "empleado", "id = "+empleado, 18);
                }else{
                    lista = c.consulta("id,nombre,primer_apellido,segundo_apellido,nacionalidad,curp,rfc,edad,lugar_nacimiento,direccion,telefono,"
                    + "area,puesto,horario,actividad,sueldo,cuenta,status", "empleado", "id is not null", 18);
                }
            }
        }
        c.insertar("id_emp,area,des", "log", sesion.getAttribute("usuario")+",'"+sesion.getAttribute("area")+"','Consulta de empleado(s)'");
        sesion.setAttribute("empleados", lista);
        response.sendRedirect("RH/BuscarResultado.jsp");
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
            Logger.getLogger(BuscarEmpleado.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(BuscarEmpleado.class.getName()).log(Level.SEVERE, null, ex);
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
