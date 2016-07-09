package edu.unapec.repositorios.implementaciones;

import edu.unapec.entidades.ReservacionesEntity;
import edu.unapec.repositorios.interfaces.ReservacionesRepIF;
import edu.unapec.utilidades.HibernateUtil;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by WillieManuel on 9/7/16.
 */
@Repository("reservacionesRepImpl")
public class ReservacionesRepImpl implements ReservacionesRepIF {

    public List<ReservacionesEntity> obtenerReservaciones() {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "from ReservacionesEntity";
        return session.createQuery(_HQL).list();
    }

    public boolean agregarReservaciones(ReservacionesEntity reservacionesEntity) {
        return false;
    }
}
