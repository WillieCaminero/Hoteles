package edu.unapec.controladores;

import edu.unapec.entidades.Login;
import edu.unapec.entidades.UsuariosEntity;
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

import java.util.List;

/**
 * Created by WillieManuel on 19/6/16.
 */
@Controller
public class LoginControladora {

    @Autowired
    private ApplicationContext appContext;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String inicio(Model model){
        model.addAttribute("login", new Login());
        RespuestaLogin respuestaLogin = new RespuestaLogin();
        respuestaLogin.setExitoso(true);
        model.addAttribute("respuestaLogin", respuestaLogin);
        return "/login";
    }

    @RequestMapping(value = "/IniciarSesion", method = RequestMethod.POST)
    public ModelAndView iniciarSesion(@ModelAttribute("login") Login login, Model model){

        UsuariosServIF usuariosServicio = appContext.getBean("usuariosServImpl", UsuariosServImpl.class);
        RespuestaLogin respuestaLogin = new RespuestaLogin();

        String usuario = login.getUsuario();
        String clave = login.getClave();

        respuestaLogin = usuariosServicio.iniciarSesion(usuario, clave);

        if (respuestaLogin.isExitoso()){
            return new ModelAndView("index");
        }

        model.addAttribute("respuestaLogin", respuestaLogin);
        return new ModelAndView("login");
    }

}
