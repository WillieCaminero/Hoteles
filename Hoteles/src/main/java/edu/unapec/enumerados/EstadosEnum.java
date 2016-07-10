package edu.unapec.enumerados;

/**
 * Created by WillieManuel on 6/7/16.
 */
public enum EstadosEnum {

    ACTIVO(1),
    INACTIVO(0);

    private int estado;

    EstadosEnum(int estado){
        this.estado = estado;
    }

    public int obtenerValor(){
        return this.estado;
    }
}
