/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import com.sap.conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
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
@WebServlet(name = "AgregarSalidas", urlPatterns = {"/AgregarSalidas"})
public class AgregarSalidas extends HttpServlet {

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
        String clave = request.getParameter("clave");
        String nombre = request.getParameter("nombre");
        String tipo = request.getParameter("tipo");
        String unidad = request.getParameter("unidad");
        String cantidad = request.getParameter("cantidad");
        String costounitario = request.getParameter("costo");
        String iva = request.getParameter("iva");
        String fecha= request.getParameter("fecha");
        String costov=request.getParameter("costov");
        double vcosto=Double.parseDouble(costounitario);
        double viva=Double.parseDouble(iva);
        double monto=(vcosto*viva)+vcosto;
//        String verificarClave;
//         Connection conn;
//        Class.forName("org.postgresql.Driver");
//         Properties connProp = new Properties();
//        connProp.put("user", "postgres");
//        connProp.put("password", "root");
//        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
//        Statement stmt;        
//        stmt = conn.createStatement();
//        ResultSet rs = stmt.executeQuery("select clave from producto where operacion='salida'");
//        verificarClave=rs.getString("clave");
//        if( verificarClave.equals(clave)==false){
             c.insertar("clave,nombre,tipo,unidad,costounitario,iva,fecha,costo,monto_total,existencia,operacion", "producto",
                    "'"+clave+"',"
                       + "'"+nombre+"','"+tipo+"','"+unidad+"',"+costounitario+","+iva+",'"+fecha+"',"+costov+","+monto+","+cantidad+",'salida'");
    
           
//        }else{
//         c.actualizar("fecha='"+fecha+"',existencia=existencia-"+cantidad
//                , "producto"
//                , "clave='"+clave+"' and operacion='salida'");
//           }
         c.actualizar("existencia=existencia-"+cantidad
                , "producto"
                , "clave='"+clave+"' and operacion='entrada'");
//        c.insertar("clave,nombre,existencia,costounitario, iva,costo,monto_total, fecha,operacion","producto",
//                "'"+eclave+"',"
//                       + "'"+enombre+"',"
//                       + ""+eexistencia+","
//                       + ""+ecostounitario+","
//                       + ""+eiva+","
//                       + ""+ecostototal+","
//                       + ""+emontototal+","
//                       + "'"+efecha+"','salida'"
//                       );
//        
         response.sendRedirect("Inventario/InventarioIngresarSalidas.jsp");
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
            Logger.getLogger(AgregarSalidas.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AgregarSalidas.class.getName()).log(Level.SEVERE, null, ex);
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
