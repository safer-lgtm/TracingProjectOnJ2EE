<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Tracer</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  
</head>
<body class="hold-transition sidebar-mini layout-fixed">
        <%
if (session.getAttribute("admin")==null){
	response.sendRedirect("index.html");
}
%>
<div class="wrapper">

  <!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="HomeA.jsp" class="nav-link">Home</a>
      </li>
      
    </ul>

    

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
   		<li class="nav-item d-none d-sm-inline-block">
   		
   		<a href="deco.do" class="nav-link" >Deconnexion</a>
   	
        
      </li>
 
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="index.html" class="d-block">SAFOUAN</a>
        </div>
      </div>

      
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <!-- Sidebar Menu -->
          <li class="nav-item has-treeview ">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Gestion Client
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="saisirC.do" class="nav-link">
                  <!-- <a href="/Tracer/saisirC.do" class="nav-link"> -->
                  <i class="far fa-circle nav-icon"></i>
                  <p>add client</p>
                </a>
              </li>
               <li class="nav-item">
               
                 <a href="affclient.do" class="nav-link ">
                <i class="far fa-circle nav-icon" ></i>
                <p>afiicher client</p>
               </a>
                
              </li>
                </ul>
               </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Gestion Employe
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="saisirE.do" class="nav-link active">
                  <!-- <a href="/Tracer/saisirE.do" class="nav-link"> -->
                  <i class="far fa-circle nav-icon"></i>
                  <p>add emp</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="affemp.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>afiicher emp</p>
                </a>
              </li>
            </ul>
          </li>
        <li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-tree"></i>
								<p>
									Gestion objet <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="saisirO.do"	class="nav-link"> 
								<!-- <a href="/Tracer/saisirO.do" class="nav-link"> -->
								<i class="far fa-circle nav-icon"></i>
										<p>add objet</p>
								</a></li>
								<li class="nav-item"><a
									href="affobjet.do"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>aff objet</p>
								</a></li>
								
							</ul></li>
							
			
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-map"></i>
								<p>
									Gestion type <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="saisirt.do"	class="nav-link"> 
									<!-- <a href="/Tracer/saisirO.do" class="nav-link"> -->
									<i class="far fa-circle nav-icon"></i>
										<p>select type</p>
								</a></li>
								<li class="nav-item"><a
									href="saisirtt.do"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>add type</p>
								</a></li>
								
							</ul></li>
											
						
							
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-edit"></i>
								<p>
									Gestion tache <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="saisirT.do"	class="nav-link"> 
									<!-- <a href="/Tracer/saisirT.do" class="nav-link"> -->
									<i class="far fa-circle nav-icon"></i>
										<p>add tache</p>
								</a></li>
								<li class="nav-item"><a
									href="afftache.do"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>aff tache</p>
								</a></li>
            </ul>
          </li>


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
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Type</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form  action ="addtype.do"  method="post">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">type</label>
                    <input type="text" class="form-control" name= "nom_type"  placeholder="Enter nom">
                  </div>
                 
                  
                </div>
                <!-- /.card-body -->

                 <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
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
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>