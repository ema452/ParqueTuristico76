/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paqueteturismoequipo76.entidades;

import java.time.LocalDate;

/**
 *
 * @author Mati_ssd
 */
public class Alojamiento {
    private int idAlojamiento;
    private LocalDate fichain;
    private LocalDate fachaOn;
    private boolean estado;
    private String servicio;
    private double importeDiario;
    private Ciudad cuidadDest;

    public Alojamiento() {
    }

    public Alojamiento(LocalDate fichain, LocalDate fachaOn, boolean estado, String servicio, double importeDiario, Ciudad cuidadDest) {
        this.fichain = fichain;
        this.fachaOn = fachaOn;
        this.estado = estado;
        this.servicio = servicio;
        this.importeDiario = importeDiario;
        this.cuidadDest = cuidadDest;
    }

    public Alojamiento(int idAlojamiento, LocalDate fichain, LocalDate fachaOn, boolean estado, String servicio, double importeDiario, Ciudad cuidadDest) {
        this.idAlojamiento = idAlojamiento;
        this.fichain = fichain;
        this.fachaOn = fachaOn;
        this.estado = estado;
        this.servicio = servicio;
        this.importeDiario = importeDiario;
        this.cuidadDest = cuidadDest;
    }

    public int getIdAlojamiento() {
        return idAlojamiento;
    }

    public void setIdAlojamiento(int idAlojamiento) {
        this.idAlojamiento = idAlojamiento;
    }

    public LocalDate getFichain() {
        return fichain;
    }

    public void setFichain(LocalDate fichain) {
        this.fichain = fichain;
    }

    public LocalDate getFachaOn() {
        return fachaOn;
    }

    public void setFachaOn(LocalDate fachaOn) {
        this.fachaOn = fachaOn;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public double getImporteDiario() {
        return importeDiario;
    }

    public void setImporteDiario(double importeDiario) {
        this.importeDiario = importeDiario;
    }

    public Ciudad getCuidadDest() {
        return cuidadDest;
    }

    public void setCuidadDest(Ciudad cuidadDest) {
        this.cuidadDest = cuidadDest;
    }

    @Override
    public String toString() {
        return "Alojamiento{" + "idAlojamiento=" + idAlojamiento + ", fichain=" + fichain + ", fachaOn=" + fachaOn + ", estado=" + estado + ", servicio=" + servicio + ", importeDiario=" + importeDiario + ", cuidadDest=" + cuidadDest + '}';
    }
    
}
