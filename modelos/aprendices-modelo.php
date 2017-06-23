<?php
class aprendicesModelo{
private $PDO;
  public function __construct()
    {
      try{
            $this->PDO= new PDO("mysql:host=localhost;dbname=senasistencia;charset=utf8","root","");
              $this->PDO->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
            }
            catch(PDOException $error){
                echo "No hay conexion con la base de datos ";
                die($error->getMessage());
            }
    }
 public function crearAprendiz($campos)
 {
  $consulta="INSERT INTO aprendices (ID_Aprendiz,Documento_Aprendiz,Nombre,Apellido,Correo,Telefono,Genero_ID_Genero,Estado_aprendiz_ID_Estado,Tipo_Documento_ID_Tipo_Documento,Ficha_ID_Ficha) VALUES (?,?,?,?,?,?,?,?,?,?)";
  $respuesta=$this->PDO->prepare($consulta);
  $respuesta->execute(array($campos->__GET("id_aprendices"),$campos->__GET("documento_aprendiz"),$campos->__GET("nombre"),$campos->__GET("apellido"),$campos->__GET("correo"),$campos->__GET("telefono"),$campos->__GET("id_genero"),$campos->__GET("id_estado_aprendiz"),$campos->__GET("id_tipo_documento"),$campos->__GET("id_ficha")));
 }
 public function consultarAprendiz()
 {
   $consulta="SELECT * FROM aprendices";
         $respuesta=$this->PDO->prepare($consulta);
         $respuesta->execute();
         $tabla=$respuesta->fetchAll(PDO::FETCH_OBJ);
         foreach ($tabla as $fila) {
          echo "<option value='$fila->ID_Aprendiz'>$fila->Documento_Aprendiz</option>";
         }
 }
 public function consultarFicha()
 {
   $consulta="SELECT * FROM ficha";
         $respuesta=$this->PDO->prepare($consulta);
         $respuesta->execute();
         $tabla=$respuesta->fetchAll(PDO::FETCH_OBJ);
         foreach ($tabla as $datos) {
         echo "<option value='$datos->ID_Ficha'>$datos->Num_Ficha</option><br>";
         }
 }
 public function consultarDocumento()
 {
   $consulta="SELECT * FROM tipo_documento";
         $respuesta=$this->PDO->prepare($consulta);
         $respuesta->execute();
         $tabla=$respuesta->fetchAll(PDO::FETCH_OBJ);
         foreach ($tabla as $datos) {
         echo "<option value='$datos->ID_Tipo_Documento'>$datos->Descripcion_Doc</option><br>";
         }
 }
 public function consultarGenero()
 {
   $consulta="SELECT * FROM genero";
         $respuesta=$this->PDO->prepare($consulta);
         $respuesta->execute();
         $tabla=$respuesta->fetchAll(PDO::FETCH_OBJ);
         foreach ($tabla as $datos) {
         echo "<option values='$datos->ID_Genero'>$datos->Descripcion_Genero</option><br>";
         }
 }
 public function consultarEstado()
 {
   $consulta="SELECT * FROM estado_aprendiz";
         $respuesta=$this->PDO->prepare($consulta);
         $respuesta->execute();
         $tabla=$respuesta->fetchAll(PDO::FETCH_OBJ);
         foreach ($tabla as $datos) {
         echo "<option values='$datos->ID_Estado'>$datos->Descripcion_Estado</option><br>";
         }
 }
}
?>
