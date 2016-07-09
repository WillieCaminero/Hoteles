package edu.unapec.repositorios.interfaces;

import edu.unapec.modelos.Login;
import edu.unapec.entidades.UsuariosEntity;
import java.util.List;

/**
 * Created by WillieManuel on 22/6/16.
 */
public interface UsuariosRepIF {

    List<UsuariosEntity> iniciarSesion(Login login);

    List<UsuariosEntity> obtenerUsuarios();

    List<UsuariosEntity> verificarUsuarioDisponible(UsuariosEntity usuariosEntity);

    List<UsuariosEntity> verificarCedulaDisponible(UsuariosEntity usuariosEntity);

    List<UsuariosEntity> verificarCorreoDisponible(UsuariosEntity usuariosEntity);

    boolean agregarUsuario(UsuariosEntity usuariosEntity);

    boolean EliminarUsuario(UsuariosEntity usuarioEntity);

    boolean AgregarUsuario(UsuariosEntity usuarioEntity);

    boolean ActualizarUsuario(UsuariosEntity usuarioEntity);
}
