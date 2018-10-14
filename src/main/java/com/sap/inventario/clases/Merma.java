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
    String clavemerma;
    String clavep;
    int cantidad;
    String fecha;
    String descripcion;
    String tipoMerma;

    public String getClavemerma() {
        return clavemerma;
    }

    public String getTipoMerma() {
        return tipoMerma;
    }

    public void setTipoMerma(String tipoMerma) {
        this.tipoMerma = tipoMerma;
    }

    public void setClavemerma(String clavemerma) {
        this.clavemerma = clavemerma;
    }

    public String getClavep() {
        return clavep;
    }

    public void setClavep(String clavep) {
        this.clavep = clavep;
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

