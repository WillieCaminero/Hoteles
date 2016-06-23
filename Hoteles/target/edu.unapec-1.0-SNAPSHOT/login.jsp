<%--
  Created by IntelliJ IDEA.
  User: WillieManuel
  Date: 19/6/16
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservaciones Habitaciones Hotel</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/css/styles.css" rel="stylesheet">
</head>
<body>
    <h2>${mensaje}</h2>
    <div class="row">
        <div class="col-md-12">
            <div class="login">
                <form method="POST" modelAttribute="loginForm" action="/Login/IniciarSesion" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Usuario">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Clave">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-default">Iniciar Sesión</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../../resources/js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../../resources/js/bootstrap.min.js"></script>
</body>
</html>
