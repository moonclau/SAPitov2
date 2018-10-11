/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 *
 * @author claudia
 */
import com.sap.conexion.Conexion;
import com.sap.gerencia.clases.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AgregarMerma", urlPatterns = {"/AgregarMerma"})

public class AgregarMerma extends HttpServlet{
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String mclave = request.getParameter("mcl");
        String mproducto = request.getParameter("mipr");
        String mcantidad = request.getParameter("mc");
        String mdescripcion = request.getParameter("md");
        String mfecha = request.getParameter("mf");
        String mproveedor = request.getParameter("mip");
        String mtipo = request.getParameter("mt");
        Conexion c = new Conexion();
        usuario usu = new usuario();
 
        c.insertar("MERMA", "clave_merma,"
                + "produto,"
                + "cantidad,"
                + "descripcion,"
                + "fecha,"
                + "proveedor,"
                + "tipo_merma",
                "'" + mclave
                + "'," + mproducto
                + "," + mcantidad
                + ",'" + mdescripcion
                + "','" + mfecha
                + "'," + mproveedor
                + ",'" + mtipo + "'"
        );

        response.sendRedirect("Inventario/InventarioMermaAgregar.jsp");
    }
    
}
