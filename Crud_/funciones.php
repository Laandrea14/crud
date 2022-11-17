<?php
  function conectar_bd($clave,$basedatos)
    {
      $miconexion = new mysqli('localhost','root', $clave, 'sena_bd');

      if ($miconexion->connect_error)
    {
        die('Error de conexión (' . $miconexion->connect_errno .') '. $miconexion->connect_error);
    }
    return $miconexion;
    }

    function consulta ($miconexion,$consulta_sql)
     {
      $resultado=$miconexion->query($consulta_sql);

      if (!$resultado)
      {
        echo 'No se pudo ejecutar la consulta ' . $miconexion->error;
        exit;
      }

      return $resultado;
      }
?>