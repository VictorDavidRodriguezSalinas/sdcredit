<body class="hold-transition sidebar-mini">
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 col-sm-6 col-lg-3">

          <div class="small-box bg-success">
            <div class="inner">
              <h3 id="cantAnimal"></h3>
              <p>Ganados en stock</p>
            </div>
            <div class="icon">
              <i class="fa fa-clipboard-check"></i>
            </div>
            <a href="Ganado" class="small-box-footer">Más información <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3">

          <div class="small-box bg-info">
            <div class="inner">
              <h3 id="totVentas"></h3>
              <p>Total ventas</p>
            </div>
            <div class="icon">
              <i class="fa fa-chart-line"></i>
            </div>
            <a href="Ventas" class="small-box-footer">Más información <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3">
          <div class="small-box bg-teal">
            <div class="inner">
              <h3 id="totPago"></h3>
              <p>Total pagado</p>
            </div>
            <div class="icon">
              <i class="fa fa-chart-line"></i>
            </div>
            <a href="Ventas" class="small-box-footer">Más información <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3">
          <div class="small-box bg-danger">
            <div class="inner">
              <h3 id="totDeuda"></h3>
              <p>Total ventas por cobrar</p>
            </div>
            <div class="icon">
              <i class="fa fa-chart-line"></i>
            </div>
            <a href="Ventas" class="small-box-footer">Más información <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

       



        <div class="col-12 col-sm-6 col-lg-3">

          <div class="small-box bg-primary">
            <div class="inner">
              <h3 id="totCaja"></h3>
              <p>Dinero en caja</p>
            </div>
            <div class="icon">
              <i class="fa fa-cash-register"></i>
            </div>
            <a href="Cierre" class="small-box-footer">Más información <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <aside class="control-sidebar control-sidebar-dark">
  </aside>
  <script src="assets/jquery/jquery-3.3.1.min.js"></script>
  <script>
    $(function() {

      nomtab = "animales WHERE idest=1";
      campos = "count(idani) as cant ";
      $.ajax({
        url: 'controller/listarCamposTabla.php',
        type: 'POST',
        data: {
          tabla: nomtab,
          campos: "count(idani) as cant"
        },
        success: function(res) {

          var js = JSON.parse(res);
          for (var i = 0; i < js.length; i++) {
            $("#cantAnimal").append(Number(js[i].cant).toLocaleString('ES-es'));


          }

        }


      });

      nomtab = "ventas WHERE estven<>'ELI'";

      $.ajax({
        url: 'controller/listarCamposTabla.php',
        type: 'POST',
        data: {
          tabla: nomtab,
          campos: "sum(totven) as totven, sum(totven-pagven) as deuda, sum(pagven) as totpag"
        },
        success: function(res) {

          var js = JSON.parse(res);
          $("#totVentas").append(Number(js[0].totven).toLocaleString('ES-es'));
          $("#totDeuda").append(Number(js[0].deuda).toLocaleString('ES-es'));
          $("#totPago").append(Number(js[0].totpag).toLocaleString('ES-es'));

        }


      });

      nomtab = "ingresoventas p JOIN apertura a ON p.idapc=a.idapc WHERE a.estapc=1";

      $.ajax({
        url: 'controller/listarCamposTabla.php',
        type: 'POST',
        data: {
          tabla: nomtab,
          campos: "SUM(monefe) AS totcaj"
        },
        success: function(res) {

          var js = JSON.parse(res);
          $("#totCaja").append(Number(js[0].totcaj).toLocaleString('ES-es'));


          for (var i = 0; i < js.length; i++) {



          }

        }


      });

    });
  </script>

</body>