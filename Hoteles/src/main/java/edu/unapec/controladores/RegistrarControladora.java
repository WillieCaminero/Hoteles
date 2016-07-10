package edu.unapec.controladores;

import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.enumerados.EstadosEnum;
import edu.unapec.modelos.Login;
import edu.unapec.repositorios.interfaces.UsuariosRepIF;
import edu.unapec.respuestas.RespuestaGeneral;
import edu.unapec.respuestas.RespuestaLogin;
import edu.unapec.servicios.implementaciones.UsuariosServImpl;
import edu.unapec.servicios.interfaces.UsuariosServIF;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by WillieManuel on 6/7/16.
 */
@Controller
public class RegistrarControladora {

    @Autowired
    private ApplicationContext appContext;
    private final String _registrar = "WEB-INF/generales/registrar";

    @RequestMapping(value = "/registrar", method = RequestMethod.GET)
    public ModelAndView desplegarRegistrar(Model model){
        model.addAttribute("usuario", new UsuariosEntity());
        model.addAttribute("respuestaAgregarUsuario", new RespuestaGeneral());
        return new ModelAndView(_registrar);
    }

    @RequestMapping(value = "/registrar/agregar", method = RequestMethod.POST)
    public ModelAndView agregarUsuario(@ModelAttribute("usuario") UsuariosEntity usuario, Model model){

        UsuariosServIF usuariosServicio = appContext.getBean("usuariosServImpl", UsuariosServImpl.class);
        usuario.setEstado(EstadosEnum.ACTIVO.obtenerValor());
        RespuestaGeneral respuesta = usuariosServicio.agregarUsuario(usuario);
        model.addAttribute("respuestaAgregarUsuario", respuesta);
        return new ModelAndView(_registrar);
    }

}
