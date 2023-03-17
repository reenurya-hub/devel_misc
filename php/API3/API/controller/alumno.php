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
    //
    case 'obtenerUltimoAlumno':
        $misDatos=$alumnoModel -> obtenerUltimoAlumno();
        echo json_encode($misDatos);
    //
    case 'obtenerAlumnoId':
        $id=$datos['id'];
        $misDatos=$alumnoModel -> obtenerAlumnoId($id);
        echo json_encode($misDatos);
        break;
    //
    case 'obtenerAlumnoNom':
        $nom=$datos['nom'];
        $misDatos=$alumnoModel -> obtenerAlumnoNom($nom);
        echo json_encode($misDatos);
        break;
    //
    case 'obtenerAlumnoNomTodos':
        $nom=$datos['nom'];
        $misDatos=$alumnoModel -> obtenerAlumnoNomTodos($nom);
        echo json_encode($misDatos);
        break;
    //
    case 'nuevoAlumno':
        $nombre     =   $datos['nombre'];
        $apellido   =   $datos['apellido'];
        $fecha      =   $datos['fecha'];
        $telefono   =   $datos['telefono'];
        $misDatos   =   $alumnoModel -> nuevoAlumno($nombre,$apellido,$fecha,$telefono);
        echo 'datos insertados correctamente';
        break;
    //
    case 'nuevoAlumno2':
        $alumnoModel -> nuevoAlumno2(
        $datos['nombre'     ],
        $datos['apellido'   ],
        $datos['fecha'      ],
        $datos['telefono'   ]
        );
        //$misDatos=$alumnoModel -> nuevoAlumno2($datos);
        echo json_encode('El registro ha sido insertado',200);
        break;
    //
    case 'borrarAlumno':
        $id=$datos['id'];
        $misDatos=$alumnoModel -> borrarAlumno($id);
        echo "eliminado el alumno con id $id";
        break;
    //
    case 'actualizarAlumno':
        $id         =   $datos['id'];   
        $nombre     =   $datos['nombre'];
        $apellido   =   $datos['apellido'];
        $fecha      =   $datos['fecha'];
        $telefono   =   $datos['telefono'];
        $misDatos   =   $alumnoModel -> actualizarAlumno($id,$nombre,$apellido,$fecha,$telefono);
        echo "datos actualizados correctamente para el id $id";
        break;
    //
    default:
        break;
}