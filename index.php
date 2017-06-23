<?php
error_reporting(E_ALL ^ E_NOTICE);
require('controlador/enrutador.php');
$op = $_GET['op'];
$ruta = new Enrutador();
$archivo = $ruta->Enrutar($op);
?>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8">
      <title>clases</title>
      <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
      <section id="menu">
          <nav>
              <h1>tablas</h1>
              <div class="menu_lateral">

                <a href="?op=centro">centro formacion</a>  <br />
                <a href="?op=sede">sede</a>  <br />
                <a href="?op=ambiente">ambiente</a>  <br />
                <a href="?op=ficha">ficha</a>  <br />
                <a href="?op=jornada">jornada</a>  <br />
                <a href="?op=programa">programaFormacion</a>  <br />
                <a href="?op=trimestre">trimestre</a>  <br />
                <a href="?op=aprendices">aprendices</a>  <br />
                <a href="?op=asistencia">asistencia</a>  <br />
                <a href="?op=cargo">cargo</a>  <br />
                <a href="?op=cliente">cliente</a>  <br />
                <a href="?op=estadoA">estadoAprendiz</a>  <br />
                <a href="?op=estadoU">estadoUsuario</a>  <br />
                <a href="?op=excusa">excusa</a>  <br />
                <a href="?op=formato">formato ftp</a>  <br />
                <a href="?op=genero">genero</a>  <br />
                <a href="?op=grupo">grupo</a>  <br />
                <a href="?op=notificacion">notificacion</a>  <br />
                <a href="?op=pass">passwordToken</a>  <br />
                <a href="?op=perfiles">perfiles</a>  <br />
                <a href="?op=tipoDoc">tipo de Documento</a>  <br />
                <a href="?op=usuario">usuarios</a>
            </div>
          </nav>
          <section class="crud">
            <div>
          <iframe src="<?php echo$archivo;?>" width="" height=""></iframe>

              </div>
          </section>
        </section>

    </body>
</html>
