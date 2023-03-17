<?php
class Conectar{
    protected $dbh;
    protected function Conexion(){
        try{
            
            $conn = $this->dbh = new PDO(
                "mysql:local=localhost;dbname=seminario",
                "root",
                ""
            );
            
            // $mysqli = $this->dbh =new mysqli("localhost", "root", "", "seminario");
            return $conn;
        }catch(Exception $e){
            print "Tenemos error en la conexion ".
            $e->getMessage()."<br>";
            die();
        }
    }
    public function set_names(){
        return $this->dbh->query("set names 'utf8'");
    }
}