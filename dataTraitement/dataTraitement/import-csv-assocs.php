<?php

// chargement de lautolaod

use Phpdatas\Model\Associations;
require_once './lib/debug.php';
require_once 'vendor/autoload.php';

$associationsRepo = new Associations();

// ouvre le fichier 
$handle = fopen("_datas/rna_01.csv", "r");


//convert.iconv.iso-8859-1.utf-8

// si le fichier a bien été ouvert
if ($handle) {

    // filtre de conversion de iso-8859-1 (ancien encodage francais ) vers utf-8
    stream_filter_append($handle,'convert.iconv.iso-8859-1.utf-8');
   
    echo ' le fichier a bien été trouver<br>';
            
    // lit tous les lignes du csv 
    while ($data = fgetcsv($handle, null, ';')) 
    {
       
        // demande d au repo d inserer la base de donnes 
        $associationsRepo->insertOne($data);
           // 'titre' => ' Association des collectionneurs de boite a camembert de julien'
    }

    // on doit penser a bien fermer le fichier 
    fclose($handle);
}



