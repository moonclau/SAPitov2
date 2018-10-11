/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.clases;

/**
 *
 * @author claudia
 */
public class Merma {
    String clave;
    String clavep;
    String nombrep;
    String clavepv;
    int cantidad;
    String fecha;
    String descripcion;

    public String getClavepv() {
        return clavepv;
    }

    public void setClavepv(String clavepv) {
        this.clavepv = clavepv;
    }
    String tipom;

    public String getTipom() {
        return tipom;
    }

    public void setTipom(String tipom) {
        this.tipom = tipom;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getClavep() {
        return clavep;
    }

    public void setClavep(String clavep) {
        this.clavep = clavep;
    }

    public String getNombrep() {
        return nombrep;
    }

    public void setNombrep(String nombrep) {
        this.nombrep = nombrep;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    
}
