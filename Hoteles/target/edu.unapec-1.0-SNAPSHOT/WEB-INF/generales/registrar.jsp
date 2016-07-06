<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <a href="login.html" id="iniciar" class="hide-test">Iniciar sesión</a>
                   </nav>
                </div>
             </div>

             <div class="row">
                <div class="col-xs-12">
                   <nav class="pull-left">                  
                      <a href="index.html">Inicio</a>
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
      <form style="margin-top: 11em;">
      <div class="panel panel-danger" style="margin-top: 33%;">
          <div class="panel-heading"><h3 class="text-center">Registro de Usuario</h3></div>
            <div class="panel-body">
              <fieldset>
                <legend>Datos de ingreso</legend>
                <div class="row">
                 <div class="col-xs-12">
                    <div class="form-group">
                      <label for="Usuario">Usuario</label>
                      <input type="text" class="form-control" id="usuario" placeholder="Usuario">
                    </div>   
                 </div>                  
                </div>
                <div class="row">
                  <div class="col-xs-12">
                      <div class="form-group">
                        <label for="Contraseña">Contraseña</label>
                        <input type="password" class="form-control" id="contraseña" placeholder="Contraseña">
                     </div>     
                  </div>
                </div>               
               <div class="row">
                 <div class="col-xs-12">
                    <div class="form-group">
                      <label for="Confirmar">Confirmar Contraseña</label>
                      <input type="password" class="form-control" id="confirmar-contraseña" placeholder="Confirmar contraseña">
                   </div>     
                 </div>
               </div>               
              </fieldset>
              <fieldset>
                <legend>Datos personales</legend>
                <div class="row">
                  <div class="col-xs-6">
                    <div class="form-group">
                        <label for="Nombres">Nombres</label>
                        <input type="text" class="form-control" id="nombres" placeholder="Nombres">
                    </div>
                  </div>
                  <div class="col-xs-6">
                    <div class="form-group">
                      <label for="Apellidos">Apellidos</label>
                      <input type="text" class="form-control" id="apellidos" placeholder="Apellidos">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-xs-6">
                      <div class="form-group">
                        <label for="Celular">Celular</label>
                        <input type="text" class="form-control" id="celular" placeholder="Celular">
                      </div> 
                  </div>
                  <div class="col-xs-6">
                    <div class="form-group">
                      <label for="Telefono">Telefono</label>
                      <input type="text" class="form-control" id="telefono" placeholder="Telefono">
                    </div> 
                  </div>
               </div>
               <div class="row">
                 <div class="col-xs-6">
                  <div class="form-group">
                    <label for="Cedula">Cedula</label>
                    <input type="text" class="form-control" id="cedula" placeholder="Cedula">
                  </div>
                 </div>
                 <div class="col-xs-6">
                  <div class="form-group">
                    <label for="Correo">Correo</label>
                    <input type="email" class="form-control" id="correo" placeholder="Correo">
                  </div>                      
                 </div>
               </div>

               <div class="row">
                 <div class="col-xs-6">
                     <input type="button" class="btn btn-danger pull-right" value="Cancelar">
                 </div>
                 <div class="col-xs-6">
                     <input type="button" class="btn btn-primary" value="Guardar">
                 </div>
               </div>
             </div>

              </fieldset>
            </div>
      </div>              
      </form>
    <footer>
      <div class="container">
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
       </div>               
    </footer>             
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../resources/js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../resources/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#loader").fadeOut("slow");
        });
    </script>
  </body>
</html>