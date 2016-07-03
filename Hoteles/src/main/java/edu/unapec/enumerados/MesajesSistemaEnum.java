package edu.unapec.enumerados;

/**
 * Created by WillieManuel on 3/7/16.
 */
public enum MesajesSistemaEnum {


    USUARIO_CLAVE_INCORRECTAS(1);

    private int idMensaje;

    MesajesSistemaEnum(int idMensaje){
        this.idMensaje = idMensaje;
    }

    public int obtenerIdMensaje(){
        return this.idMensaje;
    }

}
