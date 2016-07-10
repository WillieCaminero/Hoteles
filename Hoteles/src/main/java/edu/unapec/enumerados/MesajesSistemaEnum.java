package edu.unapec.enumerados;

/**
 * Created by WillieManuel on 3/7/16.
 */
public enum MesajesSistemaEnum {
    USUARIO_CLAVE_INCORRECTAS(1),
    USUARIO_NO_DISPONIBLE(2),
    CEDULA_NO_DISPONIBLE(3),
    CORREO_NO_DISPONIBLE(4),
    REGISTRO_EXITOSO(5),
    REGISTRO_FALLIDO(6);

    private int idMensaje;

    MesajesSistemaEnum(int idMensaje){
        this.idMensaje = idMensaje;
    }

    public int obtenerIdMensaje(){
        return this.idMensaje;
    }

}
