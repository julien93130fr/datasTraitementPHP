<?php

namespace Phpdatas\Database;

use PDO;

/* différentes version d' écrire  pour PDO   */
/* class Database extends PDO { } 
*/

class Database extends PDO {
    public function __construct()
    {
        $dsn = 'mysql:dbname=french_assocs;host=127.0.0.1';
        $user = 'root';
        $password = 'root';

        parent::__construct($dsn, $user, $password);
    }
}