<%--
  Created by IntelliJ IDEA.
  User: WillieManuel
  Date: 25/6/16
  Time: 6:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Página Principal</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="../resources/css/normalize.css" rel="stylesheet">
    <link href="../resources/css/masterslider/masterslider.css" rel="stylesheet">
    <link href="../resources/css/masterslider/skin.css" rel="stylesheet">
    <link href="../resources/css/jquery-ui.min.css" rel="stylesheet">
    <link href="../resources/css/jquery-ui.theme.min.css" rel="stylesheet">
    <link href="../resources/css/app.min.css" rel="stylesheet">
    <link href="../resources/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <div id="loader">
        <i class="fa fa-cog fa-4x fa-spin"></i>
    </div>
    <header>
        <div id="header-desktop" data-change="true" class="homeheader hidden-xs hidden-sm">
            <div class="container">
                <a class="pull-left" href="index.html"></a>

                <div class="row">
                    <div class="col-xs-12">
                        <nav class="pull-right">
                            <!-- Button trigger modal -->
                            <a href="/registrar.html" id="registrar" class="">Registrarme</a>
                            <!-- Button trigger modal -->

                            <a id="iniciar" data-toggle="modal" data-target="#myModal">Iniciar sesión Modal</a>
                            <a href="/login.html">Iniciar sesión PRO</a>
                        </nav>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <nav class="pull-left">
                            <a href="login.html">Inicio</a>
                            <a href="actividades.html">Actividades</a>
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

        <div id="header-mobile" class="visible-xs visible-sm">
            <a href="index.html" class="logo"></a>
            <input id="triguermenu" type="checkbox">
            <label for="triguermenu" class="glyphicon glyphicon-align-justify"></label>
            <nav>
                <div class="buttons">
                    <a href="">Iniciar sesión</a>
                    <a href="login.html">Inicio</a>
                    <a href="login.html">Actividades</a>
                    <a href="login.html">Paquetes y Especiales</a>
                    <a href="login.html">Reuniones y Eventos</a>
                    <a href="login.html">Spa</a>
                    <a href="login.html">Bares y Restaurantes</a>
                    <a href="login.html">Galeria de Imagenes</a>
                </div>
                <div class="social">
                    <a target="_blank" href="http://facebook.com/coralhotels" class="icon-facebook"></a>
                    <a target="_blank" href="http://twitter.com/CoralHotelsRD" class="icon-twitter"></a>
                    <a target="_blank" href="http://instagram.com/coralcostacaribe" class="icon-instagram"></a>
                </div>
            </nav>
        </div>
    </header>

    <section id="content">
        <div  id="HomeSlide" class="master-slider ms-skin-default">
            <div class="ms-slide">
                <img src="../resources/images/blank.gif" data-src="../resources/images/CoralCostaCaribe_Portada1.jpg"/>
                <div class="ms-layer ms-caption" data-ease="easeInOutCubic" data-effect="bottom(50)" data-origin="mc" data-duration="3000">
                    <h2>Alanda Hotel</h2>
                    <h1>¿Qué deseas hoy, alegria o tristeza?</h1>
                </div>
            </div>
            <div class="ms-slide">
                <img src="../resources/images/blank.gif" data-src="../resources/images/slidehome02.jpg"/>
                <div class="ms-layer ms-caption" data-ease="easeInOutCubic" data-effect="bottom(50)" data-origin="mc" data-duration="3000">
                    <h2>Alanda Hotel</h2>
                    <h1>Toda tu comodidad está aquí. ¡Ven y disfrutala!</h1>
                </div>
            </div>
            <div class="ms-slide">
                <img src="../../resources/images/blank.gif" data-src="../resources/images/slidehome03.jpg"/>
                <div class="ms-layer ms-caption" data-ease="easeInOutCubic" data-effect="bottom(50)" data-origin="mc" data-duration="3000">
                    <h2>Alanda Hotel</h2>
                    <h1>Por un servicio mejor una mirada diferente al mar.</h1>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- Reserva -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="reservaciones">
                        <img src="../resources/images/logo.png" class="img-responsive" style="display: table; margin: auto;" width="300">
                        <p style="font-weight: bold; font-size: 25px;" class="text-center">Disfruta de todos nuestros servicios con un bajo costo. </p>
                        <p style="font-weight: bold; font-size: 25px;" class="text-center">TODO PENSADO EN TI</p>
                    </div>
                </div>
            </div>
            <!-- Fin Reserva -->
            <hr>
            <div class="row">
                <!-- Separador -->
                <div class="col-xs-12 visible-xs">
                    <hr>
                </div>
                <!-- Fin Separador -->
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="actividades.html" class="quicklink" style="background-image: url('../resources/images/boda(2).jpg')">
                        <div class="info">
                            <p>Organizacion de</p>
                            <h1>Boda</h1>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="eventos.html" class="quicklink" style="background-image: url('../resources/images/spa.jpg')">
                        <div class="info">
                            <h1>Spa</h1>
                            <p>Medicina estetica</p>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="bodas.html" class="quicklink" style="background-image: url('../resources/images/restaurante.jpg')">
                        <div class="info">
                            <h1>Bares</h1>
                            <p>y Restaurantes</p>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="spa.html" class="quicklink" style="background-image: url('../resources/images/entretenimiento.jpg')">
                        <div class="info">
                            <h1>Actividades </h1>
                            <p>y Entretenimiento</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        </div>
        <div class="rooms">
            <div class="container">
                <h2 class="text-center" style="font-weight: bold; color: #a3b1b1;">Habitaciones</h2>
                <hr style="border-top: 1px solid #d1d1d1;">
                <div class="content-section-a">
                    <div class="row">
                        <div class="col-lg-5 col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Estandar</h2>
                            <p>Las habitaciones de este tipo se encuentran en los pisos 2-5 con una bonita vista de la ciudad. Cuentan con cama King Size en ocupación individual y 2 camas Queen Size en ocupación doble. Todas las habitaciones están decoradas y equipadas con una amplia gama de servicios y equipamiento para garantizar la comodidad durante su estancia.</p>
                        </div>
                        <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                            <img class="img-responsive" src="../resources/images/room1.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="content-section-b">
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Superior</h2>
                            <p>Las habitaciones de este tipo se encuentran en los pisos 6-7 con una bonita vista de la ciudad. Cuentan con cama king size en ocupación individual y 2 camas queen size en doble ocupación. Todas las habitaciones están decoradas y equipadas con una amplia gama de servicios y equipos para garantizar su comodidad durante su estancia.</p>
                        </div>
                        <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                            <img class="img-responsive" src="../resources/images/room2.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="content-section-a">
                    <div class="row">
                        <div class="col-lg-5 col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Suite</h2>
                            <p>Las habitaciones de este tipo se encuentran en el piso 8 con una bonita vista de la ciudad (norte) y vistas al mar (sur). Cuentan con cama king size en ocupación individual y 2 camas queen size en doble ocupación. Todas las habitaciones están decoradas y equipadas con una amplia gama de servicios y equipos para garantizar su comodidad durante su estancia.</p>
                        </div>
                        <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                            <img class="img-responsive" src="../resources/images/room3.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="content-section-b">
                    <div class="row">
                        <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                            <hr class="section-heading-spacer">
                            <div class="clearfix"></div>
                            <h2 class="section-heading">Suite de lujo</h2>
                            <p>Las habitaciones de este tipo se encuentra en el piso 8 con una bonita vista de la ciudad (norte) y vistas al mar (sur) . Cuentan con cama king size. Todas las habitaciones están decoradas y equipadas con una amplia gama de servicios y equipos para garantizar su comodidad durante su estancia.</p>
                        </div>
                        <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                            <img class="img-responsive" src="../resources/images/room4.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background: #ededed">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalLabel">INICIO DE SESION</h4>
                </div>
                <div class="modal-body">
                    <div class="">
                        <div class="row" id="">
                            <div class="col-xs-12 animated fadeIn">
                                <div class="login-form">
                                    <div class="row">
                                        <img src="../resources/images/logo.png" width="200" class="img-responsive" style="margin: auto; display: table; padding-bottom: 15px;"alt="Logo">
                                    </div>
                                    <form:form id="loginForm" method="POST"  action="/iniciarSesionModal.html" modelAttribute="login">
                                        <div class="form-group">
                                            <form:input path="usuario" id="usuario" name="usuario" cssClass="form-control input-style" placeholder="Usuario"/>
                                        </div>
                                        <div class="form-group">
                                            <form:password path="clave" id="clave" name="clave" cssClass="form-control input-style" placeholder="Contraseña"/>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> Recordarme
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <c:if test="${respuestaLogin != null && !respuestaLogin.isExitoso()}">
                                                ${respuestaLogin.getMensaje()}
                                            </c:if>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-danger btn-block">Iniciar sesion</button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer" style="background: #ededed">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

    <script src="../resources/js/jquery-1.11.3.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/masterslider.min.js"></script>
    <script src="../resources/js/functions.js"></script>
</body>
</html>
