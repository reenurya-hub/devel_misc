<?php
header('Content-type: application/json');
require_once('../config/conexion.php');
require_once('../models/Alumno.php');

$alumnoModel = new Alumno();
$datos  = $_POST;

switch($_GET['metodo']){
    case 'obtenerTodos':
        $misDatos=$alumnoModel -> obtenerAlumnos();
        echo json_encode($misDatos);
    default:
        break;

    case 'obtenerAlumnoId':
        $id=$datos['id'];
        $misDatos=$alumnoModel -> obtenerAlumnoId($id);
        echo json_encode($misDatos);
        break;

        //$nombre,$apellido,$fecha,$telefono
    case 'nuevoAlumnoId':
        $nombre=$datos['nombre'];
        $apellido=$datos['apellido'];
        $fecha=$datos['fecha'];
        $telefono=$datos['telefono'];
        $misDatos=$alumnoModel -> nuevoAlumnoId($nombre,$apellido,$fecha,$telefono);
        echo 'datos insertados correctamente';
        break;

    case 'borrarAlumno':
        $id=$datos['id'];
        $misDatos=$alumnoModel -> borrarAlumno($id);
        echo "eliminado el alumno con id $id";
        break;

    case 'actualizarAlumno':
        $id         =   $datos['id'];   
        $nombre     =   $datos['nombre'];
        $apellido   =   $datos['apellido'];
        $fecha      =   $datos['fecha'];
        $telefono   =   $datos['telefono'];
        $misDatos   =   $alumnoModel -> actualizarAlumno($id,$nombre,$apellido,$fecha,$telefono);
        echo "datos actualizados correctamente para el id $id";
        break;

    }