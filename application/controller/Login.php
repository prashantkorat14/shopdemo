<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Login
 *
 * @author prashantkorat
 */
//use Load;
//use MysqliDb;
//namespace Login;

class Login extends App {

    //put your code here
    function __construct() {
//        $this->db = MysqliDb::getInstance();
    }

    function index() {
        echo '<pre>';
        print_r($this->db->get('users'));
        echo '</pre>';
        echo 'here';
//        Load::view('login');
    }

}
