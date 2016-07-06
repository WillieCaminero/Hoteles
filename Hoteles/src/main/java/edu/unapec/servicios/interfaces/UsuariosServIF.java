package edu.unapec.servicios.interfaces;

import edu.unapec.entidades.Login;
import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.respuestas.RespuestaLogin;
import java.util.List;

/**
 * Created by WillieManuel on 22/6/16.
 */
public interface UsuariosServIF {

    RespuestaLogin iniciarSesion(Login login);

    List<UsuariosEntity> obtenerUsuarios();

    boolean agregarUsuario(UsuariosEntity usuariosEntity);

    boolean EliminarUsuario(UsuariosEntity usuarioEntity);

    boolean AgregarUsuario(UsuariosEntity usuarioEntity);

    boolean ActualizarUsuario(UsuariosEntity usuarioEntity);
}
