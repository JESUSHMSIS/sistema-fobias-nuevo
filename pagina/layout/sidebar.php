<?php
$id = $_SESSION['id'];
?>

<?php

?>
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
  <div class="menu_section">
    <h3>Menu</h3>
    <ul class="nav side-menu">
      <li><a href="../layout/inicio.php"><i class="fa fa-dashboard"></i> inicio <span
            class="fa fa-chevron-right"></span></a></li>







      <?php
      if ($tipo == "administrador")
      {

        ?>
        <li><a><i class="fa fa-database"></i> Psiquiatra<span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">

            <li><a href="../medico/medico.php">Psiquiatra</a></li>
            <li><a href="../medico/medico_historial.php">Historial psiquiatra</a></li>
          </ul>
        </li>
        <?php
      }
      ?>

        <?php
      ?>
     

      <?php
      if ($tipo == "administrador" or $tipo == "recepcionista" or $tipo == "medico")
      {

        ?>
        <li><a><i class="fa fa-database"></i> Pacientes<span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">

            <li><a href="../paciente/paciente.php">Lista de pacientes</a></li>






          </ul>
        </li>
        <?php
      }
      ?>
      <?php
      if ($tipo == "administrador" or $tipo == "recepcionista" or $tipo == "medico")
      {

        ?>
        <li><a><i class="fa fa-database"></i> Citas<span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">

            <li><a href="../cita/cita.php">Lista de citas</a></li>
            <li><a href="../cita/cita_agregar.php">Agregar</a></li>
            <li><a href="../cita/cita_hoy.php">Hoy</a></li>




          </ul>
        </li>

        <?php
      }
      ?>

     

      <?php
      if ($tipo == "administrador" or $tipo == "medico")
      {

        ?>

        <li><a href="../preescripcion/preescripcion.php"><i class="fa fa-archive"></i> Preescripcion<span
              class="fa fa-chevron-right"></span></a>
          <?php
      }
      ?>





        <?php
        if ($tipo == "paciente")
        {

          ?>

        <li><a href="../cita/cita_paciente.php"><i class="fa fa-archive"></i> cita paciente<span
              class="fa fa-chevron-right"></span></a>
        <li><a href="../preescripcion/preescripcion_paciente.php"><i class="fa fa-archive"></i> preescripcion
            paciente<span class="fa fa-chevron-right"></span></a>

       
          <?php
        }
        ?>
        <?php
        ?>
        <?php
        ?>
        <?php
        if ($tipo == "administrador")
        {

          ?>

        <li><a><i class="fa fa-user"></i> Recursos humanos<span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">
            <li><a href="../medico/medico.php">Psiquiatra</a></li>
           
          </ul>
        </li>
        <?php
        }
        ?>
      <?php

      ?>




      <li><a><i class="fa fa-gear"></i> Configuracion<span class="fa fa-chevron-down"></span></a>
        <ul class="nav child_menu">
          <?php
          if ($tipo == "administrador")
          {

            ?>
            <li><a href="../configuracion/configuracion.php">Psiquiatria</a></li>
            <?php
          }
          ?>


          <li><a href="../otros/editar_password.php">Editar password</a></li>

        </ul>
      </li>


      <?php
      if ($tipo == "administrador")
      {

        ?>

        <li><a><i class="fa fa-database"></i> Base de datos<span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">

            <li><a href="../otros/vaciar_bd.php"
                onClick="return confirm('¿Está seguro de que quieres vaciar la base de datos ??');">Vaciar base de
                datos</a></li>

            <li><a href="../otros/respaldo_add.php">Respaldo</a></li>

          </ul>
        </li>
        <?php
      }
      ?>



  </div>
  <!--- <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.html">403 Error</a></li>
                      <li><a href="page_404.html">404 Error</a></li>
                      <li><a href="page_500.html">500 Error</a></li>
                      <li><a href="plain_page.html">Plain Page</a></li>
                      <li><a href="login.html">Login Page</a></li>
                      <li><a href="pricing_tables.html">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>--->

</div>