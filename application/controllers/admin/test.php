<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of test
 *
 * @author mujeeb
 * 
 */
class Test extends CI_Controller{ 
    public function __construct() {
        parent::__construct();
    }
 
    public function test_fn(){
        echo "fff=". BASEPATH;
    }
}

?>
