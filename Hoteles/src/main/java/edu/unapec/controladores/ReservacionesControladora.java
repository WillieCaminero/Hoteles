package edu.unapec.controladores;

import edu.unapec.entidades.ReservacionesEntity;
import edu.unapec.servicios.implementaciones.ReservacionesServImpl;
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
public class ReservacionesControladora {

    @Autowired
    private ApplicationContext appContext;
    private final String _reservaciones = "WEB-INF/reservaciones/reservaciones";
    private final String _agregarReservacio = "WEB-INF/reservaciones/agregar_reservaciones";

    @RequestMapping(value = "/reservaciones", method = RequestMethod.GET)
    public ModelAndView desplegarReservaciones(Model model){
        ReservacionesServImpl ReservacionesServicio = appContext.getBean("reservacionesServImpl", ReservacionesServImpl.class);
        List<ReservacionesEntity> reservaciones = ReservacionesServicio.obtenerReservaciones();
        model.addAttribute("reservaciones", reservaciones);
        return new ModelAndView(_reservaciones);
    }

    @RequestMapping(value = "/agregarReservacion", method = RequestMethod.GET)
    public ModelAndView desplegarAgregarReservacion(Model model){
        return new ModelAndView(_agregarReservacio);
    }
}
