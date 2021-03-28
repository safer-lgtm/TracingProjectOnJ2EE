<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Tracer</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Ionicons -->

<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/summernote/summernote-bs4.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

</head>
<body >
		        <%
if (session.getAttribute("clt")==null){
	response.sendRedirect("/Tracer/templated-industrious/index.html");
}
%>

		<!-- Navbar -->
		<nav class="navbar navbar-expand navbar-primary navbar-dark">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				
				<li class="nav-item d-none d-sm-inline-block"><a
					href="/Tracer/templated-industrious/HomeC.jsp" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="/Tracer/caffo.do"
					class="nav-link">Mes Objets</a></li>
			</ul>

			

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item d-none d-sm-inline-block"><a
					href="/Tracer/deco.do" class="nav-link">Deconnexion</a></li>

				
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		

		<!-- Content Wrapper. Contains page content -->
		
			<!-- Content Header (Page header) -->
	
			<!-- /.content-header -->

			<!-- Main content -->
		
<br>
<br>


			<div class="card">
					<div class="card-header">
						<h3 class="card-title">List des tache de l 'objet:        ${       model.var}</h3>
					</div>
					<!-- /.card-header -->

					<div class="card-body">
					
					
							<table class="table table-bordered">
								<thead>
									<tr>
										
										<th>Nom</th>
										
										<th>Progression</th>
										<th>Etat</th>
										

										
								
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${model.taches}" var="tache" varStatus="vs">


										<tr>

											
											<th>${tache.nom}</th>
											
							 <td class="project_progress">
                          <div class="progress progress-sm">
                              <div class="progress-bar bg-green" role="progressbar" aria-volumenow="${tache.value}" aria-volumemin="0" aria-volumemax="100" style="width: ${tache.value}%">
                              </div>
                          </div>
                          <small>
                             ${tache.value}% Complete
                          </small>
                      </td>
											
											
											 <th><span class="${tache.couleur}">${tache.etat}</span></th>
											
									
									</c:forEach>



								</tbody>

							</table>

						
					</div>





					<!-- /.card-body -->
					<div class="card-footer clearfix">
						<ul class="pagination pagination-sm m-0 float-right">
							<li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
				<!-- /.card -->
		
		<!-- /.content-wrapper -->





		<!-- Control Sidebar -->
		
		<!-- /.control-sidebar -->
	
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/moment/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/dist/js/adminlte.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/dist/js/demo.js"></script>
</body>
</html>