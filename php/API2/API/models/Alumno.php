<?php

class Alumno extends Conectar{
    public function obtenerAlumnos(){
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM alumnos";
        $sql = $conectar -> prepare($sql);
        $sql -> execute();
        $res = $sql -> fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }

    public function obtenerAlumnoId($id){
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM alumnos WHERE id = ?";
        $sql = $conectar -> prepare($sql);
        $sql -> bindvalue(1,$id);
        $sql -> execute();
        $res = $sql -> fetch(PDO::FETCH_ASSOC);
        return $res;
    }

    public function nuevoAlumnoId($nombre,$apellido,$fecha,$telefono){
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "INSERT INTO alumnos
                (id, nombre, apellido, fecha_nacimiento, telefono)
                values
                (null, ?, ?, ?, ?)";
        $sql = $conectar -> prepare($sql);
        $sql -> bindvalue(1,$nombre);
        $sql -> bindValue(2,$apellido);
        $sql -> bindValue(3,$fecha);
        $sql -> bindValue(4,$telefono);
        $sql -> execute();
        $res = $sql -> fetch(PDO::FETCH_ASSOC);
        return $res;
    }

    public function actualizarAlumno($id,$nombre,$apellido,$fecha,$telefono){
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "UPDATE alumnos
                SET nombre = ?, apellido = ?, fecha_nacimiento = ?, telefono = ?
                WHERE id = ?";
        $sql = $conectar -> prepare($sql);
        $sql -> bindvalue(1,$nombre);
        $sql -> bindValue(2,$apellido);
        $sql -> bindValue(3,$fecha);
        $sql -> bindValue(4,$telefono);
        $sql -> bindvalue(5,$id);
        $sql -> execute();
        $res = $sql -> fetch(PDO::FETCH_ASSOC);
        return $res;
    }

    public function borrarAlumno($id){
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "DELETE FROM alumnos WHERE id = ?";
        $sql = $conectar -> prepare($sql);
        $sql -> bindvalue(1,$id);
        $sql -> execute();
    }

}