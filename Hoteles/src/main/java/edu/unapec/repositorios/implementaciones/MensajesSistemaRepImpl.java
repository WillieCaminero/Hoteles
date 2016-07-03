package edu.unapec.repositorios.implementaciones;

import edu.unapec.entidades.MensajesSistemaEntity;
import edu.unapec.repositorios.interfaces.MensajesSistemaRepIF;
import edu.unapec.utilidades.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by WillieManuel on 3/7/16.
 */
@Repository("mensajesSistemaRepImpl")
public class MensajesSistemaRepImpl implements MensajesSistemaRepIF {

    @Override
    public List<MensajesSistemaEntity> obtenerMensajeSistema(MensajesSistemaEntity mensajeSistema) {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "from MensajesSistemaEntity where id = :id";
        Query query = session.createQuery(_HQL);
        query.setParameter("id", mensajeSistema.getId());
        return query.list();
    }
}
