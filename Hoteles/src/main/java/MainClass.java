import edu.unapec.configuraciones.WebAppContext;
import edu.unapec.entidades.UsuariosEntity;
import edu.unapec.servicios.implementaciones.UsuariosServImpl;
import edu.unapec.servicios.interfaces.UsuariosServIF;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import java.util.List;


/**
 * Created by WillieManuel on 19/6/16.
 */
public class MainClass {

    public static void main(String... params){

        //PROBANDO SPRING CORE Y HIBERNATE : DESACTIVAR @EnableWebMvc
        ApplicationContext appContext = new AnnotationConfigApplicationContext(WebAppContext.class);

        UsuariosServIF usuariosServicio = appContext.getBean("usuariosServImpl", UsuariosServImpl.class);

        UsuariosEntity usuariosEntity = new UsuariosEntity();
        usuariosEntity.setCedula("121212");
        usuariosEntity.setCorreo("121212");
        usuariosEntity.setUsuario("121212");
        usuariosEntity.setApellidos("hjhkjhkjh");
        usuariosEntity.setCelular("7667677673");
        usuariosEntity.setClave("487987987");
        usuariosEntity.setEstado(1);
        usuariosEntity.setNombres("jkljkjlj");
        usuariosEntity.setTelefono("8098998889");
        //System.out.println(usuariosServicio.agregarUsuario(usuariosEntity));

        System.out.println("*************************************************");
        List<UsuariosEntity> listaUsuarios = usuariosServicio.obtenerUsuarios();
        System.out.println("listaUsuarios: #" + listaUsuarios.size());
        for (UsuariosEntity usuario : listaUsuarios) {
            System.out.println(usuario.getApellidos());
        }

    }
}
