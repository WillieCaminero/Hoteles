package edu.unapec.configuraciones;

import edu.unapec.servicios.implementaciones.UsuariosServImpl;
import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 * Created by WillieManuel on 22/6/16.
 */
@Configuration
@EnableWebMvc
@ComponentScan({"edu.unapec"})
public class WebAppContext extends WebMvcConfigurerAdapter{

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean(name = "usuariosServImpl")
    @Scope("singleton")
    public UsuariosServImpl obtenerUsuariosServImpl(){
        return new UsuariosServImpl();
    }
}
