package edu.unapec.controladores;

import edu.unapec.modelos.Login;
import edu.unapec.respuestas.RespuestaLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by WillieManuel on 6/7/16.
 */
@Controller
public class InicioControladora {

    @Autowired
    private ApplicationContext appContext;
    private final String _principal = "WEB-INF/generales/principal";
    private final String _bienvenida= "/WEB-INF/generales/index";
    private final String _actividades= "/WEB-INF/generales/actividades";

    @RequestMapping(value = "/principal", method = RequestMethod.GET)
    public ModelAndView desplegarPrincipal(Model model){
        return new ModelAndView(_principal);
    }

    @RequestMapping(value = "/bienvenida", method = RequestMethod.GET)
    public ModelAndView desplegarBienvenida(Model model){
        model.addAttribute("login", new Login());
        RespuestaLogin respuestaLogin = new RespuestaLogin();
        respuestaLogin.setExitoso(true);
        model.addAttribute("respuestaLogin", respuestaLogin);
        return new ModelAndView(_bienvenida);
    }

    @RequestMapping(value = "/actividades", method = RequestMethod.GET)
    public ModelAndView desplegarActividades(Model model){
        return new ModelAndView(_actividades);
    }
}
