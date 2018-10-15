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
//

/**
 *
 * @author claudia
 */
public class Consultas {
    public static LinkedList consultaProducto() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from producto");
        while (rs.next()) {
            Producto p=new Producto();
            p.setClave(rs.getString("clave"));
            p.setNombre(rs.getString("nombre"));
            p.setTipo(rs.getString("tipo"));
            p.setUnidad(rs.getString("unidad"));
            p.setCantidad(rs.getInt("existencia"));
            p.setCostounitario(rs.getDouble("costounitario"));
            p.setCostototal(rs.getDouble("costo"));
            p.setIva(rs.getDouble("iva"));
            p.setFecha(rs.getString("fecha"));
            p.setMontototal(rs.getDouble("monto_total"));
            l.add(p);
        }
        conn.close();
        return l;
    }  
    public static LinkedList consultaSalidas() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from producto where operacion='salida'");
        while (rs.next()) {
            Producto p=new Producto();
            p.setClave(rs.getString("clave"));
           p.setCostounitario(rs.getDouble("costounitario"));
            p.setCostototal(rs.getDouble("costo"));
            p.setIva(rs.getDouble("iva"));
            p.setFecha(rs.getString("fecha"));
            p.setMontototal(rs.getDouble("monto_total"));
            l.add(p);
        }
        conn.close();
        return l;
    }  
    public static LinkedList consultaEntradas() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from producto");
        while (rs.next()) {
            Producto p=new Producto();
            p.setClave(rs.getString("clave"));
            p.setNombre(rs.getString("nombre"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setCostounitario(rs.getDouble("costounitario"));
            p.setCostototal(rs.getDouble("costo"));
            p.setIva(rs.getDouble("iva"));
            p.setFecha(rs.getString("fecha"));
            p.setMontototal(rs.getDouble("monto_total"));
            l.add(p);
        }
        conn.close();
        return l;
    }
    public static LinkedList consultaMerma() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
         LinkedList <Merma> l=new LinkedList<Merma>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("select * from merma");
        while (rs.next()) {
            Merma p=new Merma();
            p.setClavemerma(rs.getString("clave_merma"));
            p.setClavep(rs.getString("producto"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setDescripcion(rs.getString("descripcion"));
            p.setFecha(rs.getString("fecha"));
            p.setTipoMerma(rs.getString("tipo_merma"));
            l.add(p);
        }
        conn.close();
        return l;
    
    }
    public static LinkedList consultaStock() throws SQLException,ClassNotFoundException{
       
        String clavevieja;
        int cantEx;
        int cantS;
        int cantE;
        int vstock;
       Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Stock> l=new LinkedList<Stock>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet res = stmt.executeQuery("select * from producto");
//        ResultSet rcl = stmt.executeQuery("select clave from producto");
//        ResultSet rex = stmt.executeQuery("select cantidad from producto where fecha=(select MAX(fecha) from producto)  and operacion='existente '");
//        ResultSet re = stmt.executeQuery("select cantidad from producto where fecha=(select MAX(fecha) from producto)  and operacion='entrada'");
//        ResultSet rs = stmt.executeQuery("select cantidad from producto where fecha=(select MAX(fecha) from producto)  and operacion='entrada'");
        
        
        while(res.next()){
//            clave=res.getString("clave");
//            do{
                
//        cantEx=rex.getInt("cantidad");
//        cantE=re.getInt("cantidad");
//        cantS=rs.getInt("cantidad");
//        vstock=(cantEx+cantE)-cantS;
        Stock p=new Stock();
            p.setClave(res.getString("clave"));
//            p.setCantidadExistente(rex.getInt("cantidad"));
//            p.setCantidadEntrada(re.getInt("cantidad"));
//            p.setCantidadSalida(rs.getInt("cantidad"));
//            p.setStock(vstock);
            l.add(p);
//            clavevieja=clave;
//            }while(!clave.equals(clavevieja));
        }
        
        conn.close();
        return l;
    }
}