<?php

define('SYSTEM_PATH', __DIR__);
define('APP_PATH', SYSTEM_PATH . '/application/');

include_once 'application/helpers/common.php';

include_once 'application/config/config.php';
include_once 'application/config/db.php';

class App {

    function __construct() {
        $this->db = MysqliDb::getInstance();
    }

    function index() {
        echo 'in app class';
    }

}

try {
//    use  as Login;
    $app = new Login();
    $app->index();
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
}

