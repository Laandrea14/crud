<?php
include('funciones.php');
 $vprograma=$_POST['Programa'];
 $vtipoprograma=$_POST['Tipoprograma'];
 $miconexion=conectar_bd('', 'sena_bd');
 $resultado=consulta($miconexion,"insert into programa (Progra_Nombre,Progra_Tipo) values ('{$vprograma}','{$vtipoprograma}') ");

 if ($resultado)
 {
 echo "Guardado exitoso";
 }
?>
<input style="width: 40%;" class="btn btn-primary" type="button" onclick="location.href ='menu.php'" value="volver al menu">