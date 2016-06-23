package edu.unapec.entidades;

import javax.persistence.*;

/**
 * Created by WillieManuel on 19/6/16.
 */
@Entity
@Table(name = "ROLES", schema = "C##RESER_HOTEL", catalog = "")
public class RolesEntity {
    private int id;
    private Integer idTipoRol;

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
    @Column(name = "ID_TIPO_ROL")
    public Integer getIdTipoRol() {
        return idTipoRol;
    }

    public void setIdTipoRol(Integer idTipoRol) {
        this.idTipoRol = idTipoRol;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RolesEntity that = (RolesEntity) o;

        if (id != that.id) return false;
        if (idTipoRol != null ? !idTipoRol.equals(that.idTipoRol) : that.idTipoRol != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (idTipoRol != null ? idTipoRol.hashCode() : 0);
        return result;
    }
}
