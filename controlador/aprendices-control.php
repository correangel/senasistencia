<?php
require("../modelos/aprendices-modelo.php");
require("../clases/aprendices.php");
$modelo= new aprendicesModelo();
$datos = new Aprendices();
if (isset($_REQUEST['action'])) {
    $datos->__SET('id_aprendices',$_REQUEST['id']);
    $datos->__SET('documento_aprendiz',$_REQUEST['documento_aprendiz']);
    $datos->__SET('nombre',$_REQUEST['nombre']);
    $datos->__SET('apellido',$_REQUEST['apellido']);
    $datos->__SET('correo',$_REQUEST['correo']);
    $datos->__SET('telefono',$_REQUEST['telefono']);
    $datos->__SET('id_genero',$_REQUEST['id_genero']);
    $datos->__SET('id_estado_aprendiz',$_REQUEST['id_estado_aprendiz']);
    $datos->__SET('id_tipo_documento',$_REQUEST['id_tipo_documento']);
    $datos->__SET('id_ficha',$_REQUEST['id_ficha']);
    $modelo->crearAprendiz($datos);
    header("Location:aprendices-vista.php");
}
?>