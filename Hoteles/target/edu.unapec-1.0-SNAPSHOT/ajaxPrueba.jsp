<%--
  Created by IntelliJ IDEA.
  User: WillieManuel
  Date: 5/7/16
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../resources/js/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function($) {
            var data = {}

            $.ajax({
                url: "${home}/search/api/obtenerUsuarios.html",
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                mimeType: 'application/json',
                success: function(data) {
                    console.log(data)
                },
                error:function(data,status,er) {
                    console.log("error: "+data+" status: "+status+" er:"+er);
                }
            });
        });
    </script>
</head>
<body>

</body>
</html>
