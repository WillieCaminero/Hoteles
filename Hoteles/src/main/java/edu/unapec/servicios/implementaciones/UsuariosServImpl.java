package edu.unapec.servicios.implementaciones;

import edu.unapec.entidades.Login;
import edu.unapec.entidades.MensajesSistemaEntity;
import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.enumerados.MesajesSistemaEnum;
import edu.unapec.repositorios.interfaces.MensajesSistemaRepIF;
import edu.unapec.repositorios.interfaces.UsuariosRepIF;
import edu.unapec.respuestas.RespuestaLogin;
import edu.unapec.servicios.interfaces.UsuariosServIF;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WillieManuel on 22/6/16.
 */
@Service("usuariosServImpl")
public class UsuariosServImpl implements UsuariosServIF {

    private UsuariosRepIF usuarioRep;
    private MensajesSistemaRepIF mensajesRep;

    public UsuariosServImpl(){}

    @Override
    public RespuestaLogin iniciarSesion(Login login) {

        RespuestaLogin respuestaLogin = new RespuestaLogin();
        MensajesSistemaEntity mensajesSistema = new MensajesSistemaEntity();
        List<UsuariosEntity> listaUsuarios = usuarioRep.iniciarSesion(login);

        //Validando si el usuario es correcto o incorrecto
        if(listaUsuarios.size() == 0){
            mensajesSistema.setId(MesajesSistemaEnum.USUARIO_CLAVE_INCORRECTAS.obtenerIdMensaje());
            List<MensajesSistemaEntity> mensajes = mensajesRep.obtenerMensajeSistema(mensajesSistema);
            respuestaLogin.setExitoso(false);
            respuestaLogin.setMensaje(mensajes.get(0).getDescripcion());
        }else {
            respuestaLogin.setExitoso(true);
        }
        return respuestaLogin;
    }

    @Override
    public List<UsuariosEntity> obtenerUsuarios() {
        return usuarioRep.obtenerUsuarios();
    }

    @Override
    public boolean agregarUsuario(UsuariosEntity usuariosEntity) {
        return usuarioRep.agregarUsuario(usuariosEntity);
    }

    @Override
    public boolean EliminarUsuario(UsuariosEntity usuarioEntity) {
        return false;
    }

    @Override
    public boolean AgregarUsuario(UsuariosEntity usuarioEntity) {
        return false;
    }

    @Override
    public boolean ActualizarUsuario(UsuariosEntity usuarioEntity) {
        return false;
    }

    @Autowired
    public void setUsuarioRep(UsuariosRepIF usuariosRepImpl) {
        this.usuarioRep = usuariosRepImpl;
    }

    @Autowired
    public void setMensajesRep(MensajesSistemaRepIF mensajesSistemaRepImpl) {
        this.mensajesRep = mensajesSistemaRepImpl;
    }

}
