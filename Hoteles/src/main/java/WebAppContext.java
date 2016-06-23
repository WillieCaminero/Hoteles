import edu.unapec.servicios.implementaciones.UsuariosServImpl;
import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * Created by WillieManuel on 22/6/16.
 */
@Configuration
@EnableWebMvc
@ComponentScan({"edu.unapec"})
public class WebAppContext {

    @Bean(name = "usuariosServImpl")
    @Scope("singleton")
    public UsuariosServImpl obtenerUsuariosServImpl(){
        return new UsuariosServImpl();
    }
}
