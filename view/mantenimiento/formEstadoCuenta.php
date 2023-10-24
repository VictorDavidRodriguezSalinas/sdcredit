<form id="frmLisCierreCaja" method="POST" action="">
	<input type="text" name="txtidusu" id="txtidusu" class="form-control" value="<?php echo $_SESSION['idusu']; ?>" hidden>
	<input type="text" name="txtnivusu" id="txtnivusu" class="form-control" value="<?php echo $_SESSION['nivusu']; ?>" hidden>

	<body onload="enviarPost();" class="">
		<div class="align-content-center">
			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-12">
							<div class="card card-success">
								<div class="card-header">
									<h3 class="card-title">Estado de Cuentas</h3>
								</div>
								<div class="card-body">
									<div class="table table-bordered">
										<table id="tabEstado" name="tabEstado" class="table table-bordered table-striped">
											<thead>
												<th>Nº Pagaré</th>
												<th>Ruc</th>
												<th>Razón Social</th>
												<th>Nº Cuota</th>
												<th>Vencimiento</th>
												<th>Monto cuota</th>
												<th>Atraso días</th>
												<th>Interés </th>
												<th>Cobrado </th>
												<th>A Cobrar</th>
												<th>Estado</th>


											</thead>
											<tbody>
												

											</tbody>
											<tfoot>
												<tr>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th style="text-align:right">TOTAL A COBRAR :</th>
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
		<script type="text/javascript" src="view/mantenimiento/formEstadoCuenta.js"></script>

	</body>
</form>