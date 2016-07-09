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
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <!-- ================== BEGIN BASE CSS STYLE ================== -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="../resources/css/jquery-ui.min.css" rel="stylesheet" />
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
        <link href="../resources/css/font-awesome.min.css" rel="stylesheet" />
        <link href="../resources/css/animate.min.css" rel="stylesheet" />
        <link href="../resources/css/style2.css" rel="stylesheet" />
        <link href="../resources/css/style-responsive.min.css" rel="stylesheet" />
        <link href="../resources/css/default.css" rel="stylesheet" id="theme" />
        <!-- ================== END BASE CSS STYLE ================== -->
        <layout:block name="link"></layout:block>
        <!-- ================== BEGIN BASE JS ================== -->
        <script src="../resources/js/pace.min.js"></script>
        <!-- ================== END BASE JS ================== -->
    </head>
    <body>

        <!-- begin #page-loader -->
        <div id="page-loader" class="fade in"><span class="spinner"></span></div>
        <!-- end #page-loader -->

        <!-- begin #page-container -->
        <div id="page-container" class="page-container fade page-sidebar-fixed page-header-fixed">
            <!-- begin #header -->
            <div id="header" class="header navbar navbar-default navbar-fixed-top">
                <!-- begin container-fluid -->
                <div class="container-fluid">
                    <!-- begin mobile sidebar expand / collapse button -->
                    <div class="navbar-header">
                        <a href="principal.html" class="navbar-brand"><span class=""></span> Alanda Hotel</a>
                        <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- end mobile sidebar expand / collapse button -->

                    <!-- begin header navigation right -->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown navbar-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="assets/img/user-13.jpg" alt="" />
                                <span class="hidden-xs">Jeremy López</span> <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu animated fadeInLeft">
                                <li class="arrow"></li>
                                <li><a href="">Editar Perfil</a></li>
                                <li class="divider"></li>
                                <li><a href="bienvenida.html">Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- end header navigation right -->
                </div>
                <!-- end container-fluid -->
            </div>
            <!-- end #header -->

            <!-- begin #sidebar -->
            <div id="sidebar" class="sidebar">
                <!-- begin sidebar scrollbar -->
                <div data-scrollbar="true" data-height="100%">
                    <!-- begin sidebar user -->
                    <!-- end sidebar user -->
                    <!-- begin sidebar nav -->
                    <ul class="nav">
                        <li class="nav-header">Acciones</li>
                        <li class="has-sub">
                            <a href="principal.html">
                                <i class="fa fa-laptop"></i>
                                <span>Inicio</span>
                            </a>
                        <li class="has-sub">
                            <a href="javascript:;">
                                <b class="caret pull-right"></b>
                                <i class="fa fa-laptop"></i>
                                <span>Reservaciones</span>
                            </a>
                            <ul class="sub-menu">
                                <li><a href="reservaciones.html">Listado de reservaciones</a></li>
                                <li><a href="agregarReservacion.html">Agregar reservaciones</a></li>
                            </ul>
                        </li>
                        <!-- begin sidebar minify button -->
                        <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
                        <!-- end sidebar minify button -->
                    </ul>
                    <!-- end sidebar nav -->
                </div>
                <!-- end sidebar scrollbar -->
            </div>
            <div class="sidebar-bg"></div>
            <!-- end #sidebar -->

            <!-- begin #content -->
            <div id="content" class="content">
                <layout:block name="content"></layout:block>
            </div>
            <!-- end #content -->

            <!-- begin scroll to top btn -->
            <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
            <!-- end scroll to top btn -->
        </div>
        <!-- end page container -->

        <!-- ================== BEGIN BASE JS ================== -->
        <script src="../resources/js/jquery-1.11.3.min.js"></script>
        <script src="../resources/js/jquery-migrate-1.1.0.min.js"></script>
        <script src="../resources/js/jquery-ui.min.js"></script>
        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/jquery.slimscroll.min.js"></script>
        <script src="../resources/js/jquery.cookie.js"></script>
        <!-- ================== END BASE JS ================== -->
        <script src="../resources/js/apps2.min.js"></script>
        <script>
            $(document).ready(function() {
                App.init();
            });
        </script>
        <layout:block name="script"></layout:block>
    </body>
</html>