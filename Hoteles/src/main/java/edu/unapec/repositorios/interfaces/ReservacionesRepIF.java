package edu.unapec.repositorios.interfaces;

import edu.unapec.entidades.ReservacionesEntity;

import java.util.List;

/**
 * Created by WillieManuel on 9/7/16.
 */
public interface ReservacionesRepIF {

    List<ReservacionesEntity> obtenerReservaciones();

    boolean agregarReservaciones(ReservacionesEntity reservacionesEntity);
}
