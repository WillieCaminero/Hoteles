<%--
  Created by IntelliJ IDEA.
  User: WillieManuel
  Date: 6/7/16
  Time: 2:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>

<layout:extends name="/WEB-INF/plantillas/plantillaGenerica.jsp">

    <!--Title Page Dynamic-->
    <layout:put block="title">Prueba Title</layout:put>

    <!--Contents Page Dynamic-->
    <layout:put block="content">
        <div class="row">
            <div class="col-md-12" style="min-height: 80%;">
                <div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin porta,augue ut
                        ornare sagittis, diam libero facilisis augue, quis accumsan enim velit a mauris.</p>
                </div>
            </div>
        </div>
    </layout:put>

</layout:extends>
