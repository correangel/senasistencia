<?php 
require("../controlador/formato-control.php");
?>
<html>
<head>
    <tittle>formato ftp</tittle>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/estilos.css">
</head>
    <h1>formato ftp</h1>
    <form action="?ac=<?php echo $formato->__GET('id_formato') > 0 ? 'actualizar':'registrar'; ?>" method="post">
        <input type="hidden" name="id" value="<?php echo $formato->__GET('id_formato') ;?>">
        <label >Nombre Notificacion</label>
        <input type="text" name="nombreN" value="<?php echo $formato->__GET('nombre_notificacion') ;?>">
        <label> URL del formato</label>
        <input type="text" name="url" value="<?php echo $formato->__GET('url_ftp') ;?>">
        <label >asistencia </label>
        <select name="idAs">

            <?php foreach ( $modelo->imprimirTabla as $campo) {?>
                <option value="<?php echo $campo->__GET('ID_Asistencia'); ?>" ></option>
            <?php }?>
            
        </select>



    </form>




</html>