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
	<layout:put block="title">Crear Reservaciones</layout:put>
	<layout:put block="link">
		<link href="../../resources/css/bwizard.min.css" rel="stylesheet" />
	</layout:put>
	<!--Contents Page Dynamic-->
	<layout:put block="content">

		<!-- begin page-header -->
		<h1 class="page-header">Crear Reservación</h1>
		<!-- end page-header -->

		<!-- begin row -->
		<div class="row">
			<!-- begin col-12 -->
			<div class="col-md-12">
				<!-- begin panel -->
				<div class="panel panel-inverse">
					<div class="panel-heading">
						<h4 class="panel-title">Crear reservación</h4>
					</div>
					<div class="panel-body">
						<form action="http://seantheme.com/" method="POST">
							<div id="wizard">
								<ol>
									<li>
										Fechas de reservacion
										<small>Selecione las fechas en la cual desea crear una reservacion </small>
									</li>
									<li>
										Caracteristicas de la habitación/es
										<small>Escriba las caracteristicas basicas de la/s habitacion/es que desea reservar </small>
									</li>
									<li>
										Habitaciones
										<small>Seleccione la/s habitaciones que desea reservar </small>
									</li>
									<li>
										Confirmar reservación
										<small>Confirmar todos los datos antes de enviar su reservación </small>
									</li>
								</ol>
								<!-- begin wizard step-1 -->
								<div>
									<fieldset>
										<legend class="pull-left width-full">Rellenar las siguientes fechas</legend>
										<!-- begin row -->
										<div class="row">
											<!-- begin col-4 -->
											<div class="col-md-6">
												<div class="form-group">
													<label>Fecha Inicio</label>
													<input type="date" name="fechaInicio" class="form-control" />
												</div>
											</div>
											<!-- end col-4 -->

											<!-- begin col-4 -->
											<div class="col-md-6">
												<div class="form-group">
													<label>Fecha Final</label>
													<input type="date" name="fechaFin" class="form-control" />
												</div>
											</div>
											<!-- end col-4 -->
										</div>
										<!-- end row -->
									</fieldset>
								</div>
								<!-- end wizard step-1 -->
								<!-- begin wizard step-2 -->
								<div>
									<fieldset>
										<legend class="pull-left width-full">Rellene los siguientes parametros</legend>
										<!-- begin row -->
										<div class="row">
											<!-- begin col-6 -->
											<div class="col-md-6">
												<div class="form-group">
													<label>Tipo de habitación</label>
													<select name="tipoHabitacion" class="form-control">
														<option value="1">Premium</option>
														<option value="2">Normal</option>
													</select>
												</div>
											</div>
											<!-- end col-6 -->
											<!-- begin col-6 -->
											<div class="col-md-6">
												<div class="form-group">
													<label>Cantidad máxima de personas</label>
													<input type="number" name="cantPersonas" class="form-control" />
												</div>
											</div>
											<!-- end col-6 -->
										</div>
										<!-- end row -->
									</fieldset>
								</div>
								<!-- end wizard step-2 -->
								<!-- begin wizard step-3 -->
								<div>
									<fieldset>
										<legend class="pull-left width-full">Seleccione las habitaciones </legend>
										<!-- begin row -->
										<div class="row">
											<div class="col-md-3">
												<div class="row">
													<div class="checkbox text-right">
														<div class="col-md-1">
															<label>
																<input type="checkbox" class="" >
															</label>
														</div>
													</div>
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="select-room">
															<h3 class="hidden">Habitacion seleccionada</h3>
														</div>
														<div class="numHabitacion text-center">
															<h3>#504</h3>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-3">
												<div class="row">
													<div class="checkbox text-right">
														<div class="col-md-1">
															<label>
																<input type="checkbox" class="" >
															</label>
														</div>
													</div>
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="select-room">
															<h3 class="hidden">Habitacion seleccionada</h3>
														</div>
														<div class="numHabitacion text-center">
															<h3>#505</h3>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-3">
												<div class="row">
													<div class="checkbox text-right">
														<div class="col-md-1">
															<label>
																<input type="checkbox" class="" >
															</label>
														</div>
													</div>
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="select-room">
															<h3 class="hidden">Habitacion seleccionada</h3>
														</div>
														<div class="numHabitacion text-center">
															<h3>#506</h3>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-3">
												<div class="row">
													<div class="checkbox text-right">
														<div class="col-md-1">
															<label>
																<input type="checkbox" class="" >
															</label>
														</div>
													</div>
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="select-room">
															<h3 class="hidden">Habitacion seleccionada</h3>
														</div>
														<div class="numHabitacion text-center">
															<h3>#507</h3>
														</div>
													</div>
												</div>
											</div>
											<!-- end col-6 -->
										</div>
										<!-- end row -->
									</fieldset>
								</div>
								<!-- end wizard step-3 -->
								<!-- begin wizard step-4 -->
								<div>
									<div class="row">
										<!-- begin col-4 -->
										<div class="col-md-6">
											<div class="form-group">
												<label>Fecha Inicio</label>
												<input type="date" name="fechaInicio" class="form-control" />
											</div>
										</div>
										<!-- end col-4 -->

										<!-- begin col-4 -->
										<div class="col-md-6">
											<div class="form-group">
												<label>Fecha Final</label>
												<input type="date" name="fechaFin" class="form-control" />
											</div>
										</div>
										<!-- end col-4 -->
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Tipo de habitación</label>
												<select name="tipoHabitacion" class="form-control">
													<option value="1">Premium</option>
													<option value="2">Normal</option>
												</select>
											</div>
										</div>
										<!-- end col-6 -->
										<!-- begin col-6 -->
										<div class="col-md-6">
											<div class="form-group">
												<label>Cantidad máxima de personas</label>
												<input type="number" name="cantPersonas" class="form-control" />
											</div>
										</div>
										<!-- end col-6 -->
									</div>
									<div class="row">
										<div class="form-group">
											<fieldset>
												<legend>Resumen de seleccion de habitaciones</legend>
												<div class="col-md-3">
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="numHabitacion text-center">
															<h3>#504</h3>
														</div>
													</div>
												</div>
												<div class="col-md-3">
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="numHabitacion text-center">
															<h3>#505</h3>
														</div>
													</div>
												</div>
												<div class="col-md-3">
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="numHabitacion text-center">
															<h3>#506</h3>
														</div>
													</div>
												</div>

												<div class="col-md-3">
													<div class="col-md-11">
														<img src="../resources/images/002.jpg" width="300" alt="">
														<div class="numHabitacion text-center">
															<h3>#507</h3>
														</div>
													</div>
												</div>

											</fieldset>
										</div>
									</div>
								</div>
								<!-- end wizard step-4 -->
							</div>
						</form>
					</div>
				</div>
				<!-- end panel -->
			</div>
			<!-- end col-12 -->
		</div>
		<!-- end row -->
	</layout:put>

	<layout:put block="script">
		<script src="../../resources/js/pace.min.js"></script>
		<script src="../../resources/js/bwizard.js"></script>
		<script src="../../resources/js/form-wizards.demo.min.js"></script>
		<script>
			$(document).ready(function() {
				FormWizard.init();

				$('.checkbox input').change(function() {
					if ($(this).prop('checked')) {
						$(this).closest('div').parent().parent().children().eq(1).children(0).css("opacity", "0.5");
						$(this).closest('div').parent().parent().children().eq(1).children(1).children(0).removeClass("hidden");
					}
					else {
						$(this).closest('div').parent().parent().children().eq(1).children(0).css("opacity", "");
						$(this).closest('div').parent().parent().children().eq(1).children(1).children(0).addClass("hidden");
					}
				});
			});
		</script>
	</layout:put>

</layout:extends>

