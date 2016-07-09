
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
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
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
        <div class="row" style="margin-top: 36em;">
            <div class="col-xs-12" style="color: black;">
                <h1>Actividades y Entretenimiento</h1>
                <h3>Diversion bajo el sol garantizada</h3>

                <h2>Actividades y entretenimiento dentro del hotel</h2>

                <div class="content-section-b">
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Actividades acuaticas</h2>
                            <h4 style="text-align: justify;">Una variedad de actividades acuáticas le esperan en las calidas aguas de Alanda Hotel. Diviértase bajo el sol,
                                sienta la emoción y adrenalina de practicar su deporte acuático favorito o su actividad de ocio y descanso preferida.</h4>
                        </div>
                        <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                            <img class="img-responsive img-circle" src="../resources/images/actividades2.jpg" alt="">
                        </div>
                    </div>
                </div>

                <div class="content-section-b">
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Gimnasio</h2>
                            <h4 style="text-align: justify;">Alanda Hotel cuenta un gimnasio de servicio completo , que es gratuito para los huéspedes del complejo y abierto a los locales que están interesados ​​en un gimnasio para mantener o iniciar un estilo de vida saludable. Sentirse más joven , verse mejor y disfrutar más la vida por conseguir en el camino hacia una vida más saludable. Participar en una orientación de fitness y aprender cómo empezar a sentirse grande mientras tonificación , aliviar el estrés y quemar calorías . Hacer que el cambio y nos llaman hoy en día.
                            </h4>
                        </div>
                        <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                            <img class="img-responsive img-circle" src="../resources/images/actividades4.jpg" alt="">
                        </div>
                    </div>
                </div>

                <div class="content-section-b">
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Actividades acuaticas</h2>
                            <h4 style="text-align: justify;">Una variedad de actividades acuáticas le esperan en las calidas aguas de Coral Costa Caribe. Diviértase bajo el sol,
                                sienta la emoción y adrenalina de practicar su deporte acuático favorito o su actividad de ocio y descanso preferida.</h4>
                        </div>
                        <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                            <img class="img-responsive img-circle" src="../resources/images/actividades4.jpg" alt="">
                        </div>
                    </div>
                </div>

                <div class="content-section-b">
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Actividades acuaticas</h2>
                            <h4 style="text-align: justify;">Una variedad de actividades acuáticas le esperan en las calidas aguas de Coral Costa Caribe. Diviértase bajo el sol,
                                sienta la emoción y adrenalina de practicar su deporte acuático favorito o su actividad de ocio y descanso preferida.</h4>
                        </div>
                        <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                            <img class="img-responsive img-circle" src="../resources/images/actividades2.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
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