/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.pojo;

import com.sap.conexion.Conexion;
import com.sap.inventario.clases.Producto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Scanner;

/**
 *
 * @author claudia
 */
public class MetProducto {
    String clave;
    double cu;
    int bdCant;
    double dbCostu;
    double varCostventa;
    int cantTotal;
    int cant;
    double cuenta;
    double total;
    double r;
    Producto prod= new Producto();
    Conexion c;

    
    public double PromedioPonderado(String clave,double cu,int cant) throws ClassNotFoundException, SQLException{
        
   Scanner r=new Scanner(System.in);
//        clave=prod.getClave();
        cu=prod.getCostounitario();
        cant=prod.getCantidad();
        Connection conn;
        
            clave=r.next();
//         String reciboPalabraUsuario = palabrilla;
         Properties connProp = new Properties();
         connProp.put("user", "postgres");
         connProp.put("password", "root");
         conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
         String query = "select (cantidad,costounitario) from producto WHERE fecha = (select max(fecha) from producto) and clave="+"'"+clave+"'";
         PreparedStatement consulta = c.prepareStatement(query);
         consulta.setInt(1, bdCant);
         ResultSet resultado = consulta.executeQuery();
        while(clave.equals(bdCant)){
            System.err.println(bdCant);
    }
        
    return 0;}

    public void PomedioPonderado(String clave, String costounitario, String cantidad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
