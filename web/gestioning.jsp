<<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.GestionIng"%>
<%@page import="ModeloDAO.GestioningDAO"%>


<!DOCTYPE html>
<html lang="es">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="au theme template">
  <meta name="author" content="Hau Nguyen">
  <meta name="keywords" content="au theme template">
  
  <!-- Bootstrap CSS-->
    <link href="modulos/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="modulos/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="modulos/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="modulos/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="modulos/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="modulos/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="modulos/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="modulos/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    
     <!-- ICONO -->
    <link rel="icon" type="image/png" href="formulario_correo/images/icons/SIAI.ico"/>
    <title> MANAGEMENT ING</title>

  <!-- Custom fonts for this template-->
  <link href="modulos/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="modulos/css/font-face.css" rel="stylesheet" media="all">
  <link href="modulos/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <link href="modulos/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
  <link href="modulos/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

  <!-- Main CSS-->
  <link href="modulos/css/theme.css" rel="stylesheet" media="all">
  <link href="modulos/css/estilo_tabla.css" rel="stylesheet" media="all">
  <link href="modulos/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Main CSS-->
    <link href="modulos/css/theme.css" rel="stylesheet" media="all">
  

</head>
<STYLE>A {text-decoration: none;} </STYLE>

<body id="page-top"><p><br><p><br><br>

  <!-- Page Wrapper -->
  <div id="wrapper">



      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img class="logo_siai" src="modulos/images/icon/usuario.png" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <center>
                            <li class="C has-sub">

                            <!-- Linea entre texto-->
                            <hr>

                            <a  href="modulos_ing.jsp">
                                <i class="fas fa-fast-backward"></i>Back</a>
                               
                            <hr>
                            <!-- Linea entre texto-->

                            <ul 
                            class="list-unstyled navbar__sub-list js-sub-list">
                            </ul>
                        </li>
                        <li>
                            <a href="usuariosing.jsp">
                                <i class="fas fa-user"></i> User </a>
                                
                        <li>
                            <a href="documentacioning.jsp">
                                <i class="fas fa-copy"></i> Documentation </a>
                        
                           
                        
                        <li>
                            <a  href="servicio_estudiante_ing.jsp">
                            <i class="fas fa-list"></i> Social Service </a></center>
                        
                                                        
                            <ul class="list-unstyled navbar__sub-list js-sub-list">

                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
    </ul>
    <!-- End of Sidebar -->

    <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Buscar ..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="modulos/images/icon/avatar-01.png" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Esteban G�mez</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="modulos/images/icon/avatar-01.png" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Esteban G�mez</a>
                                                    </h5>
                                                    <span class="email">esteban@prueba1.com</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="index_ing.jsp">
                                                    <i class="zmdi zmdi-power"></i>Log Out</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

        <!-- Begin Page Content -->
        <div class="container-fluid">


          <!-- Content Row -->
         
          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-12 col-lg-12" class="tabla_servicio">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                 <h6 class="m-0 font-weight-bold text-primary"> � List of available activities !</h6>  
                 <a  class="btn btn-primary" href="CrudGestioning?accion=add" >ADD OTHER</a>    
                
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                    <center>
                       <table class="table" id="testTable" border="1">
                              <thead class="thead-dark">
                                            <tr >
                                                <!--<th >ID</th>-->
                                                <th>ACTIVITY NAME</th>
                                                <th>ACTIVITY DESCRIPTION </th>
                                                <th>CREDIT CLASS</th>
                                                <th>DATE</th>
                                                <th>PERIOD</th>
                                                <th>RESOURCE</th>
                                                <th>ACTIONS</th>
                                            </trad>
                                        <% 
                                            GestioningDAO dao=new GestioningDAO();
                                            List<GestionIng>list=dao.listar();
                                            Iterator<GestionIng>iter=list.iterator();
                                            GestionIng ges=null;
                                            while(iter.hasNext()){
                                            ges=iter.next();

                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=ges.getNombre()%></td>
                                                <td><%=ges.getDescripcion()%></td>
                                                <td><%=ges.getMateria()%></td>
                                                <td><%=ges.getFecha()%></td>
                                                <td><%=ges.getPeriodo()%></td>
                                                <td><%=ges.getRecurso()%></td>
                                       
                                            <td>
                                             <div class="form-group">
                                                <div class="input-icon">
                                                    <a class="boton_editar" class="input-icon-addon" href="CrudGestioning?accion=editar&idGestion=<%=ges.getIdGestion()%>" >
                                                        <i title="EDIT" class="fa fa-edit"></i>                         
                                                    </a>                           
                                                                
                                            
                                                
                                                    <a class="boton_remover" class="input-icon-addon" href="CrudGestioning?accion=eliminar&idGestion=<%=ges.getIdGestion()%>" >
                                                        <i title="DELETE"  class="fa fa-trash"></i>
                                                    </a>
      
                                                </div>
                                                        
                                            </div>            
                                        </td>    
                                                
                                                
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                </div>
              </div>
            </div>

        

      </div>
      <!-- End of Main Content -->
      
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  
    <!-- Jquery JS-->
    <script src="modulos/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="modulos/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="modulos/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="modulos/vendor/slick/slick.min.js">
    </script>
    <script src="modulos/vendor/wow/wow.min.js"></script>
    <script src="modulos/vendor/animsition/animsition.min.js"></script>
    <script src="modulos/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="modulos/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="modulos/vendor/counter-up/jquery.counterup.min.js"></script>
    <script src="modulos/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="modulos/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="modulos/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="modulos/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="modulos/js/main_1.js"></script>
    <script src="modulos/js/main_servicio.js"></script>


    <!-- Bootstrap core JavaScript-->
    <script src="modulos/vendor/jquery/jquery.min.js"></script>
    <script src="modulos/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="modulos/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="modulos/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="modulos/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="modulos/js/demo/chart-area-demo.js"></script>
    <script src="modulos/js/demo/chart-pie-demo.js"></script>


</body>

</html>
