package edu.unapec.entidades;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by WillieManuel on 19/6/16.
 */
@Entity
@Table(name = "RESERVACIONES", schema = "C##RESER_HOTEL", catalog = "")
public class ReservacionesEntity {
    private int id;
    private Date fechaDesde;
    private Date fechaHasta;
    private double montoEstadia;

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
    @Column(name = "FECHA_DESDE")
    public Date getFechaDesde() {
        return fechaDesde;
    }

    public void setFechaDesde(Date fechaDesde) {
        this.fechaDesde = fechaDesde;
    }

    @Column(name="FECHA_HASTA", columnDefinition="DATE")
    public Date getFechaHasta() {
        return fechaHasta;
    }

    public void setFechaHasta(Date fechaHasta) {
        this.fechaHasta = fechaHasta;
    }

    @Column(name="MONTO_ESTADIA", columnDefinition="DATE")
    public double getMontoEstadia() {
        return montoEstadia;
    }

    public void setMontoEstadia(double montoEstadia) {
        this.montoEstadia = montoEstadia;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ReservacionesEntity that = (ReservacionesEntity) o;

        if (id != that.id) return false;
        if (Double.compare(that.montoEstadia, montoEstadia) != 0) return false;
        if (fechaDesde != null ? !fechaDesde.equals(that.fechaDesde) : that.fechaDesde != null) return false;
        if (fechaHasta != null ? !fechaHasta.equals(that.fechaHasta) : that.fechaHasta != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (fechaDesde != null ? fechaDesde.hashCode() : 0);
        result = 31 * result + (fechaHasta != null ? fechaHasta.hashCode() : 0);
        temp = Double.doubleToLongBits(montoEstadia);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
