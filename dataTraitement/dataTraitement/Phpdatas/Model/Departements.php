<?php 

namespace Phpdatas\Model;

use PDO;

use Phpdatas\Database\Database;

/**  Classe représentant le repository des départements */
class Departements {

    
    private Database|null $database = null;

    /* crée le répository */
    public function __construct()
    {
        $this->database = new Database();
    }

    public function getAllDepartements():array
    {

        $SQL = 'SELECT * 
        FROM departement';
        
        $query = $this->database->prepare($SQL);        
        
        $query->execute();
       
        $datas = $query->fetchAll(PDO::FETCH_ASSOC);

        return $datas;      
       
       
    }
      
}


