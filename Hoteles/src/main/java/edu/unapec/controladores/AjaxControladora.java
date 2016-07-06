package edu.unapec.controladores;

import com.google.gson.Gson;
import edu.unapec.entidades.UsuariosEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by WillieManuel on 5/7/16.
 */
@Controller
public class AjaxControladora {

    //this method response to POST request http://localhost/spring-mvc-json/rest/cont/person
    // receives json data sent by client --> map it to Person object
    // return Person object as json
    @RequestMapping(value="/search/api/obtenerUsuarios", method = RequestMethod.POST)
    public @ResponseBody String  obtenerUsuarios() {
        List<UsuariosEntity> listaUsuarios = new ArrayList<UsuariosEntity>();

        UsuariosEntity usuario = new UsuariosEntity();
        usuario.setNombres("nombre");
        usuario.setTelefono("211-123-3121");

        listaUsuarios.add(usuario);
        listaUsuarios.add(usuario);
        return new Gson().toJson(listaUsuarios);
    }

}
