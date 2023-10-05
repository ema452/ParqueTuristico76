/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paqueteturismoequipo76.entidades;

/**
 *
 * @author Mati_ssd
 */
public class Paquete {
private int idPaquete;
private String cuidadOrigen;
private String cuidadDestino;
private Alojamiento alojamiento;
private Pasaje pasaje;

    public Paquete() {
    }

    public Paquete(String cuidadOrigen, String cuidadDestino, Alojamiento alojamiento, Pasaje pasaje) {
        this.cuidadOrigen = cuidadOrigen;
        this.cuidadDestino = cuidadDestino;
        this.alojamiento = alojamiento;
        this.pasaje = pasaje;
    }

    public Paquete(int idPaquete, String cuidadOrigen, String cuidadDestino, Alojamiento alojamiento, Pasaje pasaje) {
        this.idPaquete = idPaquete;
        this.cuidadOrigen = cuidadOrigen;
        this.cuidadDestino = cuidadDestino;
        this.alojamiento = alojamiento;
        this.pasaje = pasaje;
    }

    public int getIdPaquete() {
        return idPaquete;
    }

    public void setIdPaquete(int idPaquete) {
        this.idPaquete = idPaquete;
    }

    public String getCuidadOrigen() {
        return cuidadOrigen;
    }

    public void setCuidadOrigen(String cuidadOrigen) {
        this.cuidadOrigen = cuidadOrigen;
    }

    public String getCuidadDestino() {
        return cuidadDestino;
    }

    public void setCuidadDestino(String cuidadDestino) {
        this.cuidadDestino = cuidadDestino;
    }

    public Alojamiento getAlojamiento() {
        return alojamiento;
    }

    public void setAlojamiento(Alojamiento alojamiento) {
        this.alojamiento = alojamiento;
    }

    public Pasaje getPasaje() {
        return pasaje;
    }

    public void setPasaje(Pasaje pasaje) {
        this.pasaje = pasaje;
    }

    @Override
    public String toString() {
        return "Paquete{" + "idPaquete=" + idPaquete + ", cuidadOrigen=" + cuidadOrigen + ", cuidadDestino=" + cuidadDestino + ", alojamiento=" + alojamiento + ", pasaje=" + pasaje + '}';
    }

}
 