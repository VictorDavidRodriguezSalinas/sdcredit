<form id="frmLisCierreCaja" method="POST" action="">

	<body onload="enviarPost();" class="">
		<div class="align-content-center">
			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-12">
							<div class="card card-success">
								<div class="card-header">
									<h3 class="card-title">Listado de Cierres de Caja</h3>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="tabCierreCaja" name="tabCierreCaja" class="table table-bordered table-striped">
											<thead>
												<th>Id</th>
												<th>Fecha apertura</th>
												<th>Fecha cierre</th>
												<th >Monto apertura</th>
												<th >Cobros por ventas</th>
												<th >Total ingresos</th>
												<th >Total retiros</th>
												<th >Total egresos</th>
												<th >Monto cierre</th>

											</thead>
											<tbody>
											</tbody>
											<tfoot>
												<tr>
													<th ></th>
													<th ></th>
													<th ></th>
													<th ></th>
													<th ></th>												
													<th ></th>
													<th ></th>
												
												
													<th style="text-align:right">TOTAL :</th>
													<th></th>
												</tr>
											</tfoot>
										</table>
									</div>
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
		<script type="text/javascript" src="view/mantenimiento/formLisCierreCaja.js"></script>

	</body>
</form>