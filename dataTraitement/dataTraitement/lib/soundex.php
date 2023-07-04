<?php

const SOUNDEX_ALGO_EN = 
    [
        'B' => 1 ,
        'F' => 1 ,
        'P' => 1 ,
        'V' => 1 ,
        'C' => 2 ,
        'G' => 2 ,
        'J' => 2 ,
        'K '=> 2 ,
        'Q' => 2 ,
        'S' => 2 ,
        'X' => 2 ,
        'Z' => 2 ,
        'D' => 3 ,
        'T' => 3 ,
        'L' => 4 ,
        'M' => 5 ,
        'N' => 5 ,
        'R' => 6 ,
    ];

function str2soundex(string $string):string
{

    // Convertir en majuscules
    $string = strtoupper($string);

    // Récuperer la premiere lettre
    $firstLetter = substr($string, 0 , 1);

    // Récupere toutes les autres lettres
    $string = substr($string, 1, strlen($string) -1);

    // Récupere toutes les lettres a convertir (clés)
    $letters = array_keys(SOUNDEX_ALGO_EN);


    // Creation de la regex pour conserver que les consonnes
    $regex = '/[^'. implode('', $letters) . ']/i';
    

    // voir la regex
    //d($regex);

    // Supprimer tous les caractères inutiles 
    $string = preg_replace($regex, '', $string);


     // Récupère tous les numéros soundex(VALEURS)
    $numbers = array_values(SOUNDEX_ALGO_EN);

    
    // Remplace toutes les lettres par les nombrees 
    $string = str_replace($letters, $numbers, $string);

    // Supprime les doublons
    $originale = $string;
    $string = '';
    $previousLetter = '';
    foreach(str_split( $originale)  as $letter)
    {
        if ($letter != $previousLetter) 
        {
            $string .= $letter;
        }
        $previousLetter = $letter;
    }


    // Ajoute autant de 0 que nécessaire
    while(strlen($string) < 3) 
    {
        $string .= '0';
    }

        return $firstLetter . $string;
}