<?php

// site url
function redirect($url) {
    header('Location: ' . $url);
}

function __autoload($class_name) {
    /**
     * Note we are just looking for a PHP file with the same name as the class in question.
     * actual usage may require some string operations to specify the filename
     */
    $file_name = APP_PATH . 'controller/' . $class_name . '.php';
    if (file_exists($file_name)) {
        require_once $file_name;
    }

    $file_name = APP_PATH . 'libs/' . $class_name . '.php';
    if (file_exists($file_name)) {
        require_once $file_name;
    }
}

function testx() {
    echo 'testx';
}
