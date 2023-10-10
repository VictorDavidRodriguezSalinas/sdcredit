<form id="frmAddUser" method="POST" action="">

  <body class="">
    <div class="align-content-center">
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title"><small> Inicio de sesión </small></h3>
                </div>
                <form id="quickForm">
                  <div class="card-body">
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                      </div>
                      <input type="text" name="txtlogusu" id="txtlogusu" class="form-control" placeholder="Usuario" required>
                    </div>
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-unlock"></i></span>
                      </div>
                      <input type="password" name="txtclausu" id="txtclausu" class="form-control" placeholder="Clave" required>
                    </div>
                  </div>
                  <div id="respuesta"></div>
                  <div class="card-footer">
                    <button id='cmdBUS' type="button" onClick="ver();" class="btn btn-outline-success"><i class="fas fa-sign-in-alt"></i> Iniciar sesión</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <script>
      function ver() {
        $.ajax({
      url: 'controller/verificar.php',
      type: 'POST',
      data: $('#frmAddUser').serialize(),
      success: function(res){
        var js= JSON.parse(res);
        if (js.estado === 'no'){
                swal("Advertencia", "Usuario incorrecto", "warning");  
        }else if(js.estado === 'ok')
        {
       //   swal("Advertencia", "Usuario correcto", "success");  
       <?php 
         // $_SESSION['login']='ok';
          $_SESSION['pag']='Principal'; ?>
          location.href='dashboard';
         
        }
      }
    });
      }
    </script>
  </body>
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- DataTables -->
  <script src="plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>