package edu.unapec.utilidades;

import edu.unapec.entidades.*;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * Created by WillieManuel on 21/6/16.
 */
public class HibernateUtil {

    private static HibernateUtil instancia;


    private HibernateUtil(){}

    public static HibernateUtil obtenerInstancia(){
        return instancia == null ? new HibernateUtil() : instancia;
    }

    public SessionFactory obtenerFabricaSesion(){
        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(EstadosReservacionesEntity.class);
        configuration.addAnnotatedClass(HabitacionesEntity.class);
        configuration.addAnnotatedClass(ReservacionesEntity.class);
        configuration.addAnnotatedClass(RolesEntity.class);
        configuration.addAnnotatedClass(TiposRolesEntity.class);
        configuration.addAnnotatedClass(UsuariosEntity.class);
        configuration.addAnnotatedClass(MensajesSistemaEntity.class);
        configuration.configure("hibernate.cfg.xml");
        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
                configuration.getProperties()).build();
        SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        return sessionFactory;
    }

}
