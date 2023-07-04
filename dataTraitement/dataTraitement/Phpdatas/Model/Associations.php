<?php

namespace Phpdatas\Model;

use Phpdatas\Database\Database;

/**
 *   classse représentant  le repo des associations
 */
class Associations {

    private Database|null $database = null;

    /* crée le répository */
    public function __construct()
    {
        $this->database = new Database();
    }

/**
 *   Insert une association dans la bdd
 * 
 *   array $assoc tableau repésentant l association a inserer
 *   todo developper le SQL d 'ajout a la bdd
 */

    public function insertOne(array $assoc)
    {
        // SQL d ajout  de la bdd
        // todo


        // affiche un message de confirmation
        $titre = $assoc['8'];
        echo " l' association $titre a bien été importer en base de données<br>";
    }

    public function insertMany(array $assocs)
    {

    }

}
