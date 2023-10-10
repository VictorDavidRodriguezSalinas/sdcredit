<form id="frmAddCierreCaja" method="POST" action="">
	<body onload="enviarPost();" class="">
		<div class="align-content-center">
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						
						<div class="col-md-9">
							<div class="card card-success">
								<div class="card-header">
									<h3 class="card-title">Cierre de Caja</h3>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="tabCierreCaja" name="tabCierreCaja" class="table table-bordered table-striped">
											<thead>
												<th>Id</th>
												<th>Fecha apertura</th>
												<th>Monto apertura</th>
												<th>Cobros por ventas</th>
												<th>Total ingresos</th>
												<th>Total retiros</th>
												<th>Total egresos</th>
												<th>Monto en caja</th>
											
											</thead>
											<tbody>
											</tbody>
										</table>
									</div>
								</div>
								<div class="card-footer">
                <button type="submit" id="cmdGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Cerrar Caja</button> 
                 <button type="button" onclick='location.href="dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Salir</button>
                </div>
							</div>
						</div>

					</div>

				</div>
		</div>
		</section>
		</div>
		<script src="assets/jquery/jquery-3.3.1.min.js"></script>
		<script src="assets/popper/popper.min.js"></script>
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/datatables/datatables.min.js"></script>
		<script type="text/javascript" src="view/mantenimiento/formAddCierreCaja.js"></script>

	</body>
</form>




