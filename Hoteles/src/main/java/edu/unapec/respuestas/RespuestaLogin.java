package edu.unapec.respuestas;

/**
 * Created by WillieManuel on 1/7/16.
 */
public class RespuestaLogin {

    private boolean exitoso;
    private String mensaje;

    public boolean isExitoso() {
        return exitoso;
    }

    public void setExitoso(boolean exitoso) {
        this.exitoso = exitoso;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
