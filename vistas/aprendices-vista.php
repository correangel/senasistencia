<?php
require("../controlador/aprendices-control.php");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/estilos.css" rel="stylesheet">
    </head>
    <body>
        <form action="?ac=" method="post">
        <input type="hidden" name="id" value="">
                <input type="text" name="aprendices" value="" required="true">

                <select name="Ficha">
                    <?php
                    $modelo->consultarFicha();
                    ?>
                </select><br>
                <select name="Documento">
                    <?php
                    $modelo->consultarDocumento();
                    ?>
                </select><br>
                <select name="Genero">|
                    <?php
                    $modelo->consultarGenero();
                    ?>
                </select><br>
                <select name="Estado">
                    <?php
                    $modelo->consultarEstado();
                    ?>
                </select><br>
                <button class="bt" type="submit">Guardar</button>
             <form>
                <table>
                    <thead>
                    <th>Tipo Documento</th>
                    <th>Documento</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Genero</th>
                    <th>Estado</th>
                    </thead>
                </table>
             </form>
         </form>
    </body>
</html>
