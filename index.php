<?php

define('SYSTEM_PATH', __DIR__);
define('APP_PATH', SYSTEM_PATH . '/application/');

include_once 'application/helpers/common.php';

include_once 'application/config/config.php';
include_once 'application/config/db.php';

class App {

    function __construct() {
        $this->db(); // create db instance
        $this->load(); // create load class instace 
    }

    function db() {
        try {
            global $dbconfig;

            $this->db = new MysqliDb($dbconfig);
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
    }

    function load() {
        $this->load = new Load();
    }

}

echo '<pre>';
print_r($_SERVER);
echo '</pre>';
try {
//    use  as Login;
    $app = new Login();
    $app->index();
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
}

