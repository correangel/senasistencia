<?php
require("../controlador/jornada-control.php");

?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>jornada</title>
    <link rel="stylesheet" href="../css/estilos.css">
  </head>
  <body>

    <div class="contenedor">
        <h1>Ingreso de registros a la tabla jornada</h1>
        <form action="?ac=<?php echo $jornada->__GET('id_jornada') > 0 ? 'actualizar' : 'registrar' ?>" method="post">
            <input type="hidden" name="id" value="<?php echo $jornada->__GET('id_jornada');?>">
            <label>Descripcion jornada:</label>
            <input type="text" name="jornada" value="<?php echo $jornada->__GET('descripcion_jornada');?>" required="true"><br />
            <button type="submit" class="bt">Guardar</button>
            <!--<button type="button" class="bt"><a href="../index.php">Atras</a></button><br />-->
        </form>

        <section>
            <div>
            <table >
            <thead>
            <th>ID</th>
            <th>JORNADA</th>
             <th>EDITAR</th>
              <th>ELIMINAR</th>
            </thead>

            <?php
                foreach($model->imprimirTabla() as $campo){?>
                <tr>
                  <td><?php echo $campo->__GET('id_jornada'); ?></td>
                  <td><?php echo $campo->__GET('descripcion_jornada');?></td>
                  <td>
                  <button type="button" class="bt"><a href="?ac=editar&id=<?php echo $campo->__GET('id_jornada');?>" >Editar</a></button>
                </td>
                  <td>
                  <button type="button" class="eliminar"><a href="?ac=eliminar&id=<?php echo $campo->__GET('id_jornada');?>" >Eliminar</a></button>
                  </td>
                </tr>
                <?php } ?>
            </table>
            </div>
        </section>
    </div>

  </body>
</html>
