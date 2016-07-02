package edu.unapec.repositorios.interfaces;

import edu.unapec.entidades.UsuariosEntity;

import java.util.List;

/**
 * Created by WillieManuel on 22/6/16.
 */
public interface UsuariosRepIF {

    List<UsuariosEntity> iniciarSesion(String usuario, String clave);

    List<UsuariosEntity> obtenerUsuarios();

    boolean agregarUsuario(UsuariosEntity usuariosEntity);

    boolean EliminarUsuario(UsuariosEntity usuarioEntity);

    boolean AgregarUsuario(UsuariosEntity usuarioEntity);

    boolean ActualizarUsuario(UsuariosEntity usuarioEntity);
}
