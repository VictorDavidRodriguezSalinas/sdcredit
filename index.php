<?php

session_start();
$fechaActual = date("d-m-Y");

?>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gestión de Créditos</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->

  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="dist/js/alerts/alertifyjs/css/alertify.min.css">
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">




  <link rel="stylesheet" href="dist/js/alerts/alertifyjs/css/themes/default.min.css" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


  <!-- de  advanced -->

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes ano inputs -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker --->
  <link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="plugins/dropzone/min/dropzone.min.css">
  <!-- Theme style -->

  <link rel="stylesheet" href="assets/galeria.css" />
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link rel="stylesheet" href="tablemax.css">

  <style type="text/css">
/* Estilo personalizado para imprimir el footer */
@media print {
  table.table tfoot {
    display: table-row-group; /* Asegura que el footer se muestre en la impresión */
  }
}



</style>

</head>
<script language="javascript" src="dist/js/alerts/alertifyjs/alertify.min.js"></script>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__shake" src="icons/logo.png" height="60" width="60">
    </div>

    <?php include_once 'navbar.php'; ?>
    <?php include_once 'sidebar.php'; ?>




    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0"></h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">

              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <?php


          if (isset($_SESSION['login'])) {
            if ($_SESSION['login'] == 'ok') {

              if (isset($_GET['page'])) {

                switch ($_GET['page']) {
                  case '':
                    require "dashboard.php";
                    break;
                  case 'login':
                    require "login.php";
                    break;
                  case 'dashboard':
                    require "dashboard.php";
                    break;
                  case 'adduser':
                    if ($_SESSION['nivusu'] == 2) {
                      break;
                    };
                    require "view/mantenimiento/formAddUser.php";
                    break;
                  case 'credito':
                    if ($_SESSION['nivusu'] == 2) {
                      break;
                    };
                    require "view/mantenimiento/formAddCuotas.php";
                    break;
                  case 'Auditoria':
                    if ($_SESSION['nivusu'] == 2) {
                      break;
                    };
                    require "view/mantenimiento/formAuditoria.php";
                    break;
                  case 'Apertura':
                    require "view/mantenimiento/formAddApertura.php";
                    break;
                  case 'Cobrar':
                    require "view/mantenimiento/formAddPagoCuota.php";
                    break;

                  case 'Retiro':
                    require "view/mantenimiento/formAddRetiroCaja.php";
                    break;
                  case 'Cierre':
                    require "view/mantenimiento/formAddCierreCaja.php";
                    break;
                  case 'Cierres':
                    require "view/mantenimiento/formLisCierreCaja.php";
                    break;

                  case 'Cliente':
                 
                    require "view/mantenimiento/formAddCliente.php";
                    break;
                  case 'Clientes':
                    require "view/mantenimiento/formLisClientes.php";
                    break;
                  case 'Buckup':
                    if ($_SESSION['nivusu'] == 2) {
                      break;
                    };
                    require "view/mantenimiento/formBuckup.php";
                    break;

                  case 'Retiro':
                    require "view/mantenimiento/formAddRetiroCaja.php";
                    break;
                  case 'Creditos':
                    require "view/mantenimiento/formEstadoCuenta.php";
                    break;
                    case 'Morosos':
                      require "view/mantenimiento/formLisMorosos.php";
                      break;
                    case 'anular':
                      require "view/mantenimiento/formAnular.php";
                      break;
                }
              } else {
                require "login.php";
              }
            } else {
              require "login.php";
            }
          } else {
            require "login.php";
          }


          ?>




        </div><!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?php include_once 'footer.php'; ?>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->

  <!-- Plugin Sweet alert -->
  <script src="dist/js/alerts/sweetalert/sweetalert.min.js"></script>
  <!-- Plugins Alertify -->
  <script src="dist/js/alertifyjs/alertify.min.js"></script>

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

  <script src="plugins/inputmask/jquery.inputmask.min.js"></script>
  <!-- date-range-picker -->
  <script src="plugins/daterangepicker/daterangepicker.js"></script>


  <script src="assets/jquery/jquery-3.3.1.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>

  <!-- datatables JS -->
  <script type="text/javascript" src="assets/datatables/datatables.min.js"></script>
  <script src="plugins/select2/js/select2.full.min.js"></script>

  <!-- DataTables  & Plugins -->
  <script src="plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="plugins/jszip/jszip.min.js"></script>
  <script src="plugins/pdfmake/pdfmake.min.js"></script>
  <script src="plugins/pdfmake/vfs_fonts.js"></script>
  <script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>



</body>

</html>