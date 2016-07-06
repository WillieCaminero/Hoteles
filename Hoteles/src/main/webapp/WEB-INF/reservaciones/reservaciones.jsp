<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Perfil de Usuario</title>
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
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
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
                                        <th>#</th>
                                        <th>Username</th>
                                        <th>Email Address</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Nicky Almera</td>
                                        <td>nicky@hotmail.com</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Edmund Wong</td>
                                        <td>edmund@yahoo.com</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Harvinder Singh</td>
                                        <td>harvinder@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Terry Khoo</td>
                                        <td>terry@gmail.com</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
			    </div>
			</div>
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
</body>

<!-- Mirrored from seantheme.com/color-admin-v2.0/admin/html/page_blank.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jul 2016 01:40:33 GMT -->
</html>
