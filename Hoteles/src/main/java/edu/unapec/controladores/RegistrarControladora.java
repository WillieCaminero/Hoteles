package edu.unapec.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    private String _registrar = "WEB-INF/generales/registrar";

    @RequestMapping(value = "/registrar", method = RequestMethod.GET)
    public ModelAndView desplegarRegistrar(Model model){
        return new ModelAndView(_registrar);
    }

}
