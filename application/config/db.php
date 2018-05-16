<?php

// mysql username, password and db set
try {
    $db = new MysqliDb(Array(
        'host' => 'localhost',
        'username' => 'approot',
        'password' => 'approot',
        'db' => 'shop',
        'port' => 3306,
        'prefix' => 's_',
        'charset' => 'utf8'));
//    $db = $db->connect();
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
}

