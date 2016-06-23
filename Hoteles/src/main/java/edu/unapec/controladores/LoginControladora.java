package edu.unapec.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by WillieManuel on 19/6/16.
 */
@Controller
public class LoginControladora {

    @RequestMapping(value = "/IniciarSesion", method = RequestMethod.GET)
    public String IniciarSesion(Model modelo){
        modelo.addAttribute("mensaje", "mensaje");
        return "/login.jsp";
    }
}
