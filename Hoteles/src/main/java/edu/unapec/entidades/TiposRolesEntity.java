package edu.unapec.entidades;

import javax.persistence.*;

/**
 * Created by WillieManuel on 19/6/16.
 */
@Entity
@Table(name = "TIPOS_ROLES", schema = "C##RESER_HOTEL", catalog = "")
public class TiposRolesEntity {
    private int id;
    private String descripcion;
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
    @Column(name = "DESCRIPCION")
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
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

        TiposRolesEntity that = (TiposRolesEntity) o;

        if (id != that.id) return false;
        if (estado != that.estado) return false;
        if (descripcion != null ? !descripcion.equals(that.descripcion) : that.descripcion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (descripcion != null ? descripcion.hashCode() : 0);
        result = 31 * result + (int) estado;
        return result;
    }
}
