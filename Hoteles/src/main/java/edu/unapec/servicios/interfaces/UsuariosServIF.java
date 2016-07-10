package edu.unapec.servicios.interfaces;

import edu.unapec.modelos.Login;
import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.respuestas.RespuestaGeneral;
import edu.unapec.respuestas.RespuestaLogin;
import java.util.List;

/**
 * Created by WillieManuel on 22/6/16.
 */
public interface UsuariosServIF {

    RespuestaLogin iniciarSesion(Login login);

    List<UsuariosEntity> obtenerUsuarios();

    boolean verificarUsuarioDisponible(UsuariosEntity usuariosEntity);

    boolean verificarCedulaDisponible(UsuariosEntity usuariosEntity);

    boolean verificarCorreoDisponible(UsuariosEntity usuariosEntity);

    RespuestaGeneral agregarUsuario(UsuariosEntity usuariosEntity);

    boolean EliminarUsuario(UsuariosEntity usuarioEntity);

    boolean ActualizarUsuario(UsuariosEntity usuarioEntity);
}
