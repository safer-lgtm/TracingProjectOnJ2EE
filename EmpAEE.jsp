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
<body class="hold-transition sidebar-mini layout-fixed">
	        <%
if (session.getAttribute("emp")==null){
	response.sendRedirect("index.html");
}
%>
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="HomeE.jsp" class="nav-link">Home</a></li>
				
			</ul>

	

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item d-none d-sm-inline-block"><a
					href="deco.do" class="nav-link">Deconnexion</a></li>

				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"> <i
						class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="${pageContext.request.contextPath}/admin/AdminLTE-3.0.1/dist/img/AdminLTELogo.png"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">Espace d'employe</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				
			


				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<!-- Sidebar Menu -->
						


						<li class="nav-item has-treeview menu-open"><a href="#"
							class="nav-link active"> <i class="nav-icon fas fa-edit"></i>
								<p>
									Gestion tache <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="affdemande.do"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Demande en cours</p>
								</a></li>
								<li class="nav-item"><a
									href="affetacche.do"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>aff tache</p>
								</a></li>
								
							</ul></li>


					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark"></h1>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">

				<div class="card">
					<div class="card-header">
						<h3 class="card-title">List de tache</h3>
					</div>
					<!-- /.card-header -->

					<div class="card-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th style="width: 10px">id</th>
										<th>Nom</th>
										
										<th>Progression</th>
										<th>Etat</th>
										<th>identifiant d'objet</th>
									
										
								
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${model.taches}" var="tache" varStatus="vs" >


										<tr>

											<th>${tache.idTaches}</th>
										
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
											
											<th>${tache.num_obj}</th>
											

		

											<th style="width: 10px">
												<!-- modal button -->
												<button type="button" class="btn btn-primary"
													data-toggle="modal" data-target="#myModal${vs.index}"
													id="viewDetailButton${vs.index}">
													<i class="fa fa-pencil-square-o"></i>
												</button>
											</th>


											<th style="width: 30px"><a
												onclick="return confirm('voulez vous envoyer au bureau suivant?')"
												href="adddemande.do?ido=${tache.num_obj}&ide=${tache.employe_idEmploye }"> <i
													class='fa fa-folder fa-2x' style='color: blue'></i></a></th>

		
<%-- 									<th style="width: 10px">
												<!-- modal button -->
												<button type="button" class="btn btn-primary"
													data-toggle="modal" data-target="#myModal${vs.index}"
													id="viewDetailButton${vs.index}">
													<i class="fa fa-at"></i>
												</button>
											</th>
 --%>		
		
										</tr>





										<div class="modal fade modalEditClass" id="myModal${vs.index}" tabindex="-1" role="dialog" aria-hidden="true">

											<div class="modal-dialog" role="document">
												<div class="modal-content">

													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Edit</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>



													<div class="modal-body">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Edit Tache</h3>
        </div>
        <!-- /.card-header -->
        <!-- modalform start -->

        <div class="card-body">

            <form id="myForm${vs.index}" action="modvalue.do" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">id Tache</label>
                    
                    <input type="text" class="form-control" name="id" value=${tache.idTaches } readonly>
                </div>
             
          
                  <div class="form-group">
                    <label for="exampleInputEmail1">Progression</label>
                    <input type="text" class="form-control" name="value" value=${tache.value } >
                </div>
                  
                 <div class="form-group">
		        
		                <div class="select-wrap one-third">
		                <label for="exampleInputEmail1">Etat</label>
	                    
	                    <select name="etat"    class="form-control" placeholder="etat" required>
	               
	                      <option value="En cours">En cours</option>
	                      <option value="ERREUR">ERREUR</option>
	                      <option value="Success">Success</option>
	                      
	                    </select>
	                  </div>
	                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Identifiant d'objet</label>
                    <input type="text" class="form-control" name="ido" value=${tache.num_obj } readonly>
                </div>
                 <div class="form-group">
                   
                    <input type="text" class="form-control" name="ide" value=${tache.employe_idEmploye } hidden >
                </div>
                


															<div class="card-footer">
										

																<input type='button' value='submit${vs.index}'
																	class="btn btn-primary"
																	onclick='document.forms["myForm${vs.index}"].submit();' />

															</div>
																</form>
        </div>
															<!-- /.card-body -->

															</div>

														</div>


													</div>




												</div>
											</div>




 
<%-- 										<div class="modal fade modalEditClass" id="myModal${vs.index}" tabindex="-1" role="dialog" aria-hidden="true">

											<div class="modal-dialog" role="document">
												<div class="modal-content">

													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Send</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>



													<div class="modal-body">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Indicer Probleme</h3>
        </div>
        <!-- /.card-header -->
        <!-- modalform start -->

        <div class="card-body">

            <form id="myForm${vs.index}" action="send.do" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Recipient address</label>
                    
                    <input type="text" class="form-control" name="recipient">
                </div>
             
          
                  <div class="form-group">
                    <label for="exampleInputEmail1">Subject</label>
                    <input type="text" class="form-control" name="subject" >
                </div>
                  
                
                  <div class="form-group">
                    <label for="exampleInputEmail1">Content</label>
                    <textarea class="form-control" name="content"></textarea>
                </div>
                 
                


															<div class="card-footer">
										

																<input type='button' value='submit${vs.index}'
																	class="btn btn-primary"
																	onclick='document.forms["myForm${vs.index}"].submit();' />

															</div>
																</form>
        </div>
															<!-- /.card-body -->

															</div>

														</div>


													</div>




												</div>
											</div>
 --%>













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
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->





		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
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