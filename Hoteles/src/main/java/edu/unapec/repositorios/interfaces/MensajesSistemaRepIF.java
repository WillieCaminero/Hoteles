package edu.unapec.repositorios.interfaces;

import edu.unapec.entidades.MensajesSistemaEntity;
import java.util.List;

/**
 * Created by WillieManuel on 3/7/16.
 */
public interface MensajesSistemaRepIF {

    List<MensajesSistemaEntity> obtenerMensajeSistema(MensajesSistemaEntity mensajeSistema);
}
