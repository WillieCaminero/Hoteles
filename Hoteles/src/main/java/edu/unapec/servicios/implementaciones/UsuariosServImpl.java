package edu.unapec.servicios.implementaciones;

import edu.unapec.modelos.Login;
import edu.unapec.entidades.MensajesSistemaEntity;
import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.enumerados.MesajesSistemaEnum;
import edu.unapec.repositorios.interfaces.MensajesSistemaRepIF;
import edu.unapec.repositorios.interfaces.UsuariosRepIF;
import edu.unapec.respuestas.RespuestaGeneral;
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
    public boolean verificarUsuarioDisponible(UsuariosEntity usuariosEntity){
        List<UsuariosEntity> listaUsuarios = usuarioRep.verificarUsuarioDisponible(usuariosEntity);
        return listaUsuarios.size() == 0 ? true : false;
    }

    @Override
    public boolean verificarCedulaDisponible(UsuariosEntity usuariosEntity){
        List<UsuariosEntity> listaUsuarios = usuarioRep.verificarCedulaDisponible(usuariosEntity);
        return listaUsuarios.size() == 0 ? true : false;
    }

    @Override
    public boolean verificarCorreoDisponible(UsuariosEntity usuariosEntity){
        List<UsuariosEntity> listaUsuarios = usuarioRep.verificarCorreoDisponible(usuariosEntity);
        return listaUsuarios.size() == 0 ? true : false;
    }

    @Override
    public RespuestaGeneral agregarUsuario(UsuariosEntity usuariosEntity) {

        RespuestaGeneral respuesta = new RespuestaGeneral();
        MensajesSistemaEntity mensajesSistema = new MensajesSistemaEntity();

        if(!verificarUsuarioDisponible(usuariosEntity)){
            mensajesSistema.setId(MesajesSistemaEnum.USUARIO_NO_DISPONIBLE.obtenerIdMensaje());
            List<MensajesSistemaEntity> mensajes = mensajesRep.obtenerMensajeSistema(mensajesSistema);
            respuesta.setMensaje(mensajes.get(0).getDescripcion());
            return respuesta;
        }
        else if(!verificarCedulaDisponible(usuariosEntity)){
            mensajesSistema.setId(MesajesSistemaEnum.CEDULA_NO_DISPONIBLE.obtenerIdMensaje());
            List<MensajesSistemaEntity> mensajes = mensajesRep.obtenerMensajeSistema(mensajesSistema);
            respuesta.setMensaje(mensajes.get(0).getDescripcion());
            return respuesta;
        }
        else if(!verificarCorreoDisponible(usuariosEntity)) {
            mensajesSistema.setId(MesajesSistemaEnum.CORREO_NO_DISPONIBLE.obtenerIdMensaje());
            List<MensajesSistemaEntity> mensajes = mensajesRep.obtenerMensajeSistema(mensajesSistema);
            respuesta.setMensaje(mensajes.get(0).getDescripcion());
            return respuesta;
        }

        if(usuarioRep.agregarUsuario(usuariosEntity)){
            mensajesSistema.setId(MesajesSistemaEnum.REGISTRO_EXITOSO.obtenerIdMensaje());
            List<MensajesSistemaEntity> mensajes = mensajesRep.obtenerMensajeSistema(mensajesSistema);
            respuesta.setMensaje(mensajes.get(0).getDescripcion());
            return respuesta;
        }else{
            mensajesSistema.setId(MesajesSistemaEnum.REGISTRO_FALLIDO.obtenerIdMensaje());
            List<MensajesSistemaEntity> mensajes = mensajesRep.obtenerMensajeSistema(mensajesSistema);
            respuesta.setMensaje(mensajes.get(0).getDescripcion());
            return respuesta;
        }
    }

    @Override
    public boolean EliminarUsuario(UsuariosEntity usuarioEntity) {
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
