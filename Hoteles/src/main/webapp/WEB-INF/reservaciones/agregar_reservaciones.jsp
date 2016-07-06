<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
	<meta charset="utf-8" />
	<title>Color Admin | Wizards</title>
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
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="../resources/css/bwizard.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
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
					<a href="index-2.html" class="navbar-brand"><span class=""></span> Alanda Hotel</a>
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
							<li><a href="javascript:;">Editar Perfil</a></li>
							<li class="divider"></li>
							<li><a href="javascript:;">Cerrar sesión</a></li>
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
						<a href="javascript:;">
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
						    <li><a href="page_blank.html">Listado de reservaciones</a></li>
						    <li><a href="agregar_reservaciones.jsp">Agregar reservaciones</a></li>
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
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">				
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">Acciones</li>
					<li class="has-sub">
						<a href="javascript:;">
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
						    <li><a href="page_blank.html">Listado de reservaciones</a></li>
						    <li><a href="agregar_reservaciones.jsp">Agregar reservaciones</a></li>
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
			<!-- begin page-header -->
			<h1 class="page-header">Crear Reservación </h1>
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
                                                <!-- begin col-4 -->
												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<div class="checkbox">
																<label>
																	<input type="checkbox" style="margin-top: 10px;"> <p class="text-center" style="color: white;">3291</p>	
																</label>
															</div>															
														</div>
													</div>
												</div>

												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<p class="text-center">3291</p>	
														</div>
													</div>
												</div>

												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<p class="text-center">3291</p>	
														</div>
													</div>
												</div>

												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<p class="text-center">3291</p>	
														</div>
													</div>
												</div>

												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<p class="text-center">3291</p>	
														</div>
													</div>
												</div>

												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<p class="text-center">3291</p>	
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
                                        		<legend>Listado de habitaciones</legend>
												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<div class="checkbox">
																<label>
																	<input type="checkbox" style="margin-top: 10px;"> <p class="text-center" style="color: white;">3291</p>	
																</label>
															</div>															
														</div>
													</div>
												</div>
												<div class="col-md-1">
													<div class="widget widget-stats bg-green">
														<div class="stats-icon"><i class="fa fa-desktop"></i></div>
														<div class="stats-info">
															<div class="checkbox">
																<label>
																	<input type="checkbox" style="margin-top: 10px;"> <p class="text-center" style="color: white;">3291</p>	
																</label>
															</div>															
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
		</div>
		<!-- end #content -->
		<!-- begin scroll to top btn -->
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
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="../resources/js/bwizard.js"></script>
	<script src="../resources/js/form-wizards.demo.min.js"></script>
	<script src="../resources/js/apps2.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			FormWizard.init();
		});
	</script>
</body>
</html>
