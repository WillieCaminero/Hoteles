package edu.unapec.repositorios.implementaciones;

import edu.unapec.modelos.Login;
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
    public List<UsuariosEntity> iniciarSesion(Login login) {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "from UsuariosEntity where usuario = :usuario and clave = :clave";
        Query query = session.createQuery(_HQL);
        query.setParameter("usuario", login.getUsuario());
        query.setParameter("clave", login.getClave());
        List<UsuariosEntity> listaUsuarios = query.list();
        return listaUsuarios;
    }

    @Override
    public List<UsuariosEntity> verificarUsuarioDisponible(UsuariosEntity usuariosEntity){
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "";
        List<UsuariosEntity> listaUsuarios;
        if(usuariosEntity.getId() == 0){
            _HQL = "from UsuariosEntity where usuario = :usuario";
            Query query = session.createQuery(_HQL);
            query.setParameter("usuario", usuariosEntity.getUsuario().toLowerCase());
            listaUsuarios = query.list();
        }else{
            _HQL = "from UsuariosEntity where usuario = :usuario and id != :id";
            Query query = session.createQuery(_HQL);
            query.setParameter("usuario", usuariosEntity.getUsuario().toLowerCase());
            query.setParameter("id", usuariosEntity.getId());
            listaUsuarios = query.list();
        }
        return listaUsuarios;
    }

    @Override
    public List<UsuariosEntity> verificarCedulaDisponible(UsuariosEntity usuariosEntity){
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "";
        List<UsuariosEntity> listaUsuarios;
        if(usuariosEntity.getId() == 0){
            _HQL = "from UsuariosEntity where cedula = :cedula";
            Query query = session.createQuery(_HQL);
            query.setParameter("cedula", usuariosEntity.getCedula());
            listaUsuarios = query.list();
        }else{
            _HQL = "from UsuariosEntity where cedula = :cedula and id != :id";
            Query query = session.createQuery(_HQL);
            query.setParameter("cedula", usuariosEntity.getCedula());
            query.setParameter("id", usuariosEntity.getId());
            listaUsuarios = query.list();
        }
        return listaUsuarios;
    }

    @Override
    public List<UsuariosEntity> verificarCorreoDisponible(UsuariosEntity usuariosEntity){
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "";
        List<UsuariosEntity> listaUsuarios;
        if(usuariosEntity.getId() == 0){
            _HQL = "from UsuariosEntity where correo = :correo";
            Query query = session.createQuery(_HQL);
            query.setParameter("correo", usuariosEntity.getCorreo());
            listaUsuarios = query.list();
        }else{
            _HQL = "from UsuariosEntity where correo = :correo and id != :id";
            Query query = session.createQuery(_HQL);
            query.setParameter("correo", usuariosEntity.getCorreo());
            query.setParameter("id", usuariosEntity.getId());
            listaUsuarios = query.list();
        }
        return listaUsuarios;
    }

    @Override
    public List<UsuariosEntity> obtenerUsuarios() {
        Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
        String _HQL = "from UsuariosEntity";
        return session.createQuery(_HQL).list();
    }

    @Override
    public boolean agregarUsuario(UsuariosEntity usuariosEntity) {
        try {
            Session session = HibernateUtil.obtenerInstancia().obtenerFabricaSesion().openSession();
            Transaction tx = session.beginTransaction();
            session.save(usuariosEntity);
            tx.commit();
            return true;
        }catch (Exception ex){
            return false;
        }
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
