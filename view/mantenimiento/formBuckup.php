
<form id="frmAddUser" method="POST" action=""> 
<body class="">
  <div class="align-content-center">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title"><small>  </small>Generar copia de seguridad</h3>
         
                
              </div>

              <div class="col-lg-6">
							<div class="box-header with-border">
								<h1 class="box-title"><button id='cmdBUS' type="button" onClick="ver();" class="btn btn-outline-success"><i class="fas fa-database"></i> Crear Respaldo</button></h1>
								<div class="box-tools pull-right">
								</div>
							</div>

						</div>

              <form id="quickForm">
              <div class="card-body">
              <div class="table-responsive">        
                  <table id="tabUser" name="tabUser" class="table table-bordered table-striped">
                      <thead>
                          <th>Id</th>
                          <th>Fecha / Hora</th>
                          <th>Archivo</th>
                          <th>Opciones</th>
                      </thead>
                      <tbody>                           
                        </tbody>  
                    </table>  
              </div>
              </div>
                 
                <div class="card-footer">
 
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
	
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
<script type="text/javascript" src="view/mantenimiento/formBuckup.js"></script>


