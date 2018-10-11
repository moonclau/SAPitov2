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
       ResultSet rs = stmt.executeQuery("select m.clave,p.clave,p.nombre,p.tipo,\n" +
",pv.proveedor,p.cantidad,p.unidad,p.costou,\n" +
"m.fecha,m.descripcion\n" +
"from Merma m, producto p, Proveedor pv where p.id=m.producto and m.proveedor=pv.id;  ");
           while (rs.next()) {
                Merma im=new Merma();
                im.setClave(rs.getString("clave"));
                im.setClavep(rs.getString("claveproducto"));
                im.setNombrep(rs.getString("producto"));
                im.setClavepv(rs.getString("proveedor"));
                im.setCantidad(rs.getInt("cantidad"));
                im.setFecha(rs.getString("fecha")); 
                im.setDescripcion(rs.getString("descripcion"));   
                im.setTipom(rs.getString("merma"));  
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
       ResultSet rs = stmt.executeQuery("select m.clave,p.clave,p.nombre,p.tipo,\n" +
",pv.proveedor,p.cantidad,p.unidad,p.costou,\n" +
"m.fecha,m.descripcion\n" +
"from Merma m, producto p, Proveedor pv where p.id=m.producto and m.proveedor=pv.id;  ");
           while (rs.next()) {
                Inventario inv=new Inventario();
                inv.setClave(rs.getString("claveproducto"));
                inv.setNombre(rs.getString("producto"));
                inv.setTipo(rs.getString("grupo"));
                inv.setProveedor(rs.getString("proveedor"));
                inv.setCantidad(rs.getInt("cantidad"));
                inv.setUnidad(rs.getString("que es"));
                inv.setCostounitario(rs.getDouble("costo"));
                inv.setCostoventa(rs.getDouble("costo de venta"));
                inv.setIva(rs.getDouble("iva"));  
                inv.setFecha(rs.getString("fecha"));    
                l.add(inv);
            }                    
        conn.close();
        return l;
    }
    
}
