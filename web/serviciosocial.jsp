<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Servicio"%>
<%@page import="ModeloDAO.ServicioDAO"%>
<%@page session="true" %>
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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- ICONO -->
    <link rel="icon" type="image/png" href="formulario_correo/images/icons/SIAI.ico"/>
    
    <title> SERVICIO CURSO 901 </title>
 
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
  
  <link href="modulos/css/theme.css" rel="stylesheet" media="all">
  
    <!-- ESTILO BOTONES -->   
        <link href="css/botones_css.css" rel="stylesheet" media="all">
        <link href="css/botones_servicio.css" rel="stylesheet" media="all">
  
      
     <!-- Librerias alertas-->   
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

    <script type="text/javascript">
        $(document).ready(function(){
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function(){
                        if(this.checked){
                                checkbox.each(function(){
                                        this.checked = true;                        
                                });
                        } else{
                                checkbox.each(function(){
                                        this.checked = false;                        
                                });
                        } 
                });
                checkbox.click(function(){
                        if(!this.checked){
                                $("#selectAll").prop("checked", false);
                        }
                });
        });
    </script>
    
    <script type="text/javascript">    var tableToExcel = (function() {
        var uri = 'data:application/vnd.ms-excel;base64,'
        , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
        , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
        , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
        return function(table, name) {
        if (!table.nodeType) table = document.getElementById(table)
        var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
        //window.location.href = uri + base64(format(template, ctx))
        var link = document.createElement("a");
        link.download = "PLANILLA DE ESTUDIANTES SERVICIO SOCIAL.xls";
        link.href = uri + base64(format(template, ctx));
        link.click();
        }
        })()
    </script>

</head>

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
                          <li>
                            <a href="servicio_estudiante_lista.jsp">
                                <i class="fas fa-fast-backward"></i>Regresar</a>
                          </li>
                               
                            <hr>
                            <!-- Linea entre texto-->

                            <ul 
                            class="list-unstyled navbar__sub-list js-sub-list">
                            </ul>
                        
                          <li>
                            <a href="usuarios.jsp">
                                <i class="fas fa-user"></i> Usuarios </a>
                           </li>
                           
                        <li>
                            <a href="gestion_cursos.jsp">
                                <i class="fas fa-copy"></i>Gesti�n Acad�mica</a>
                        </li>
                        
                        <li>
                            <a href="biblioteca_admin.jsp">
                                <i class="fas fa-book-reader"></i> Biblioteca Virtual </a>
                        </li>
                           
                        
                        <li>
                            <a href="documentacion.jsp">
                            <i class="fas fa-folder-open"></i> Documentaci�n </a></center>
                        </li>    
                        
                                                        
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
                                <h1 class="titulo_modulo">LISTA DE ESTUDIANTES 901 </h1>
                                    <style>
                                        .titulo_modulo{
                                            color: #FFFFFF;
                                            font-size: 25px;
                                        }
                                    </style>
                            </form>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="modulos/images/icon/avatar-01.png" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Esteban G�mez &nbsp; </a>
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
                                                    <span class="email">Administrador</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Configuraci�n de la cuenta </a>
                                                </div>
                                                
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="index.html">
                                                    <i class="zmdi zmdi-power"></i>Cerrar Sesi�n</a>
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
        <div class="row">
            <!-- Area Chart -->
            <div class="col-xl-12 col-lg-12" class="tabla_servicio">
                <div class="card shadow mb-4">
                    <form action="CargaMasivaServicio" enctype="multipart/form-data" method="post">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            
                            <!-- FILTRO = LABEL / INPUT -->
                                    <label class="label_filtrar"> Filtrar :</label>
                                        <input class="input_filtrar" id="txtBusqueda" type="text" onkeyup="Buscar();" data-toggle="tooltip" title="FILTRAR DATOS REGISTRADOS" /> &nbsp; &nbsp;   
                               
                        <!-- BOTON PARA AGREGAR -->
                            <a class="bttn-unite bttn-sm bttn-primary" href="CrudServicio?accion=add" data-toggle="tooltip" title="AGREGAR UN NUEVO REGISTRO">
                                AGREGAR
                            </a> &nbsp;  | &nbsp; 
                               
                            <!-- CARGA DE DATOS MASIVA = BOTON / FILE -->
                <button class="bttn-unite bttn-sm bttn-primary" type="submit" name="Subir informaci�n" data-toggle="tooltip" title=" CONFIRMAR CARGA DE DATOS MASIVA"> 
                        SUBIR  
                    </button> &nbsp;  
                    <input class="bttn-unite bttn-sm bttn-primary" type="file" name="fichero" size="70" accept="text/plain;image/jpeg" data-toggle="tooltip" title="CARGAR DATOS DE FORMA MASIVA"> &nbsp;  | &nbsp; 
            
                    
        <!--  BOTON  =  PLANILLA FISICA -->
            <a href="https://drive.google.com/drive/folders/12HMKaaM1NI54PiQBs5zJCyGkv5NklQFM?usp=sharing" class="bttn-unite bttn-sm bttn-warning" data-toggle="tooltip" title="IR A PLANILLA FISICA" >
                DRIVE
            </a>                       
<!--  BOTON  =  PLANILLA FISICA -->
    <button class="bttn-unite bttn-sm bttn-success" onclick="tableToExcel('tblPersonas', 'Empleados')" class="btn btn-success"  data-toggle="tooltip" title="EXPORTAR REGISTROS A EXCEL">
        EXCEL
    </button>
               
<div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    
                  </div>
                </div>
</form>
         
              <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                      <table id="tblPersonas"  class="table" id="testTable" border="1">
                          <thead class="thead-dark">
                             <tr>
                                 <!--<th class="campo">ID</th>                                             
                                 <th class="campo">NOMBRE</th>                                               
                                 <th class="campo">APELLIDO</th> -->    
                                 <th class="campo">NUMERO DE HORAS</th>  
                                 <th class="campo">BOLETA DE ACTIDAD </th>                                                
                                 <th class="campo">NOMBRE ENTIDAD</th>                                                    
                                 <th class="campo_acciones">ACCIONES</th>                                  
                             </tr>
                           </thead>
                           
                               <%                                             
                                    ServicioDAO dao=new ServicioDAO();                                           
                                    List<Servicio>list=dao.listar();                                           
                                    Iterator<Servicio>iter=list.iterator();                                           
                                    Servicio ser=null;                                           
                                    while(iter.hasNext()){                                           
                                    ser=iter.next();                                        
                                %>
                              
                            <tbody
                                
                                     <tr>                                              
                                         <!--<td><%=ser.getNombre()%></td>                                               
                                         <td><%=ser.getApellido()%></td>   -->                                            
                                         <td><%=ser.getNumHoras()%></td>                                              
                                         <td> 
                                            <a href="Pagina1.jsp" class="bttn-unite bttn-sm bttn-danger" data-toggle="tooltip" title="ABRIR BOLETA DE CONSTANCIA">
                                                VER BOLETA
                                            </a>
                                         </td>                                               
                                         <td><%=ser.getNombreEntidad()%></td>  

                        <td>
                            <div class="form-group">
                                <div class="input-icon">
                                   
                                    <a class="boton_editar" class="input-icon-addon" href="CrudServicio?accion=editar&idServicioSocial=<%=ser.getIdServicioSocial()%>" >
                                        <i data-toggle="tooltip" title="EDITAR REGISTRO" class="fa fa-edit"></i>                         
                                    </a>                           
                                                                                          
                                    <button onClick="mensaje(<%=ser.getIdServicioSocial()%>)" class="boton_remover" data-toggle="tooltip"  title="ELIMINAR REGISTRO" class="bttn-slant bttn-md bttn-danger">
                                        <i class="fa fa-trash" title="ELIMINAR REGISTRO"></i>
                                    </button>
      
                                </div>
                            </div>             
                        </td>    
                    </tr>
                    <% } %>
                </tbody>     
                            </table>
      </div>
      <!-- End of Main Content -->
      
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
            </div></div></div></div>

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  
 
    <!-- Script TABLA FILTRO -->
  <script type="text/javascript">// < ![CDATA[
        function Buscar() {
                    var tabla = document.getElementById('tblPersonas');
                    var busqueda = document.getElementById('txtBusqueda').value.toLowerCase();
                    var cellsOfRow="";
                    var found=false;
                    var compareWith="";
                    for (var i = 1; i < tabla.rows.length; i++) {
                        cellsOfRow = tabla.rows[i].getElementsByTagName('td');
                        found = false;
                        for (var j = 0; j < cellsOfRow.length && !found; j++) { compareWith = cellsOfRow[j].innerHTML.toLowerCase(); if (busqueda.length == 0 || (compareWith.indexOf(busqueda) > -1))
                            {
                                found = true;
                            }
                        }
                        if(found)
                        {
                            tabla.rows[i].style.display = '';
                        } else {
                            tabla.rows[i].style.display = 'none';
                        }
                        }
                   
                    
                }
        //s ]]></script>

  <!-- Script ALERTA ELIMINAR -->
    <script>
        function mensaje(idServicioSocial) {
        Swal.fire({
        title: '�Estas seguro?',
        text: "�No podr�s revertir esto!",
        type: 'advertencia',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, borrar registro'
        }).then((result) => {
        if (result.value) {
        location.href = "CrudServicio?accion=eliminar&idServicioSocial=" + idServicioSocial;
        }
        }
                )
    }
    </script>
  
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
