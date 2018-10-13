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
public class Consultas {
    public static LinkedList consultasmerma() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Merma> l=new LinkedList<Merma>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
       ResultSet rs = stmt.executeQuery("select *from merprod");
           while (rs.next()) {
                Merma im=new Merma();
                im.setClavemerma(rs.getString("clave merma"));
                im.setClavep(rs.getString("Clave producto"));
                im.setNombrep(rs.getString("Nombre productp"));
                im.setTipop(rs.getString("Tipo producto"));
                im.setCantidad(rs.getInt("Cantidad"));
                im.setUnidad("Unidad");
                im.setCostounit(rs.getInt("Costo unitario"));
                im.setFecha(rs.getString("Fecha"));
                im.setDescripcion(rs.getString("descripcion"));
                l.add(im);
            }                    
        conn.close();
        return l;
    }
    public static LinkedList consultasinventariogenerales() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Inventario> l=new LinkedList<Inventario>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
       ResultSet rs = stmt.executeQuery("select * from merprod");
           while (rs.next()) {
                Inventario inv=new Inventario();
                 inv.setClavemerma(rs.getString("clave merma"));
                inv.setClavep(rs.getString("Clave producto"));
                inv.setNombrep(rs.getString("Nombre productp"));
                inv.setTipop(rs.getString("Tipo producto"));
                inv.setCantidad(rs.getInt("Cantidad"));
                inv.setUnidad("Unidad");
                inv.setCostounit(rs.getInt("Costo unitario"));
                inv.setFecha(rs.getString("Fecha"));
                inv.setDescripcion(rs.getString("descripcion"));
 
                l.add(inv);
            }                    
        conn.close();
        return l;
    }
    
}
