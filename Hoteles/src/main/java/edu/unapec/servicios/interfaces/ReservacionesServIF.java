package edu.unapec.servicios.interfaces;

import edu.unapec.entidades.ReservacionesEntity;

import java.util.List;

/**
 * Created by WillieManuel on 9/7/16.
 */
public interface ReservacionesServIF {

    List<ReservacionesEntity> obtenerReservaciones();

    boolean agregarReservaciones(ReservacionesEntity reservacionesEntity);

}
