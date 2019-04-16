/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.venta.ws;

import com.sap.conexion.Conexion;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
@WebService(serviceName = "ventaService")
public class ventaService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "insertVenta")
    public String insertVenta(@WebParam(name = "fecha") String fecha, @WebParam(name = "direccion") 
            String direccion, @WebParam(name = "cantidad") String cantidad, @WebParam(name = "descripcion_venta") 
            String descripcion_venta, @WebParam(name = "idcliente") int id_cliente, @WebParam(name = "idproducto") 
            int id_producto) throws ClassNotFoundException, SQLException {
        Conexion c = new Conexion();
        String campos="fecha,direccion,cantidad,descripcion_venta,vendedor,precio_unitario,"
                + "precio_total,idcliente,idproducto";
        
         c.insertar(campos,"orden_de_venta",
         "'"+fecha+"','"+direccion+"',"+cantidad+",'"+descripcion_venta+"','default','default','default',"+id_cliente+","+id_producto+"");
       
        String resultado="Compra exitosa, muchas gracias :)";
        
        return resultado;
    }
}
