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
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../../resources/css/styles.css" rel="stylesheet">
</head>
<body>
    <div class="row">
        <div class="col-md-12">
            <div class="login">
                <form:form id="loginForm" method="POST"  action="/IniciarSesion.html" modelAttribute="login" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-10">
                             <form:input path="usuario" id="usuario" name="usuario" cssClass="form-control" placeholder="Usuario"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <form:input path="clave" id="clave" name="clave" cssClass="form-control" placeholder="Clave"/>
                        </div>
                    </div>
                    <div>
                        <c:if test="${respuestaLogin != null && !respuestaLogin.isExitoso()}">
                            <div class="col-sm-10 alert alert-danger">${respuestaLogin.getMensaje()}</div>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-default">Iniciar Sesión</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../../resources/js/jquery-1.11.3.min.js"></script>
    <!-- jQuery Validate (necessary for Validations)-->
    <script src="../../resources/js/jquery.validate.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../../resources/js/bootstrap.min.js"></script>
    <!-- Validations -->
    <script src="../../resources/js/validations.js"></script>
</body>
</html>
