<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<layout:extends name="/WEB-INF/plantillas/plantillaGenerica.jsp">

	<!--Title Page Dynamic-->
	<layout:put block="title">Reservaciones</layout:put>

	<!--Contents Page Dynamic-->
	<layout:put block="content">
		<!-- begin page-header -->
		<h1 class="page-header">Reservaciones</h1>
		<!-- end page-header -->

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-inverse" data-sortable-id="table-basic-1">
					<div class="panel-heading">
						<h4 class="panel-title">Listado de Reservaciones</h4>
					</div>
					<div class="panel-body">
						<table class="table">
							<thead>
								<tr>
									<th>Habitacion</th>
									<th>Fecha Desde</th>
									<th>Fecha Hasta</th>
									<th>Monto Estadia</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${reservaciones}" var="reservacion">
									<tr>
										<td>${reservacion.getId()}</td>
										<td><fmt:formatDate pattern="dd-MM-yyyy hh:mm:ss a" value="${reservacion.getFechaDesde()}"/></td>
										<td><fmt:formatDate pattern="dd-MM-yyyy hh:mm:ss a" value="${reservacion.getFechaHasta()}"/></td>
										<td>${reservacion.getMontoEstadia()}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</layout:put>

</layout:extends>
