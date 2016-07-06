package edu.unapec.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by WillieManuel on 6/7/16.
 */
@Controller
public class InicioControladora {

    private String _principal = "WEB-INF/generales/principal";

    @RequestMapping(value = "/principal", method = RequestMethod.GET)
    public ModelAndView desplegarPrincipal(Model model){
        return new ModelAndView(_principal);
    }

}
