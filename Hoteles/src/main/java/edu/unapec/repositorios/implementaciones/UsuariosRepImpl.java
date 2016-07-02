package edu.unapec.repositorios.implementaciones;

import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.repositorios.interfaces.UsuariosRepIF;
import edu.unapec.utilidades.HibernateUtil;
import org.hibernate.Query;
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
    public List<UsuariosEntity> iniciarSesion(String usuario, String clave) {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "from UsuariosEntity where usuario = :usuario and clave = :clave";
        Query query = session.createQuery(_HQL);
        query.setParameter("usuario", usuario);
        query.setParameter("clave", clave);
        List<UsuariosEntity> listaUsuarios = query.list();
        return listaUsuarios;
    }

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
