<?php
//require_once("../formato-control.php");
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>formato ftp</title>
    <link rel="stylesheet" href="../css/estilos.css">
  </head>
  <body>
    <h1>Ingreso de registros para la tabla formato</h1>
    <form  action="" method="post">
        <input type="hidden" name="" value="">
        <input type="text" name="" value=""  required="true" placeholder="Nombre de la notificacion"><br />
        <input type="text" name="" value="" required="true" placeholder="url del formato"><br />
        <label>Numero de inasistencias:</label>
        <select name="">
          <?php  ?>
        </select><br />
        <button type="submit" class="bt" name="button">Guardar</button>
    </form>
    <table>
      <thead>
        <th>Tipo de notificacion</th>
        <th>direccion del archivo</th>
        <th>Editar</th>
        <th>Eliminar</th>
      </thead>

    </table>
  </body>
</html>
