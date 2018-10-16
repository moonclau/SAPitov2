/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.pojo;

import com.sap.conexion.Conexion;
import com.sap.contabilidad.clases.Calen_Contable;
import com.sap.inventario.clases.Stock;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Properties;
import java.util.Scanner;

/**
 *
 * @author claudia
 */
public class MetProducto {

    
    public MetProducto()  {
        
    }
        public static LinkedList consultaSalidas() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Calen_Contable> l=new LinkedList<Calen_Contable>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select o.cantidad,p.existencia from producto as p,orden_de_venta as o ;");
        conn.close();
        return l;
    }    
    
    
    
    
    
}
