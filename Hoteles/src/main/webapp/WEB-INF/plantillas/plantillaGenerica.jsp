<%--
  Created by IntelliJ IDEA.
  User: WillieManuel
  Date: 3/7/16
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="layout" uri="http://kwonnam.pe.kr/jsp/template-inheritance"%>
<html lang="es">
    <head>
        <title>
            <layout:block name="title"></layout:block>
        </title>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <!-- Bootstrap -->
        <link href="../../resources/css/normalize.css" rel="stylesheet"/>
        <link href="../../resources/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="../../resources/css/app.min.css" rel="stylesheet"/>
        <link href="../../resources/css/font-awesome.min.css" rel="stylesheet"/>

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

        <div class="container">
            <layout:block name="content"></layout:block>
        </div>

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
        <script src="../../resources/js/jquery-1.11.3.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../../resources/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function(){
                $("#loader").fadeOut("slow");
            });
        </script>

    </body>
</html>