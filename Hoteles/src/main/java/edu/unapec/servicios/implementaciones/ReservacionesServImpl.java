package edu.unapec.servicios.implementaciones;

import edu.unapec.entidades.ReservacionesEntity;
import edu.unapec.repositorios.interfaces.ReservacionesRepIF;
import edu.unapec.servicios.interfaces.ReservacionesServIF;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WillieManuel on 9/7/16.
 */
@Service("reservacionesServImpl")
public class ReservacionesServImpl implements ReservacionesServIF {

    private ReservacionesRepIF reservacionesRep;

    public List<ReservacionesEntity> obtenerReservaciones() {
        return reservacionesRep.obtenerReservaciones();
    }

    public boolean agregarReservaciones(ReservacionesEntity reservacionesEntity) {
        return false;
    }

    @Autowired
    public void setReservacionesRep(ReservacionesRepIF reservacionesRep) {
        this.reservacionesRep = reservacionesRep;
    }
}
