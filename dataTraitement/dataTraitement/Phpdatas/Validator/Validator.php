<?php

namespace Phpdatas\Validator;

// Téléchargement des librairies
require_once './lib/soundex.php';
require_once './lib/strings.php';

/** classe représentation  */
class Validator {

     // Validation du code du département.
    const ERROR_DEPARTEMENT_CODE                            = 1 ;
     // Validation du nom  du département.
    const ERROR_DEPARTEMENT_NOM                             = 2 ;
     // Validation du nom en Majuscule du département.
    const ERROR_DEPARTEMENT_NOM_UPPERCASE                   = 4 ;
    // Validation du slug du département.
    const ERROR_DEPARTEMENT_SLUG                            = 8 ;
    // Validation du soundex du département.
    const ERROR_DEPARTEMENT_SOUNDEX                         = 16 ;
     // Validation de l' Email
    const ERROR_DEPARTEMENT_EMAIL                           = 32;

    // Régex du code de département
    const REGEX_DEPARTEMENT_CODE =
        ' /^(0[1-9]|1[0-9]|2[ab1-9]|[3-8][0-9]|9[1-5]|97[1-6]|984|98[6-8])$/i';

    // Régex du nom du département
    const REGEX_DEPARTEMENT_NOM = "/^[a-zàâäéèêëîïôöùûü\-' ]*$/i";


    /** Méthode de validation d un département 
     * la méthode reois u ntableau contenant les departements
     *  l ' integer return  un 0 si tout c est bine passé  sinon un code 
     * indiquant les erreurs      * */
    public function validateDepartement(array $departement):int {

        $errorcode = 0;
        // Validation du code du département.
        if (!preg_match(self::REGEX_DEPARTEMENT_CODE, $departement['departement_code']))
        {
            $errorcode |= self::ERROR_DEPARTEMENT_CODE;
        }

        // Validation du nom  du département.
        if (!preg_match(self::REGEX_DEPARTEMENT_NOM, $departement['departement_nom'])) 
        {
            $errorcode |= self::ERROR_DEPARTEMENT_NOM;    
        }

        // Validation du nom en Majuscule du département.
        if ($departement['departement_nom_uppercase'] != mb_strtoupper($departement['departement_nom'])) 
        {
            $errorcode |= self::ERROR_DEPARTEMENT_NOM_UPPERCASE;   
        }

        // Validation du slug du département.
        if ($departement['departement_slug'] != slugify($departement['departement_slug'])) 
        {
            $errorcode |= self::ERROR_DEPARTEMENT_SLUG;   
        }

        // Validation du soundex du département.
        if ($departement['departement_nom_soundex'] != str2soundex($departement['departement_nom'])) 
        {
            $errorcode |= self::ERROR_DEPARTEMENT_SOUNDEX;
        }

        // Validation de l' Email
        if (!filter_var($departement['departement_email'] , FILTER_VALIDATE_EMAIL)) 
        {
            $errorcode |= self::ERROR_DEPARTEMENT_EMAIL;
        }

        return $errorcode;

    }
}