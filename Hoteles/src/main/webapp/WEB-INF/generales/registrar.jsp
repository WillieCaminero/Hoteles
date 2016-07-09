
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Registro de Usuarios</title>

    <!-- Bootstrap -->
    <link href="../resources/css/normalize.css" rel="stylesheet">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/app.min.css" rel="stylesheet">
    <link href="../resources/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div id="loader">
      <i class="fa fa-cog fa-4x fa-spin"></i>
  </div>
  <header>
    <div id="header-desktop" data-change="true" class="hidden-xs hidden-sm normalheader">
          <div class="container">
             <a class="pull-left" href="index.html"></a>

             <div class="row">
                <div class="col-xs-12">
                   <nav class="pull-right">                  
                        <!-- Button trigger modal -->
                        <a href="/login.html" id="iniciar" class="hide-test">Iniciar sesión</a>
                   </nav>
                </div>
             </div>

             <div class="row">
                <div class="col-xs-12">
                   <nav class="pull-left">                  
                      <a href="bienvenida.html">Inicio</a>
                      <a href="login.html">Actividades</a>
                      <a href="login.html">Paquetes y Especiales</a>
                      <a href="login.html">Reuniones y Eventos</a>
                      <a href="login.html">Spa</a>
                      <a href="login.html">Bares y Restaurantes</a>
                      <a href="login.html">Galeria de Imagenes</a>
                   </nav>
                </div>
             </div>   
          </div>
       </div>  
  </header>
    <img src="../resources/images/registrar.jpg" id="cover-registrar" class="img-responsive" alt="">
    <div class="container">
      <form:form id="registrarForm" method="post" action="/registrar/agregar.html" modelAttribute="usuario" style="margin-top: 11em;">
          <div class="panel panel-danger" style="margin-top: 33%;">
              <div class="panel-heading"><h3 class="text-center">Registro de Usuario</h3></div>
                <div class="panel-body">
                  <fieldset>
                    <legend>Datos de ingreso</legend>

                      <div class="row">
                          <div class="col-xs-12">
                              <div class="form-group">
                                  <c:if test="${respuestaAgregarUsuario != null && respuestaAgregarUsuario.getMensaje().length() > 0}">
                                      <h4 style="color:red;">*${respuestaAgregarUsuario.getMensaje()}</h4>
                                  </c:if>
                              </div>
                          </div>
                      </div>

                    <div class="row">
                         <div class="col-xs-12">
                            <div class="form-group">
                                <label for="usuario">Usuario</label>
                                <form:input path="usuario" id="usuario" name="usuario" class="form-control" placeholder="Usuario"/>
                            </div>
                         </div>
                    </div>
                    <div class="row">
                          <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="clave">Contraseña</label>
                                    <form:password path="clave" id="clave" name="clave" class="form-control" placeholder="Contraseña"/>
                                </div>
                          </div>
                    </div>
                    <div class="row">
                         <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="confirmar_clave">Confirmar Contraseña</label>
                                    <input type="password" id="confirmar_clave" name="confirmar_clave" class="form-control"  placeholder="Confirmar contraseña">
                               </div>
                         </div>
                    </div>
                  </fieldset>

                  <fieldset>
                    <legend>Datos personales</legend>

                        <div class="row">
                          <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="nombres">Nombres</label>
                                    <form:input path="nombres" id="nombres" name="nombres" class="form-control" placeholder="Nombres"/>
                                </div>
                          </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="apellidos">Apellidos</label>
                                    <form:input path="apellidos" id="apellidos" name="apellidos" class="form-control" placeholder="Apellidos"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                          <div class="col-xs-6">
                              <div class="form-group">
                                  <label for="celular">Celular</label>
                                  <form:input path="celular" id="celular" name="celular" class="form-control" placeholder="Celular"/>
                              </div>
                          </div>
                          <div class="col-xs-6">
                            <div class="form-group">
                                <label for="telefono">Telefono</label>
                                <form:input path="telefono" id="telefono" name="telefono" class="form-control" placeholder="Telefono"/>
                            </div>
                          </div>
                       </div>

                       <div class="row">
                         <div class="col-xs-6">
                          <div class="form-group">
                              <label for="cedula">Cedula</label>
                              <form:input path="cedula" id="cedula" name="cedula" class="form-control" placeholder="Cedula"/>
                          </div>
                         </div>
                         <div class="col-xs-6">
                          <div class="form-group">
                              <label for="correo">Correo</label>
                              <form:input path="correo" id="correo" name="correo" class="form-control" placeholder="Correo"/>
                          </div>
                         </div>
                       </div>

                   <div class="row">
                     <div class="col-xs-6">
                         <button type="reset" class="btn btn-danger pull-right">Cancelar</button>
                     </div>
                     <div class="col-xs-6">
                         <button type="submit" class="btn btn-primary">Guardar</button>
                     </div>
                   </div>

                  </fieldset>
                </div>
          </div>
      </form:form>
    </div>
    <footer>
          <nav>
             <a href="nosotros.html">Nosotros</a>
             <span class="hidden-xs">|</span>
             <a href="contacto.html">Contactos</a>
             <span class="hidden-xs">|</span>
             <a href="mapa-del-sitio.html">Mapa del Sitio</a>
             <span class="hidden-xs">|</span>
             <a href="politicas.html">Políticas de Privacidad</a>
             <span class="hidden-xs">|</span>
             <a href="terminos.html">Términos de Uso</a>
          </nav>
          <div class="social hidden-xs">
             <a target="_blank" href="http://facebook.com/coralhotels" class="icon-facebook"></a>
             <a target="_blank" href="http://twitter.com/CoralHotelsRD" class="icon-twitter"></a>
             <a target="_blank" href="http://instagram.com/coralcostacaribe" class="icon-instagram"></a>
          </div>
          <p style="color: white; font-weight: bold">@2016 - Todos los derechos reservados</p>
    </footer>             
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="../../resources/js/jquery-1.11.3.min.js"></script>
          <!-- jQuery Validate (necessary for Validations)-->
          <script src="../resources/js/jquery.validate.min.js"></script>
          <script src="../resources/js/jquery.mask.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../../resources/js/bootstrap.min.js"></script>
        <!-- Validations -->
        <script src="../../resources/js/validations.js"></script>
        <script>
            $(document).ready(function(){
                $("#loader").fadeOut("slow");
            });
        </script>
  </body>
</html>