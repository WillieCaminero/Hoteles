<%--
  Created by IntelliJ IDEA.
  User: WillieManuel
  Date: 19/6/16
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Reservaciones Habitaciones Hotel</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="../resources/css/normalize.css" rel="stylesheet">
    <link href="../resources/css/app.min.css" rel="stylesheet">
    <link href="../resources/css/animate.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../resources/css/styles.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="cover">
            <div class="row" id="login-container">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-xs-10 col-xs-offset-1 animated fadeIn" style="margin-top: 100px;">
                    <div class="login-form">
                        <div class="row">
                            <img src="../resources/images/logo.png" width="200" class="img-responsive" style="margin: auto; display: table; padding-bottom: 15px;"alt="Logo">
                        </div>
                        <form:form id="loginForm" method="POST"  action="/IniciarSesion.html" modelAttribute="login">
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
    </section>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../resources/js/jquery-1.11.3.min.js"></script>
    <!-- jQuery Validate (necessary for Validations)-->
    <script src="../resources/js/jquery.validate.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../resources/js/bootstrap.min.js"></script>
    <!-- Validations -->
    <script src="../resources/js/validations.js"></script>
</body>
</html>
