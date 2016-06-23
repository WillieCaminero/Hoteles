package edu.unapec.repositorios.implementaciones;

import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.repositorios.interfaces.UsuariosRepIF;
import edu.unapec.utilidades.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by WillieManuel on 22/6/16.
 */
@Repository("usuariosRepImpl")
public class UsuariosRepImpl implements UsuariosRepIF {

    @Override
    public List<UsuariosEntity> obtenerUsuarios() {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "from UsuariosEntity";
        List<UsuariosEntity> listaUsuarios = session.createQuery(_HQL).list();
        return listaUsuarios;
    }

    @Override
    public boolean agregarUsuario(UsuariosEntity usuariosEntity) {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        Transaction tx = session.beginTransaction();
        session.save(usuariosEntity);
        tx.commit();
        return true;
    }

    @Override
    public boolean EliminarUsuario(UsuariosEntity usuarioEntity) {
        return false;
    }

    @Override
    public boolean AgregarUsuario(UsuariosEntity usuarioEntity) {
        return false;
    }

    @Override
    public boolean ActualizarUsuario(UsuariosEntity usuarioEntity) {
        return false;
    }
}
