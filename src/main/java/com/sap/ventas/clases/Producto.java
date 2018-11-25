/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.ventas.clases;

/**
 *
 * @author asus
 */
public class Producto {
    
    int idproducto;
    String clave;
    String nombre;
    double costounitario;
    String unidad;
    String tipo;
    int cantidad;
    double iva;
    double costototal;
    String fecha;
    String operacion;
    double montototal;
    int cantidaddoble;

    public double getCostounitario() {
        return costounitario;
    }

    public void setCostounitario(double costounitario) {
        this.costounitario = costounitario;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getIva() {
        return iva;
    }

    public void setIva(double iva) {
        this.iva = iva;
    }

    public double getCostototal() {
        return costototal;
    }

    public void setCostototal(double costototal) {
        this.costototal = costototal;
    }

    public double getMontototal() {
        return montototal;
    }

    public void setMontototal(double montototal) {
        this.montototal = montototal;
    }

    public int getCantidaddoble() {
        return cantidaddoble;
    }

    public void setCantidaddoble(int cantidaddoble) {
        this.cantidaddoble = cantidaddoble;
    }
    
    public int getIdproducto() {
        return idproducto;
    }

    public String getClave() {
        return clave;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public String getUnidad() {
        return unidad;
    }

    
    public String getFecha() {
        return fecha;
    }

    public String getOperacion() {
        return operacion;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    public void setOperacion(String operacion) {
        this.operacion = operacion;
    }

   
}
