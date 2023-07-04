<?php

// Chargement de l' autoloader et des librairie. 
require_once 'vendor/autoload.php';
require_once './lib/debug.php';
require_once './lib/soundex.php';

// List des namespaces utilisés.
use Phpdatas\Model\Departements;
use Phpdatas\Validator\Validator;

// Chargement du repo des départements. 
$departementsRepo = new Departements();

// Chargement de la liste des départements.
$departements = $departementsRepo->getAllDepartements();

// Chargement du validator.
$validator = new Validator();

// Pour chaque départements. 
for ($i = 0; $i < count($departements); $i++) 
{

    // Créer le soundex attendu. 
    $departements[$i]['soundex_preview'] = str2soundex($departements[$i]['departement_nom']);

    // Vérifier si les do,nnées du département sont valides.
    $departements[$i]['error_code'] = $validator->validateDepartement($departements[$i]);

    // Ajout de la classe css au departement. 
    $departements[$i]['classe'] = $departements[$i]['error_code'] ? 'table-warning' : 'table-success';

    $departements[$i]['col_classes']                                    = [];
    $departements[$i]['col_classes']['departement_code']                = $departements[$i]['error_code'] & Validator::ERROR_DEPARTEMENT_CODE ? 'table-danger' : '';
    $departements[$i]['col_classes']['departement_nom']                 = $departements[$i]['error_code'] & Validator::ERROR_DEPARTEMENT_NOM ? 'table-danger' :'';
    $departements[$i]['col_classes']['departement_nom_uppercase']       = $departements[$i]['error_code'] & Validator::ERROR_DEPARTEMENT_NOM_UPPERCASE ? 'table-danger' :'';
    $departements[$i]['col_classes']['departement_slug']                = $departements[$i]['error_code'] & Validator::ERROR_DEPARTEMENT_SLUG ? 'table-danger' :'';
    $departements[$i]['col_classes']['departement_nom_soundex']         = $departements[$i]['error_code'] & Validator::ERROR_DEPARTEMENT_SOUNDEX? 'table-danger' :'';
    $departements[$i]['col_classes']['departement_email']               = $departements[$i]['error_code'] & Validator::ERROR_DEPARTEMENT_EMAIL? 'table-danger' :'';

}   

d($departements);



// Chargement du template. 
include './templates/departements.phtml';
