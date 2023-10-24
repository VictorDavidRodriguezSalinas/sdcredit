<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <a href="#" class="brand-link">
    <img src="icons/logo.png" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">Gestión de Créditos</span>
  </a>
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <!-- <div class="image">
        <img src="dist/img/users/1.png" class="img-circle elevation-2" alt="User Image">
      </div> -->
      <div class="info">
        <a href="#" class="d-block"><?php
                                    if (isset($_SESSION['nomusu'])) {
                                      if ($_SESSION['login'] == 'no') {
                                        $_SESSION['nomusu'] = '';
                                      }
                                      echo ('Usuario: ' . $_SESSION['nomusu']);
                                    }
                                    ?></a>
      </div>
    </div>
    <!-- SidebarSearch Form -->
    <div class="form-inline">
      <div class="input-group" data-widget="sidebar-search">
        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-sidebar">
            <i class="fas fa-search fa-fw"></i>
          </button>
        </div>
      </div>
    </div>
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

        <!-- CLIENTES -->

        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-user text-success"></i>
            <p>
              Clientes
              <i class="fas fa-angle-left right "></i>
            </p>
          </a>

          <ul class="nav nav-treeview" <?php if ($_SESSION['nivusu'] == 2) {
                                          echo ("hidden");
                                        }; ?>>
            <li class="nav-item">
              <a href="Cliente" class="nav-link">
                <i class="fas fa-plus nav-icon"></i>
                <p>Registrar cliente </p>
              </a>
            </li>
          </ul>

          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="Cliente" class="nav-link">
                <i class="fas fa-list nav-icon"></i>
                <p>Listado de clientes </p>
              </a>
            </li>
          </ul>


        </li>



        <!-- PRESTAMOS -->

        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-calculator text-warning"></i>
            <p >
              Créditos
              <i class="fas fa-angle-left right text-info"></i>
            </p>
          </a>

          <ul class="nav nav-treeview">
            <li class="nav-item" <?php if ($_SESSION['nivusu'] == 2) {
                                    echo ("hidden");
                                  }; ?>>
              <a href="credito" class="nav-link">
                <i class="fas fa-check-double nav-icon text-success"></i>
                <p>Registrar crédito </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="Creditos" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Estado de cuenta </p>
              </a>
            </li>

            <li class="nav-item" <?php if ($_SESSION['nivusu'] == 2) {
                                    echo ("hidden");
                                  }; ?>>
              <a href="anular" class="nav-link">
              <i class="nav-icon fa fa-ban text-danger"></i>
                <p>Anular Pagaré </p>
              </a>
            </li>

          </ul>


        </li>


        <!-- CAJA -->

        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-calendar-check "></i>
            <p>
              Cobranzas
              <i class="fas fa-angle-left right "></i>
            </p>
          </a>

          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="Apertura" class="nav-link">
                <i class="fas fa-check-double nav-icon"></i>
                <p>Aperturar caja </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="Cobrar" class="nav-link">
                <i class="fas fa-sort-amount-down nav-icon"></i>
                <p>Cobrar Cuota </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="Retiro" class="nav-link">
                <i class="fas fa-sort-amount-down nav-icon"></i>
                <p>Retiro de dinero </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="Cierre" class="nav-link">
                <i class="fas fa-toggle-off nav-icon"></i>
                <p>Cerrar caja </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="Cierres" class="nav-link">
                <i class="far fa-file-alt nav-icon"></i>
                <p>Informe de cierres </p>
              </a>
            </li>
          </ul>




        </li>


        <!-- USUARIOS -->
        <li class="nav-item has-treeview" <?php if ($_SESSION['nivusu'] == 2) {
                                            echo ("hidden");
                                          }; ?>>
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-tools"></i>
            <p>
              Configuraciones
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">


            <li class="nav-item">
              <a href="Auditoria" class="nav-link">
                <i class="nav-icon fa fa-cog text-warning"></i>
                <p class="text">Auditoría</p>
              </a>
            </li>
            <li class="nav-item">
              <?php
              $ir = "#";
              if (isset($_SESSION['login'])) {
                if ($_SESSION['login'] == 'ok') {
                  if (isset($_SESSION['nivusu'])) {
                    if ($_SESSION['nivusu'] == '1') {
                      $ir = "adduser";
                    }
                  } else {
                    $ir = "";
                  }
                }
              } else {
                $ir = "#";
              }


              ?>
              <a href="<?php echo ($ir); ?>" class="nav-link">
                <i class="nav-icon fa fa-user text-success"></i>
                <p class="text">Usuarios</p>
              </a>
            </li>


          </ul>
        </li>


        <!-- BUCKUP -->

        <li class="nav-item" <?php if ($_SESSION['nivusu'] == 2) {
                                echo ("hidden");
                              }; ?>>
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-database "></i>
            <p>
              Base de Datos
              <i class="fas fa-angle-left right "></i>
            </p>
          </a>

          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="Buckup" class="nav-link">
                <i class="fas fa-check-double nav-icon"></i>
                <p>Respaldo y Restaurar </p>
              </a>
            </li>


          </ul>


        </li>



        <li class="nav-item has-treeview">
          <a href="controller/cerrarSesion.php" class="nav-link">
            <i class="nav-icon fa fa-sign-out-alt text-danger"></i>
            <p>
              Cerrar Sesión

            </p>
          </a>

        </li>
      </ul>





    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>