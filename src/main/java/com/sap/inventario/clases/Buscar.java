/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Properties;

/**
 *
 * @author claudia
 */
public class Buscar {

    String pedido;
    public Buscar() {
        
//        inventario.CantidadESalidas(idpov);
    }
    
    public int CantidadESalidas(String idpedido){
        pedido=idpedido;
        return 1;
}
    
//    public int pedido;
//    public static LinkedList consultaStock() throws SQLException,ClassNotFoundException{
//        Connection conn;
//        Class.forName("org.postgresql.Driver");
//        LinkedList <Producto> l=new LinkedList<Producto>();
//        Properties connProp = new Properties();
//        connProp.put("user", "postgres");
//        connProp.put("password", "root");
//        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
//        Statement stmt;        
//        stmt = conn.createStatement();
//        ResultSet rs = stmt.executeQuery("select cantidad from producto where fecha=(select MAX(fecha) from producto)  and operacion=Existente");
//        while (rs.next()) {
//            Producto p=new Producto();
//        }
//        return l;
//    }
}
