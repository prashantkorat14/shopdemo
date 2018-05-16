<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Load
 *
 * @author prashantkorat
 */
class Load {

    //put your code here
    function view($filename) {
        require_once APP_PATH . 'views/' . $filename . '.php';
    }

}
