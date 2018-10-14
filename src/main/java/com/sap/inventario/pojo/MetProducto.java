/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.pojo;

import com.sap.inventario.clases.Producto;

/**
 *
 * @author claudia
 */
public class MetProducto {
    String clave;
    double cu;
    int varCant;
    double varCostu;
    double varCostventa;
    int cantTotal;
    int cant;
    double cuenta;
    double total;
    double r;
    Producto prod= new Producto();
    
    public double PromedioPonderado(){
        clave=prod.getClave();
        cu=prod.getCostounitario();
        cant=prod.getCantidad();
        
    return 0;}
}
