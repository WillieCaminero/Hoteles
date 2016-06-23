package edu.unapec.entidades;

import javax.persistence.*;

/**
 * Created by WillieManuel on 19/6/16.
 */
@Entity
@Table(name = "HABITACIONES", schema = "C##RESER_HOTEL", catalog = "")
public class HabitacionesEntity {
    private int id;
    private String tipo;
    private double precioPorNoche;
    private byte cantMaxPersonas;
    private byte estado;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "TIPO")
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Basic
    @Column(name = "PRECIO_POR_NOCHE")
    public double getPrecioPorNoche() {
        return precioPorNoche;
    }

    public void setPrecioPorNoche(double precioPorNoche) {
        this.precioPorNoche = precioPorNoche;
    }

    @Basic
    @Column(name = "CANT_MAX_PERSONAS")
    public byte getCantMaxPersonas() {
        return cantMaxPersonas;
    }

    public void setCantMaxPersonas(byte cantMaxPersonas) {
        this.cantMaxPersonas = cantMaxPersonas;
    }

    @Basic
    @Column(name = "ESTADO")
    public byte getEstado() {
        return estado;
    }

    public void setEstado(byte estado) {
        this.estado = estado;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        HabitacionesEntity that = (HabitacionesEntity) o;

        if (id != that.id) return false;
        if (Double.compare(that.precioPorNoche, precioPorNoche) != 0) return false;
        if (cantMaxPersonas != that.cantMaxPersonas) return false;
        if (estado != that.estado) return false;
        if (tipo != null ? !tipo.equals(that.tipo) : that.tipo != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (tipo != null ? tipo.hashCode() : 0);
        temp = Double.doubleToLongBits(precioPorNoche);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (int) cantMaxPersonas;
        result = 31 * result + (int) estado;
        return result;
    }
}
